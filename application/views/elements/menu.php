<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><nav class="navbar navbar-expand-lg navbar-dark bg-primary mb-3">
	<div class="container">
		<a class="navbar-brand" href="#"><img src="<?= base_url("assets/images/ci.png")?>" width="48"/></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarColor01">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active">
					<a class="nav-link" href="<?= site_url('index'); ?>"><i class="fa fa-home"></i> Home <span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="<?= site_url('articles'); ?>">Articles</a>
				</li>
				<li class="nav-item">
					<?= anchor('contact', 'Contact', 'class="nav-link"') ?>
				</li>
			</ul>
			<ul class="navbar-nav ml-auto">
				<li class="nav-item">
					<?= anchor('connexion', '<i class="fa fa-user"></i> Connexion', 'class="nav-link"') ?>
				</li>
				<li class="nav-item">
				
			<form class="form-inline my-2 my-lg-0">
				<input style="border:none;background-color:transparent;color:#fff;border-bottom:1px solid rgba(255,255,255,.3);margin-right:4px;padding-top:8px;" placeholder="Search" type="text">
				<button class="btn btn-secondary btn-sm mey-2 mey-sm-0" type="submit">Search</button>
			</form>
    </li>
			</ul>

		</div>
	</div>
</nav>
