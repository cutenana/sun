<?php

/*
 * 说明：前端引用文件
**************************
(C)2010-2015 phpMyWind.com
update: 2014-5-31 21:58:30
person: Feng
**************************
*/
/*自动引导安装*/
define('INSTALL_PATH', preg_replace("/[\/\\\\]{1,}/", '/', dirname(__FILE__)));
if(!is_file(INSTALL_PATH.'/../data/install_lock.txt')) { echo "程序未安装，正在跳转安装页面...";header("Location:./install/");exit;}

require_once(dirname(__FILE__).'/common.inc.php');
require_once(PHPMYWIND_INC.'/func.class.php');
require_once(PHPMYWIND_INC.'/page.class.php');


if(!defined('IN_PHPMYWIND')) exit('Request Error!');


//网站开关
if($cfg_webswitch == 'N')
{
	echo $cfg_switchshow.'<br /><br /><i>'.$cfg_webname.'</i>';
	exit();
}

?>