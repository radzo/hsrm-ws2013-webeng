<?php
session_start();

require 'Slim/Slim.php';

include 'lib/WideImage.php';

$app = new Slim();

$app -> get('/', 'home');
$app -> get('/auth', 'auth');
$app -> post('/auth/login', 'login');
$app -> post('/auth/logout', 'logout');

$app -> get('/module', 'getModules');
$app -> get('/module/:modulnummer', 'getModul');
$app -> get('/module/byname/:name', 'getModulnummerByName');

$app -> get('/projekte/portfolio', 'getPortfolio');
$app -> get('/projekte/:modulnummer', 'getProjectsByModul');

$app -> get('/projekt/:projekt', 'getProject');
$app -> put('/projekt/:bid', 'updateProjekt');
$app -> delete('/projekt/:bid', 'deleteProject');
$app -> post('/projekt/:modulnummer', 'addProject');
$app -> post('/projekt/students/:projektid', 'addStudentsToProject');

$app -> get('/student', 'getStudent');
$app -> get('/students/:n', 'getStudentenByName');
$app -> get('/student/projekte/:projekt', 'getProjectStudent');
$app -> get('/menuitems', 'getMenuItems');

$app -> post('/student/registrieren', 'addStudent');
$app -> put('/student/:bid', 'updateStudent');

$app -> post('/projekt/:projektid/:modulnummer', 'addFileToProject');
$app -> delete('/projekt/:bilddir/:imagename/:bid', 'deleteFileFromProject');

$app -> post('/kommentare/:modulnummer', 'addComment');
$app -> put('/kommentare/:id', 'updateComment');
$app -> delete('/kommentare/:id', 'deleteComment');

$app -> run();

function auth() {
	if (isset($_SESSION['user_id'])) {
		$sql = "SELECT bid, vorname, nachname, email FROM student WHERE bid = '" . $_SESSION['user_id'] . "'";
		try {
			$db = getConnection();
			$stmt = $db -> query($sql);
			$student = $stmt -> fetch(PDO::FETCH_OBJ);
			if ($student) {
				echo json_encode($student);
			} else {
				echo '{"error":{"text": Client has no valid login session}}';
			}
			$db = null;
		} catch(PDOException $e) {
			echo '{"error":{"text":' . $e -> getMessage() . '}}';
		}
	} else {
		echo '{"error": {"Benutzersession nicht vorhanden"}}';
	}
}

function login() {
	$request = Slim::getInstance() -> request();
	$login = json_decode($request -> getBody());
	$sql = "SELECT * FROM student WHERE email = :email";
	try {
		$db = getConnection();
		$stmt = $db -> prepare($sql);
		$stmt -> bindParam("email", $login -> email);
		$stmt -> execute();
		$student = $stmt -> fetch(PDO::FETCH_OBJ);
		if ($student) {
			$temp = json_encode($student);
			$tempStudent = json_decode($temp, true);
			if ($tempStudent['passwort'] == $login -> password) {
				$_SESSION['user_id'] = $tempStudent['bid'];
				echo json_encode($student);
			} else {
				echo '{"error": "Benutzername oder Passwort sind falsch."}';
			}
		} else {
			echo '{"error":"Benutzername existiert nicht."}';
		}
		$db = null;
	} catch(PDOException $e) {
		echo '{"error":{"text":' . $e -> getMessage() . '}}';
	}
}

function logout() {

	unset($_SESSION['user_id']);
	echo '{"success": "Logout erfolgreich" }';

}

function getModulnummerByName($name) {
	// NUR ZUM TESTEN
	// $student = $_SESSION["studentId"];
	$sql = "SELECT modulnummer FROM modul WHERE bezeichnung LIKE '%" . $name . "'";

	try {
		$db = getConnection();
		$stmt = $db -> query($sql);
		$modulnummer = $stmt -> fetch(PDO::FETCH_OBJ);

		$db = null;
		echo $modulnummer -> modulnummer;
	} catch(PDOException $e) {
		echo '{"error":{"text":' . $e -> getMessage() . '}}';
	}
}

