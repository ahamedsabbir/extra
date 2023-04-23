<?php 
class email_class{
	function sending($to, $subject, $code){
		$message = "
<html>
<head>
<title>subject</title>
</head>
<body>
<p>your code $code.</p>
<datatable>
<tr>
<th>Firstname</th>
<th>Lastname</th>
</tr>
<tr>
<td>John</td>
<td>Doe</td>
</tr>
</datatable>
</body>
</html>
";
		// Always set content-type when sending HTML email
		$headers = "MIME-Version: 1.0" . "\r\n";
		$headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
		// More headers
		$headers .= 'From: <webmaster@example.com>' . "\r\n";
		$headers .= 'Cc: myboss@example.com' . "\r\n";
		mail($to, $subject, $message, $headers);
	}

	function send_file_by_email_function($to, $subject, $text, $file){
		$message = "
<html>
<head>
<title>subject</title>
</head>
<body>
<p>your code $text.</p>
<datatable>
<tr>
<th>Firstname</th>
<th>Lastname</th>
</tr>
<tr>
<td>John</td>
<td>Doe</td>
</tr>
</datatable>
</body>
</html>
";
		// Always set content-type when sending HTML email
		$headers = "MIME-Version: 1.0" . "\r\n";
		$headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
		// More headers
		$headers .= 'From: <webmaster@example.com>' . "\r\n";
		$headers .= 'Cc: isratahamedsabbir@gmail.com' . "\r\n";
		mail($to, $subject, $message, $headers);
	}
	
	
	function gmail($to, $subject, $code){	
		/**
		 * Copyright 2016 Google Inc.
		 *
		 * Licensed under the Apache License, Version 2.0 (the "License");
		 * you may not use this file except in compliance with the License.
		 * You may obtain a copy of the License at
		 *
		 *     http://www.apache.org/licenses/LICENSE-2.0
		 *
		 * Unless required by applicable law or agreed to in writing, software
		 * distributed under the License is distributed on an "AS IS" BASIS,
		 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
		 * See the License for the specific language governing permissions and
		 * limitations under the License.
		 */

		// [START all]
		//use google\appengine\api\mail\Message;

		// Notice that $image_content_id is the optional Content-ID header value of the
		// attachment. Must be enclosed by angle brackets (<>)
		$image_content_id = 'image-content-id';

		// Pull in the raw file data of the image file to attach it to the message.
		$image_data = file_get_contents('image.jpg');
		try {
			$message = new Message();
			$message->setSender('from@example.com');
			$message->addTo('to@example.com');
			$message->setSubject('Example email');
			$message->setTextBody('Hello, world!');
			$message->addAttachment('image.jpg', $image_data, $image_content_id);
			$message->send();
			echo 'Mail Sent';
		} catch (InvalidArgumentException $e) {
			echo 'There was an error';
		}
		//END all
	}
  
  
  
