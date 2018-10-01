<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$config['protocol'] = 'smtp';
$config['smtp_host'] = 'ssl://smtp.googlemail.com';
$config['smtp_port'] = 465;
$config['smtp_user'] = "example@gmail.com";
$config['smtp_pass'] = "MySuperSecretPassword";
/*
Hotmail Settings
$config['smtp_host']=smtp.live.com

Yahoo!
$config['smtp_host']=smtp.mail.yahoo.com

Google Gmail
$config['smtp_host']=smtp.gmail.com

Lycos Mail
$config['smtp_host']=smtp.mail.lycos.com

AOL Mail
$config['smtp_host']=smtp.mail.lycos.com

Netscape
$config['smtp_host']=smtp.isp.netscape.com

*/
