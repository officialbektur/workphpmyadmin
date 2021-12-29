<?php
/*
 * Делаем константы для хранения данных о базе данных
 * HOST - адрес для подключения к БД
 * USER - логин для доступа к БД
 * PASSWORD - пароль для доступа к БД
 * DATABASE - название базы данных, к которой мы подключаемся
*/
define('HOST', 'localhost');
define('USER', 'root');
define('PASSWORD', '');
define('DATABASE', 'test_saneto');
/*
 * Подключаемся к базе данных с помощью функции mysqli_connect()
*/
$connect = mysqli_connect(HOST, USER, PASSWORD, DATABASE);
/*
 * Делаем проверку соединения
 * Если есть ошибки, останавливаем код и выводим сообщение с ошибкой
*/
if (!$connect) {
    die('Error connect to database!');
}
/*
 * Мой функции
*/
/*
 * Получаем все с singles
*/
function get_singles_all() {
	global $connect;
	$singles = $connect->query("SELECT * FROM `singles`");
	return $singles;
}
/*
 * Получаем ID
*/
function get_single_by_id($id){
	global $connect;
	$singles = $connect->query("SELECT * FROM `singles` WHERE `id` = '$id'");
	foreach ($singles as $single) {
		return $single;
	}
}
/*
 * Увеличиваем просмотр страниц
*/
function views_update($id){
	global $connect;
	$connect->query("UPDATE `singles` SET `views` = `views` + 1 WHERE `id` = '$id'");
}
/*
 * Получаем ID categories
*/
function get_contegory_by_id($id) {
	global $connect;
	$categories = $connect->query("SELECT * FROM `categories` WHERE `id` = '$id'");
	foreach ($categories as $category) {
		return $category["category_name"];
	}
}
/*
 * Получаем ID authors
*/
function get_authors_by_id($id) {
	global $connect;
	$authors = $connect->query("SELECT * FROM `authors` WHERE `id` = '$id'");
	foreach ($authors as $author) {
		return $author["author_name"];
	}
}