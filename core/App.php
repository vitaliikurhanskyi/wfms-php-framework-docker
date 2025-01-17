<?php


namespace core;


class App {

    public static $app;

    public function __construct() {
        $this->createTempDir();
        new ErrorHandler();
        self::$app = Registry::getInstance();
        $this->getParams();
    }

    protected function getParams() {
        $params = require_once CONFIG . '/params.php';
        if (!empty($params)) {
            foreach ($params as $k => $v) {
                self::$app->setProperty($k, $v);
            }
        }
    }

    protected function createTempDir() {
        if(!is_dir(ROOT . '/temp')) {
            mkdir(ROOT . '/temp');
        }
    }

}