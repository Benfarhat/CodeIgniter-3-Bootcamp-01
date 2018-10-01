<?php $article = (object) $article; ?>
<div class="container">
	<div class="card">
	<div class="card-body">
		<h5 class="card-title"><?= $article->name ?></h5>
		<h6 class="card-subtitle mb-2 text-muted"><?= $article->slug ?></h6>
		<p class="card-text"><?= $article->content ?></p>
		<a href="#" class="card-link"><i class="fa fa-edit"></i></a>
		<a href="#" class="card-link"><i class="fa fa-times"></i></a>
	</div>
	</div>
</div>