function getPortfolio() {

	$sql = "SELECT pro.bid, pro.name, pro.beschreibung, pro.modulnummer, pro.videourl, pro.titelbild, pro.bilddir FROM projekt pro, studentprojekt stpro
	 WHERE pro.bId = stpro.projektid AND stpro.inportfolio = 'true' AND studentid ='" . $_SESSION['user_id'] . "'";

	try {
		$db = getConnection();
		$stmt = $db -> query($sql);
		$project = $stmt -> fetchAll(PDO::FETCH_OBJ);

		$projekte = array();
		foreach ($project as $projekt) {
			$sqlSemester = "SELECT semester FROM modul WHERE modulnummer ='" . $projekt -> modulnummer . "'";
			$stmt = $db -> query($sqlSemester);
			$semester = $stmt -> fetch(PDO::FETCH_OBJ);
			$projekt -> semester = $semester -> semester;
			array_push($projekte, $projekt);
		}
		$db = null;
		$json['projekte'] = $projekte;
		echo json_encode($json);
	} catch(PDOException $e) {
		echo '{"error":{"text":' . $e -> getMessage() . '}}';
	}
}

function getModules() {
	$sql = "SELECT modulnummer, semester, liste, bezeichnung, bild FROM modul";
	try {
		$db = getConnection();
		$stmt = $db -> query($sql);
		$modules = $stmt -> fetchAll(PDO::FETCH_OBJ);
		$db = null;
		echo json_encode($modules);
	} catch(PDOException $e) {

		echo '{"error":{"text":' . $e -> getMessage() . '}}';
	}
}

