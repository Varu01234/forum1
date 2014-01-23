<?php
$email = "varadhan198@gmail.com";
$default = "http://en.gravatar.com/userimage/52673634/dee1fc6f391b9e90a14e7d24a05235d1.jpg";
$size =200;
$grav_url = "http://www.gravatar.com/avatar/" . md5( strtolower( trim( $email ) ) ) . "?d=" . urlencode( $default ) . "&s=" . $size;
echo $grav_url;
?>