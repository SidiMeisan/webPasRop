<?php
$url = $_get['url'];
require 'controller/'.$url.'.php';
$controller = new $url;