function getModul($modulnummer) {
	// $sql = "SELECT * FROM modul, modulDozent, dozent WHERE modul.modulnummer = '".$modulnummer."' AND modul.modulnummer = modulDozent.modulnummer AND modulDozent.dozentId = dozent.bId";
	$sql = "SELECT * FROM modul  WHERE modul.modulnummer = '" . $modulnummer . "'";
	$sqlLiteratur = "SELECT * FROM modulLiteratur, literatur WHERE modulLiteratur.literaturId = literatur.bId AND modulLiteratur.modulnummer = '" . $modulnummer . "'";
	$sqlDozent = "SELECT * FROM  dozent d, modulDozent md where d.bId = md.dozentId AND md.modulnummer = '" . $modulnummer . "'";
	$sqlprojekte = "SELECT * FROM  projekt p, modul m where p.modulnummer = m.modulnummer AND p.modulnummer = '" . $modulnummer . "'";
	$sqlKommentare = "SELECT mk.id, mk.text, mk.last_modify, mk.date, mk.modulnummer, stud.vorname, stud.nachname, stud.bid FROM 
	kommentar mk, student stud WHERE mk.studentbid = stud.bId AND mk.modulnummer = '" . $modulnummer . "'";
	try {

		// sql Anfrage für alle Module
		$db = getConnection();
		$stmt = $db -> query($sql);
		$modul = $stmt -> fetchAll(PDO::FETCH_OBJ);
		$temp = json_encode($modul);
		$temp = json_decode($temp, true);

		// passende Literatur zum Modul holen
		$stmt = $db -> query($sqlLiteratur);
		$modulLiteratur = $stmt -> fetchAll(PDO::FETCH_OBJ);
		$dataLiteratur = json_encode($modulLiteratur);
		$tempLit = json_decode($dataLiteratur, true);

		// passende Dozenten zum Modul holen
		$stmt = $db -> query($sqlDozent);
		$modulDozent = $stmt -> fetchAll(PDO::FETCH_OBJ);
		$dataDozent = json_encode($modulDozent);
		$tempDozent = json_decode($dataDozent, true);

		// passende Projekte zum Modul holen
		$stmt = $db -> query($sqlprojekte);
		$modulProjekt = $stmt -> fetchAll(PDO::FETCH_OBJ);
		$dataProjekt = json_encode($modulProjekt);
		$tempProjekt = json_decode($dataProjekt, true);

		$stmt = $db -> query($sqlKommentare);
		$modulKommentare = $stmt -> fetchAll(PDO::FETCH_OBJ);
		$modulKommentare = json_encode($modulKommentare);
		$tempKommentare = json_decode($modulKommentare, true);

		$modul = null;
		$modul['modulnummer'] = $temp[0]['modulnummer'];
		$modul['bezeichnung'] = $temp[0]['bezeichnung'];
		$modul['semester'] = $temp[0]['semester'];
		$modul['liste'] = $temp[0]['liste'];
		$modul['voraussetzung'] = $temp[0]['voraussetzung'];

		$temp[0]['inhalte'] = str_replace('\\a', '<li>', $temp[0]['inhalte']);
		$tempInhalt = explode('<li>', $temp[0]['inhalte']);
		if (empty($tempInhalt[0])) {
			$tempInhalt = array_slice($tempInhalt, 1);
		}
		$modul['inhalte'] = $tempInhalt;

		$modul['lernziele'] = $temp[0]['lernziele'];
		$modul['aufwand'] = $temp[0]['aufwand'];
		$modul['bewertung'] = $temp[0]['bewertung'];
		$modul['lehrform'] = $temp[0]['lehrform'];
		$modul['credits'] = $temp[0]['credits'];
		$modul['bild'] = $temp[0]['bild'];
		// wenn Literatur vorhanden fuege sie an modul array an
		if ($tempLit) {
			$literatur = array();
			foreach ($tempLit as $key => $value) {
				$literatur[$key] = $value;
			}
			$modul['literatur'] = $literatur;
		}
		// wenn Dozenten vorhanden fuege sie an modul array an
		if ($tempDozent) {
			$dozent = array();
			foreach ($tempDozent as $key => $value) {
				$dozent[$key] = $value;
			}
			$modul['dozent'] = $dozent;
		}
		// wenn Projekte vorhanden fuege sie an modul array an
		if ($tempProjekt) {
			$projekt = array();
			foreach ($tempProjekt as $key => $value) {
				$projekt[$key] = $value;
			}
			$modul['projekte'] = $projekt;
		}

		if ($tempKommentare) {
			$kommentare = array();
			foreach ($tempKommentare as $key => $value) {
				$timestamp = strtotime($value['date']);
				$value['commentDate'] = date("d.m.Y", $timestamp);
				$value['commentTime'] = date("H:i", $timestamp);
				if ($value['last_modify']) {
					$timestamp = strtotime($value['last_modify']);
					$value['last_modifyDate'] = date("d.m.Y", $timestamp);
					$value['last_modifyTime'] = date("H:i", $timestamp);
				}
				$kommentare[$key] = $value;
			}
			$modul['kommentare'] = $kommentare;
		}

		$db = null;
		echo json_encode($modul);
	} catch(PDOException $e) {
		echo '{"error":{"text":' . $e -> getMessage() . '}}';
	}
}

function getProjectsByModul($modulnummer) {
	$sql = "SELECT projekt.name, projekt.videourl FROM projekt  WHERE projekt.modulnummer = '" . $modulnummer . "'";
	try {
		$db = getConnection();
		$stmt = $db -> query($sql);
		$projects = $stmt -> fetchAll(PDO::FETCH_OBJ);
		$db = null;
		echo json_encode($projects);
	} catch(PDOException $e) {
		echo '{"error":{"text":' . $e -> getMessage() . '}}';
	}
}

function getProjectsByStudent() {
	$studentId = $_SESSION['user_id'];
	$sql = "SELECT projekt.name, projekt.videourl FROM projekt, studentProjekt WHERE projekt.bId = studentProjekt.projektId 
			AND studentProjekt.studentId = '" . $studentId . "'";
	try {
		$db = getConnection();
		$stmt = $db -> query($sql);
		$project = $stmt -> fetchAll(PDO::FETCH_OBJ);
		$db = null;
		echo json_encode($project);
	} catch(PDOException $e) {
		echo '{"error":{"text":' . $e -> getMessage() . '}}';
	}
}

function str_starts_with($haystack, $needle) {
	return strpos($haystack, $needle) === 0;
}

