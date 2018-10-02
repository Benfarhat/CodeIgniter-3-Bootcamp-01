<div class="container">
  <div class="row">
    <?= heading( $title); ?>
  </div>

  <div class="invalid-feedback">
  	<?php echo validation_errors(); ?>
  </div>
  <hr>
  <div class="row">
	<?= form_open('contact', ['class' => 'form-horizontal', 'style' => 'width:100%;']); ?>
    <div class="form-group row">
      	<?= form_label("Votre nom&nbsp;:", "name", ['class' => "col-md-2 control-label "]) ?>
        <div class="col-md-10">
	  <?= form_input(['name' => "name", 'id' => "name", 'class' => 'form-control', 'value' => set_value('name'), 'placeholder' => "your name"]) ?>
	  <span class="invalid-feedback"><?= form_error('name'); ?></span>
      </div>
	</div>
    <div class="form-group row">
      <?= form_label("Votre e-mail&nbsp;:", "email", ['class' => "col-md-2 control-label "]) ?>
      <div class="col-md-10">
		<?= form_input(['name' => "email", 'id' => "email", 'type' => 'email', 'class' => 'form-control', 'value' => set_value('email'), 'placeholder' => "yourEmail@domain.com"]) ?>
		<span class="invalid-feedback"><?= form_error('email'); ?></span>
	  </div>
	  
	</div>
    <div class="form-group">
      <div class="col-md-offset-2 col-md-10">
        <?= form_submit("send", "Envoyer", ['class' => "btn btn-default"]); ?>
      </div>
	</div>
    <?= form_close() ?>
  </div>
</div>
