<?php 

if(fsockopen("smtp.gmail.com",465)) { print "port 465 terbuka"; } else { print "port 465 tertutup"; } 

?>