function getProject($projekt) {
	$sql = "SELECT * FROM projekt WHERE projekt.bId = '" . $projekt . "'";
	$sqlStudent = "SELECT st.bid, st.vorname, st.nachname, st.email FROM studentprojekt stpro, student st WHERE stpro.studentid =st.bid AND stpro.projektid = '" . $projekt . "'";
	$sqlSemester = "SELECT semester FROM modul WHERE modulnummer = '";

	try {
		$db = getConnection();
		$stmt = $db -> query($sql);
		$project = $stmt -> fetchAll(PDO::FETCH_OBJ);

		$temp = json_encode($project);
		$temp = json_decode($temp, true);

		$project = null;
		$project['name'] = $temp[0]['name'];
		$project['beschreibung'] = $temp[0]['beschreibung'];

		if (str_starts_with($temp[0]['videourl'], '/')) {
			$project['videourl'] = "/" . $temp[0]['videourl'];
		} else {
			$project['videourl'] = 'invalidURL';
		}

		$stmt = $db -> query($sqlStudent);
		$studenten = $stmt -> fetchAll(PDO::FETCH_OBJ);
		$studis = array();
		$tempStud = json_encode($studenten);
		$tempStud = json_decode($tempStud, true);
		foreach ($tempStud as $key) {
			array_push($studis, $key);
		}

		$project['studenten'] = $studis;

		$project['modulnummer'] = $temp[0]['modulnummer'];

		$stmt = $db -> query($sqlSemester . $project['modulnummer'] . "'");
		$semester = $stmt -> fetchAll(PDO::FETCH_OBJ);

		$project['semester'] = $semester;

		$project['bid'] = $temp[0]['bid'];
		$project['images'] = '';
		$bilddir = $temp[0]['bilddir'];

		if ($bilddir) {
			if (is_dir('uploads/' . $bilddir)) {
				$images = scandir('uploads/' . $bilddir);
				$imagePaths = array();

				foreach ($images as $file) {
					if ($file !== '.' && $file !== '..') {
						array_push($imagePaths, $file);
					}
				}
				$project['images'] = $imagePaths;
				$project['bilddir'] = $temp[0]['bilddir'];
			}
		}

		$db = null;

		echo json_encode($project);
	} catch(PDOException $e) {
		echo '{"error":{"text":' . $e -> getMessage() . '}}';
	}
}

function getProjectStudent($projekt) {
	$sql = "SELECT projekt.name, projekt.beschreibung, projekt.videourl FROM projekt WHERE projekt.bId = '" . $projekt . "'";
	try {
		$db = getConnection();
		$stmt = $db -> query($sql);
		$project = $stmt -> fetchAll(PDO::FETCH_OBJ);
		$db = null;
		echo json_encode($project);
	} catch(PDOException $e) {
		echo '{"error":{"text":' . $e -> getMessage() . '}}';
	}
}

function getStudent() {
	if (isset($_SESSION['user_id'])) {

		$student = $_SESSION['user_id'];
		$sql = "SELECT bid, vorname, nachname, email, passwort FROM student WHERE bid = '" . $student . "'";

		$sqlProjekte = "SELECT projekt.bid, projekt.name, projekt.beschreibung, projekt.modulnummer,projekt.bilddir, projekt.titelbild, modul.semester FROM projekt, modul, studentProjekt WHERE projekt.bId = studentProjekt.projektId 
	AND projekt.modulnummer = modul.modulnummer AND studentProjekt.studentId = '" . $student . "'";

		$sqlProjektKommentare = "SELECT pk.id, pk.text, pro.name, pro.beschreibung, pro.bid FROM projektKommentare pk, projekt pro WHERE pk.projektid = pro.bId AND
	 pk.studentbid = '" . $student . "'";

		$sqlSemester = "SELECT semester FROM modul WHERE modulnummer = '";
		$sqlModulNames = "SELECT modulnummer, bezeichnung FROM modul";

		try {
			$db = getConnection();
			$stmt = $db -> query($sql);
			$student = $stmt -> fetch(PDO::FETCH_OBJ);

			$stmt = $db -> query($sqlProjekte);
			$sqlProjekte = $stmt -> fetchAll(PDO::FETCH_OBJ);

			$stmt = $db -> query($sqlModulNames);
			$sqlModulNames = $stmt -> fetchAll(PDO::FETCH_OBJ);

			$projekte = array();
			foreach ($sqlProjekte as $key => $value) {
				$projekte[$key] = $value;
			}
			$student -> projekte = $projekte;
			$student -> modulnamen = $sqlModulNames;
			$db = null;
			echo json_encode($student);
		} catch(PDOException $e) {
			echo '{"error":{"text":' . $e -> getMessage() . '}}';
		}
	}
}

