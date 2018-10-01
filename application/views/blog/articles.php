<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>		
<div class="container">	
<?= $pagination ?>	
<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">name</th>
      <th scope="col">slug</th>
      <th scope="col">preview</th>
      <th scope="col">created_at</th>
    </tr>
  </thead>
  <tbody>
	<?php foreach(	$articles as $article ) : 
		$content = substr($article->content, 0, 70);
		$content = substr($content, 0, strrpos($content, ' ')) . " ...";
		?>
    <tr>
      <th scope="row"><?= $article->id ?></th>
      <td><?= $article->name ?></td>
      <td><a class="nav-link" href="<?= site_url(['article', $article->slug]); ?>"><?= $article->slug ?></a></td>
      <td><?= $content ?></td>
      <td><?= $article->created_at ?></td>
	</tr>
	<?php endforeach; ?>
  </tbody>
</table>
</div>