  function mailing($to, $subject, $message){
		$html = <<<TEXT
<!DOCTYPE html>
<html>
	<head>
		<title>$subject</title>
		<style>
body{
	/*background:gray;*/
	padding:0px; 
	margin:0px; 
	outline:0px;
}
.mainTable{
	width:100%;
}
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
}

li a {
  display: block;
  color: #000;
  padding: 8px 16px;
  text-decoration: none;
}

/* Change the link color on hover */
li a:hover {
  background-color: #555;
  color: white;
}
button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
}
button:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
}
		</style>
	</head>
	<body>
		<table cellspacing="10" cellpadding="4" align="center" class="mainTable">
			<tr height="">
				<th colspan="3" align="center">
					<img src="https://amarjobs.x10.mx/extra/storage/email/Screenshot_1.png" width="100%" height="100%"/>
				</th>
			</tr>
			<tr>
				<td width="30%" rowspan="2" valign="top">
					<h1 style="padding:0px; margin:0px; text-align:center;">Menu</h1>
					<hr />
					<ul class="">
						<li><a href="#">Home</a></li>
						<li><a href="#">Shoping Site</a></li>
						<li><a href="#">Portfolio</a></li>
						<li><a href="#">Blog</a></li>
						<li><a href="#">University</a></li>
						<li><a href="#">Redweb</a></li>
						<li><a href="#">Exam Site</a></li>
						<li><a href="#">Contact Us</a></li>
					</ul>
				</td>
				<td valign="top">
					<h1 style="padding:0px; margin:0px; text-align:center;">Sign In</h1>
					<hr />
					<h3>$subject</h3>
					<span>$message</span>
					<a href="">click here</a>
				</td>
				<td width="20%">
					<img src="https://amarjobs.x10.mx/extra/storage/email/it.jpg" width="100%" height="100%"/>
				</td>
			</tr>
			<tr height="70">
				<td colspan="2" valign="top">
					<p>Customize your template by clicking on the style editor tabs up above. Set your fonts, colors, and styles. After setting your styling is all done you can click here in this area, delete the text, and start adding your own awesome content!</p> 
				</td>
			</tr>
			<tr>
				<td colspan="3" align="center" height="70px" style="background:black; color:white;">
					<h1 style="padding:0px; margin:0px; text-align:center;">Blog Project</h1>
				</td>
			</tr>
			<tr>
				<td colspan="1" align="center">
					<img src="https://amarjobs.x10.mx/extra/storage/email/blog.jpg" width="100%" height="100%"/>
				
				</td>
				<td colspan="2" align="center">
					<h3>your template by clicking</h3>
					<p>Customize your template by clicking on the style editor tabs up above. Set your fonts, colors, and styles. After setting your styling is all done you can click here in this area, delete the text, and start adding your own awesome content!</p>
					<button>Enter Blog Site</button>
				</td>
			</tr>
			<tr>
				<td colspan="3" align="center" height="70px" style="background:black; color:white;">
					<h1 style="padding:0px; margin:0px; text-align:center;">Protfolio Project</h1>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<h3>your template by clicking</h3>
					<p>Customize your template by clicking on the style editor tabs up above. Set your fonts, colors, and styles. After setting your styling is all done you can click here in this area, delete the text, and start adding your own awesome content!</p>
					<button>Enter Protfolio Site</button>
				</td>
				<td colspan="1" align="center">
					<img src="https://amarjobs.x10.mx/extra/storage/email/protfolio.png" width="100%" height="100%"/>
				</td>
			</tr>
			<tr height="40">
				<td colspan="3" align="center">
					<section>
					  <!-- Facebook -->
					  <a class="" href="www.facebook.com"><img src="https://amarjobs.x10.mx/extra/storage/email/facebook.jpg" width="50px" height="50px;"/></button></a>
					  <!-- Google -->
					  <a class="" href="www.youtube.com"><img src="https://amarjobs.x10.mx/extra/storage/email/youtube.jpg" width="50px" height="50px;"/></i></a>
					  <!-- Linkedin -->
					  <a class="" href="www.linkedin.com"><img src="https://amarjobs.x10.mx/extra/storage/email/linkedin.jpg" width="50px" height="50px;"/></i></a>
					  <!-- Github -->
					  <a class="" href="www.twitter.com"><img src="https://amarjobs.x10.mx/extra/storage/email/twitter.jpg" width="50px" height="50px;"/></i></a>
					  <a class="" href="www.twitter.com"><img src="https://amarjobs.x10.mx/extra/storage/email/whatsapp.jpg" width="50px" height="50px;"/></i></a>
					  <a class="" href="www.twitter.com"><img src="https://amarjobs.x10.mx/extra/storage/email/massager.jpg" width="50px" height="50px;"/></i></a>
					</section>
				</td>
			</tr>
		</table>
	</body>
</html>
TEXT;
		// Always set content-type when sending HTML email
		$headers  = 'MIME-Version: 1.0' . "\r\n";
		$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
		mail($to, $subject, $html, $headers);
	}
  
  
  
  
}
?>