function getStudentenByName($n) {
	$sql = "SELECT bid, vorname, nachname, email FROM student WHERE vorname LIKE '%" . $n . "%' OR nachname LIKE '%" . $n . "%'";

	try {
		$db = getConnection();
		$stmt = $db -> query($sql);
		$student = $stmt -> fetchAll(PDO::FETCH_OBJ);

		$db = null;
		echo json_encode($student);
	} catch(PDOException $e) {
		echo '{"error":{"text":' . $e -> getMessage() . '}}';
	}
}

function addStudent() {
	error_log('addWine\n', 3, '/var/tmp/php.log');
	$request = Slim::getInstance() -> request();
	$student = json_decode($request -> getBody());
	$sql = "INSERT INTO student (vorname, nachname, email, passwort) VALUES (:vorname, :nachname, :email, :passwort)";
	try {
		$db = getConnection();
		$stmt = $db -> prepare($sql);
		$stmt -> bindParam("vorname", $student -> vorname);
		$stmt -> bindParam("nachname", $student -> nachname);
		$stmt -> bindParam("email", $student -> email);
		$stmt -> bindParam("passwort", $student -> passwort);
		$stmt -> execute();
		$student -> id = $db -> lastInsertId();
		$db = null;
		echo json_encode($student);
	} catch(PDOException $e) {
		error_log($e -> getMessage(), 3, '/var/tmp/php.log');
		echo '{"error":{"text":' . $e -> getMessage() . '}}';
	}
}

function updateStudent($bid) {
	error_log('addWine\n', 3, '/var/tmp/php.log');
	$request = Slim::getInstance() -> request();
	$student = json_decode($request -> getBody());
	$projekteArray = json_decode(json_encode($student -> projekte), true);

	if ($projekteArray) {
		$sqlProjekt = "UPDATE studentprojekt SET inPortfolio=:inPortfolio WHERE projektid=:bid AND studentid='" . $bid . "'";
		foreach ($projekteArray as $key) {
			foreach ($key as $value) {
				try {
					$db = getConnection();
					$stmt = $db -> prepare($sqlProjekt);
					$stmt -> bindParam("inPortfolio", $key['inPortfolio']);
					$stmt -> bindParam("bid", $key['bid']);
					$stmt -> execute();
				} catch(PDOException $e) {
					error_log($e -> getMessage(), 3, '/var/tmp/php.log');
					echo '{"error":{"text":' . $e -> getMessage() . '}}';

				}
			}
		}
	}

	$sql = "UPDATE student SET vorname=:vorname, nachname=:nachname, email=:email ,passwort=:passwort WHERE bid='" . $bid . "'";
	try {
		$db = getConnection();
		$stmt = $db -> prepare($sql);
		$stmt -> bindParam("vorname", $student -> vorname);
		$stmt -> bindParam("nachname", $student -> nachname);
		$stmt -> bindParam("email", $student -> email);
		$stmt -> bindParam("passwort", $student -> passwort);
		$stmt -> execute();
		$student -> id = $db -> lastInsertId();
		$db = null;
		echo '{"success":' . json_encode($student) . '}';
	} catch(PDOException $e) {
		error_log($e -> getMessage(), 3, '/var/tmp/php.log');
		echo '{"error":{"text":' . $e -> getMessage() . '}}';
	}
}

