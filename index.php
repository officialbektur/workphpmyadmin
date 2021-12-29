<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>index</title>
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="font/icon-upload/style.css">
</head>
<body>
	<div class="wrapper">
		<main class="page">
		<?php 
			// Подключение к БД
			require "db/db.php";
			// HEADER
			require "include/header.php";
			// CONTENT
			require "index-content.php"; 
		?>
<?php
	// END
	require "include/end.php"; 
?>