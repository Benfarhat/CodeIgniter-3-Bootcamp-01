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
				<?php if(!$this->user->is_connected) : ?>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<i class="fa fa-lock"></i> Connexion
					</a>
					<div class="dropdown-menu animated flipInY bg-white" aria-labelledby="navbarDropdown">
						<?= form_open('connexion', ['class' => 'form-horizontal']); ?>
							<div class="form-group">
								<div class="col-md-12 <?= empty(form_error('username')) ? "" : "has-error" ?>">
									<?= form_input(['name' => "username", 'id' => "username", 'class' => 'form-control form-control-sm', 'placeholder' => 'Username'], set_value('username')) ?>
									<span class="help-block"><?= form_error('username'); ?></span>
								</div>
							</div>
							<div class="form-group">
								<div class="col-md-12 <?= empty(form_error('password')) ? "" : "has-error" ?>">
									<?= form_password(['name' => "password", 'id' => "password", 'class' => 'form-control form-control-sm', 'placeholder' => 'Password'], set_value('password')) ?>
									<span class="help-block"><?= form_error('password'); ?></span>
								</div>
							</div>
							<div class="form-group">
								<div class="col-md-offset-2 col-md-12">
									<?= form_submit("send", "Envoyer", ['class' => "btn btn-primary btn-block btn-sm"]); ?>
								</div>
							</div>
							<div class="invalid-feedback">
								<?php echo validation_errors(); ?>
							</div>
						<?= form_close() ?>
					</div>
				</li>
				<?php else : ?>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<i class="fa fa-user"></i> <?= $this->user->username; ?>
					</a>
					<div class="dropdown-menu animated flipInX bg-white" aria-labelledby="navbarDropdown">
						<?= anchor('deconnexion', 'Deconnexion', 'class="dropdown-item bg-dark"') ?>
					</div>
				</li>
				<?php endif; ?>
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