function addComment($modulnummer) {
	error_log('addComment\n', 3, '/var/tmp/php.log');
	$request = Slim::getInstance() -> request();
	$kommentar = json_decode($request -> getBody());
	$sql = "INSERT INTO kommentar (text, modulnummer, studentbid) VALUES (:text, " . $modulnummer . "," . $_SESSION['user_id'] . ")";

	$student = $_SESSION['user_id'];
	$sqlStudent = "SELECT bid, vorname, nachname, email FROM student WHERE bid = '" . $student . "'";

	try {
		$db = getConnection();
		$stmt = $db -> query($sqlStudent);
		$student = $stmt -> fetch(PDO::FETCH_OBJ);

		$stmt = $db -> prepare($sql);
		$stmt -> bindParam("text", $kommentar -> text);
		$stmt -> execute();
		$kommentar -> id = $db -> lastInsertId('kommentar_id_seq');
		$kommentar -> vorname = $student -> vorname;
		$kommentar -> nachname = $student -> nachname;

		$sqlKommentar = "SELECT last_modify, date FROM kommentar WHERE id = '" . $kommentar -> id . "'";
		$stmt = $db -> query($sqlKommentar);
		$times = $stmt -> fetch(PDO::FETCH_OBJ);

		$times = json_encode($times);
		$times = json_decode($times, true);

		$timestamp = strtotime($times['date']);
		$kommentar -> commentDate = date("d.m.Y", $timestamp);
		$kommentar -> commentTime = date("H:i", $timestamp);

		$db = null;
		echo json_encode($kommentar);
	} catch(PDOException $e) {
		error_log($e -> getMessage(), 3, '/var/tmp/php.log');
		echo '{"error":{"text":' . $e -> getMessage() . '}}';
	}
}

function updateComment($id) {
	$request = Slim::getInstance() -> request();
	$body = $request -> getBody();
	$kommentar = json_decode($body);

	$sql = "UPDATE kommentar SET text=:text, last_modify = now()  WHERE id  = :id";

	try {
		$db = getConnection();
		$stmt = $db -> prepare($sql);
		$stmt -> bindParam("text", $kommentar -> text);
		$stmt -> bindParam("id", $kommentar -> id);
		$stmt -> execute();

		$sqlKommentar = "SELECT last_modify, date FROM kommentar WHERE id = '" . $kommentar -> id . "'";
		$stmt = $db -> query($sqlKommentar);
		$times = $stmt -> fetch(PDO::FETCH_OBJ);

		$times = json_encode($times);
		$times = json_decode($times, true);

		$timestamp = strtotime($times['date']);
		$kommentar -> commentDate = date("d.m.Y", $timestamp);
		$kommentar -> commentTime = date("H:i", $timestamp);
		$timestamp = strtotime($times['last_modify']);
		$kommentar -> last_modifyDate = date("d.m.Y", $timestamp);
		$kommentar -> last_modifyTime = date("H:i", $timestamp);

		$db = null;
		echo json_encode($kommentar);
	} catch(PDOException $e) {
		echo '{"error":{"text":' . $e -> getMessage() . '}}';
	}
}

function deleteComment($id) {

	$sql = "DELETE FROM kommentar WHERE id  = '" . $id . "'";
	try {
		$db = getConnection();
		$stmt = $db -> prepare($sql);
		$stmt -> execute();
		$db = null;
	} catch(PDOException $e) {
		echo '{"error":{"text":' . $e -> getMessage() . '}}';
	}
}

