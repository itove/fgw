<?php
/*
 * jQuery File Upload Plugin PHP Example
 * https://github.com/blueimp/jQuery-File-Upload
 *
 * Copyright 2010, Sebastian Tschan
 * https://blueimp.net
 *
 * Licensed under the MIT license:
 * https://opensource.org/licenses/MIT
 */

error_reporting(E_ALL | E_STRICT);
require('UploadHandler.php');
//$upload_handler = new UploadHandler();


class Fuck extends UploadHandler
{
	protected function get_user_id() {
		//session_start();
		//return $_SESSION['oid'];
		return 10;
	}
}

$upload_handler = new Fuck(
	['user_dirs' => true],
	['upload_dir' => '/fgw/img/upload'],
	['upload_url' => '/fgw/img/upload']
);