<?php

/**
 * Simple Redirection
 *
 * Replaces the index.html file that is in directories that are not expected to be accessible.
 *
 */


if(@$_SERVER['HTTPS']):
	$url = "http://" . $_SERVER['HTTP_HOST'];
else :
	$url = "http://" . $_SERVER['HTTP_HOST'];
endif;

header('Location: ' . $url, TRUE, 301);
exit();