function addFileToProject($projektid, $modulnummer) {
	$request = Slim::getInstance() -> request();
	$projekt = json_decode($request -> getBody());

	$allowed = array('jpg', 'jpeg', 'png', 'gif');

	if (isset($_FILES['upl']) && $_FILES['upl']['error'] == 0) {

		$extension = pathinfo($_FILES['upl']['name'], PATHINFO_EXTENSION);

		if (!in_array(strtolower($extension), $allowed)) {
			echo '{"status":"error"}';
			exit ;
		}
		$md5ProjektID = md5($projektid);

		if (!is_dir('uploads/' . $md5ProjektID)) {
			mkdir('uploads/' . $md5ProjektID, 0755, true);
		}
		if (!is_dir('uploads/thumbs/' . $md5ProjektID)) {
			mkdir('uploads/thumbs/' . $md5ProjektID, 0755, true);
		}
		if (!is_dir('uploads/thumbs/' . $md5ProjektID . '/titelbild')) {
			mkdir('uploads/thumbs/' . $md5ProjektID . '/titelbild', 0755, true);
		}

		if (move_uploaded_file($_FILES['upl']['tmp_name'], 'uploads/' . $md5ProjektID . '/' . $_FILES['upl']['name'])) {
			$projekt['status'] = 'success';
		}

		$image = WideImage::load('uploads/' . $md5ProjektID . '/' . $_FILES['upl']['name']);
		$thumb = $image -> crop('center', 'center', 500, 500) -> resize(300, 300);
		$thumb -> saveToFile('uploads/thumbs/' . $md5ProjektID . '/thumb-' . $_FILES['upl']['name']);
		if ($_FILES['upl']['name']) {
			$img = $_FILES['upl']['name'];
		}

	}
	if (isset($img)) {
		try {

			$sql = "UPDATE projekt SET titelbild='" . $img . "', bilddir = '" . $md5ProjektID . "' WHERE bid = '" . $projektid . "'";
			$db = getConnection();
			$stmt = $db -> prepare($sql);
			// $stmt -> bindParam("bilddir", $projekt -> bilddir);
			$stmt -> execute();
			$projekt['bid'] = $projektid;
			$projekt['modulnummer'] = $modulnummer;
			$db = null;
			echo json_encode($projekt);
		} catch(PDOException $e) {
			error_log($e -> getMessage(), 3, '/var/tmp/php.log');
			echo '{"error":{"text":' . $e -> getMessage() . '}}';
		}
	}
}

function deleteFileFromProject($bilddir, $imagename, $bid) {

	if (is_dir('uploads/' . $bilddir)) {
		if (file_exists('uploads/' . $bilddir . '/' . $imagename)) {
			unlink('uploads/' . $bilddir . '/' . $imagename);
		}
	}
	if (is_dir('uploads/thumbs/' . $bilddir)) {
		if (file_exists('uploads/thumbs/' . $bilddir . '/' . $imagename)) {
			unlink('uploads/thumbs/' . $bilddir . '/' . $imagename);
		}

	}
	if (is_dir('uploads/thumbs/' . $bilddir . '/titelbild')) {
		if (file_exists('uploads/thumbs/' . $bilddir . '/titelbild/' . $imagename)) {
			unlink('uploads/thumbs/' . $bilddir . '/titelbild');
		}
	}

	$titelfile = array_diff(scandir('uploads/' . $bilddir), array('..', '.'));
	$newTitelbild = '/modulhandbuch/img/placeholder.png';
	if (sizeof($titelfile) > 0) {
		$newTitelbild = reset($titelfile);
	}
	try {

		$sql = "UPDATE projekt SET titelbild = '" . $newTitelbild . "' WHERE bid = '" . $bid . "'";
		$db = getConnection();
		$stmt = $db -> prepare($sql);
		// $stmt -> bindParam("bilddir", $projekt -> bilddir);
		$stmt -> execute();
		echo '{"success":{"image" : ' . $newTitelbild . ' : deleted}}';
		$db = null;
	} catch(PDOException $e) {
		error_log($e -> getMessage(), 3, '/var/tmp/php.log');
		echo '{"error":{"text":' . $e -> getMessage() . '}}';
	}
}

function addStudentsToProject($projektid) {
	$request = Slim::getInstance() -> request();
	$students = json_decode($request -> getBody());
	$students = $_POST;

	$sql = "INSERT INTO studentprojekt (projektid, studentid) VALUES (" . $projektid . ", :studentid)";
	//
	try {
		$db = getConnection();
		$stmt = $db -> prepare($sql);
		foreach ($students as $key) {
			$stmt -> bindParam("studentid", $key);
			$stmt -> execute();
		}
		$sql = "INSERT INTO studentprojekt (projektid, studentid) VALUES (" . $projektid . "," . $_SESSION['user_id'] . ")";
		$stmt = $db -> prepare($sql);
		$stmt -> execute();
		// $projekt -> bid = $db -> lastInsertId('projekt_bid_seq');
		$db = null;
	} catch(PDOException $e) {
		error_log($e -> getMessage(), 3, '/var/tmp/php.log');
		echo '{"error":{"text":' . $e -> getMessage() . '}}';
	}
}

