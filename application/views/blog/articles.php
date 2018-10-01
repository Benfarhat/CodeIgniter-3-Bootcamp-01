<?php
/*

            [id] => 78
            [name] => aliquam iaculis, lacus pede sagittis
            [slug] => CF51801D-12C3-94F0-BF47-1504D1DF4F78
            [content] => nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede,
			[created_at] => 2018-08-24 19:50:16
			*/
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
