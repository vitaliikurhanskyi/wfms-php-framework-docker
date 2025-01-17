<?php


$var1 = 10;
$var2 = 20;
$result = $var1 + $var2;
echo $result;

echo "lesson 5 - 24:00";

if(PHP_MAJOR_VERSION < 8) {
    exit("You need version PHP more or equal 8.0");
}

require_once dirname(__DIR__) . '/config/init.php';

new core\App();

//throw new Exception("Тест для отладки ошибок");