function addProject() {

	$request = Slim::getInstance() -> request();
	$projekt = json_decode($request -> getBody());
	$sql = "INSERT INTO projekt (name, beschreibung, modulnummer, videourl) VALUES (:name, :beschreibung, :modulnummer, :videourl)";

	try {
		$db = getConnection();
		$stmt = $db -> prepare($sql);
		$stmt -> bindParam("name", $projekt -> name);
		$stmt -> bindParam("beschreibung", $projekt -> beschreibung);
		$stmt -> bindParam("modulnummer", $projekt -> modulnummer);
		$stmt -> bindParam("videourl", $projekt -> videourl);
		$stmt -> execute();
		$projekt -> bid = $db -> lastInsertId('projekt_bid_seq');

		$db = null;
		echo json_encode($projekt);
	} catch(PDOException $e) {
		error_log($e -> getMessage(), 3, '/var/tmp/php.log');
		echo '{"error":{"text":' . $e -> getMessage() . '}}';
	}

}

function deleteProject($bid) {

	$sql = "DELETE FROM studentprojekt WHERE projektid  = '" . $bid . "' AND studentid = '" . $_SESSION['user_id'] . "'";
	try {
		$db = getConnection();
		$stmt = $db -> prepare($sql);
		$stmt -> execute();
		$db = null;
	} catch(PDOException $e) {
		echo '{"error":{"text":' . $e -> getMessage() . '}}';
	}
	$sql = "SELECT * FROM studentprojekt WHERE projektid  = '" . $bid . "'";

	try {
		$db = getConnection();
		$stmt = $db -> query($sql);
		$student = $stmt -> fetchAll(PDO::FETCH_OBJ);

		if (!$student) {
			$sql = "DELETE FROM projekt WHERE bid  = '" . $bid . "' ";
			$db = getConnection();
			$stmt = $db -> prepare($sql);
			$stmt -> execute();
		}
		$db = null;

		if ($_POST) {
			addStudentsToProject($bid);
		}

		echo json_encode($student);
	} catch(PDOException $e) {
		echo '{"error":{"text":' . $e -> getMessage() . '}}';
	}
}

function updateProjekt($bid) {
	$request = Slim::getInstance() -> request();
	$body = $request -> getBody();
	$projekt = json_decode($body);

	$sql = "UPDATE projekt SET name=:name, beschreibung=:beschreibung, videourl=:videourl, bilddir=:bilddir, titelbild=:titelbild WHERE bid  = '" . $bid . "'";

	try {
		$db = getConnection();
		$stmt = $db -> prepare($sql);
		$stmt -> bindParam("name", $projekt -> name);
		$stmt -> bindParam("beschreibung", $projekt -> beschreibung);
		$stmt -> bindParam("videourl", $projekt -> videourl);
		$stmt -> bindParam("bilddir", $projekt -> bilddir);
		$stmt -> bindParam("titelbild", $projekt -> titelbild);
		$stmt -> execute();

		if ($projekt -> titelbild && $projekt -> titelbild != '../img/placeholder.png') {
			if (!is_dir('uploads/thumbs/' . $projekt -> bilddir . '/titelbild')) {
				mkdir('uploads/thumbs/' . $projekt -> bilddir . '/titelbild', 0755, true);
			}

			$image = WideImage::load('uploads/thumbs/' . $projekt -> bilddir . '/thumb-' . $projekt -> titelbild);
			$titelbild = $image -> crop('center', 'center', 282, 188);
			$titelbild -> saveToFile('uploads/thumbs/' . $projekt -> bilddir . '/titelbild/titel-' . $projekt -> titelbild);
		}

		$projekt -> id = $db -> lastInsertId();

		$db = null;
		echo json_encode($projekt);
	} catch(PDOException $e) {
		echo '{"error":{"text":' . $e -> getMessage() . '}}';
	}
}

function getConnection() {
	$dbhost = "hoast";
	$dbuser = "user";
	$dbpass = "passwd";
	$dbname = "name";
	$dbh = new PDO("pgsql:host=$dbhost;dbname=$dbname", $dbuser, $dbpass);
	$dbh -> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	return $dbh;
}
?>