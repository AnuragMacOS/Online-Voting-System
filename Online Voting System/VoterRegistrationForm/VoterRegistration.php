<?php


	$conn = mysqli_connect('localhost', 'root', '', 'VoterDatabase');

	
	$name = $_POST['name'];
	$dob = $_POST['dob'];
	$email = $_POST['email'];
	$mobile = $_POST['mobile'];
	$gender = $_POST['gender'];
	$image = $_FILES['photo']['name'];
	$tmp_name = $_FILES['photo']['tmp_name'];
	$idtype = $_POST['idtype'];
	$voterid= $_POST['voterid'];
	$issue = $_POST['issue'];
	$expire = $_POST['expire'];
	$pass = $_POST['pass'];
	$cpass = $_POST['cpass'];

	if ($pass == $cpass) {
		move_uploaded_file($tmp_name,"../VoterImg/$image");
		
		$insert = mysqli_query($conn, "INSERT INTO VoterRegistration(name, dob, email, mobile, gender, photo, idtype, voterid, issue, expire, pass, cpass, status, votes)
     VALUES('$name', '$dob', '$email', '$mobile', '$gender', '$image', '$idtype', '$voterid', '$issue', '$expire', '$pass', '$cpass', 0, 0) ");

			echo '

			<script>
					alert("Form Submitted Successfull");
					location = "../VoterLoginForm/login.html";
			</script>


		';

	}
	else{
		echo '
		   <script>
			    alert ("Password and Confirm Password Does not Match !");
			    location="index.html";
       </script>
		';
  }

?>