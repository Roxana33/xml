<?php

$xml=simplexml_load_file("bookstore.xml") or die("Error: Cannot create object");
?>
<?php foreach($xml->children() as $book):?>
<?php if ($book->year == 2003):?>
	<p>
	<?=$book->title?><br>
    <?=$book->author?><br>  
    <?=$book->year?><br>   
    <?=$book->price?><br>    
	</p>
<?php endif;?>
<?php endforeach;?>
