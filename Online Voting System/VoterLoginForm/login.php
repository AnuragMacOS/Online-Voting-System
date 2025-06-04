<?php
			session_start();
			$conn = mysqli_connect('localhost', 'root', '', 'VoterDatabase');

			$voterid = $_POST['voterid'];
			$mobile = $_POST['mobile'];
			$pass = $_POST['pass'];
	

			$check = mysqli_query($conn, "SELECT * FROM VoterRegistration WHERE voterid='$voterid' AND mobile='$mobile' AND pass='$pass'  ");

			if (mysqli_num_rows($check)>0) {
				$voterdata = mysqli_fetch_array($check);
        
				$_SESSION['voterdata']=$voterdata;

				echo '

					<script>
						location="../Dashboard/dashboard.php";
					</script>


				';
			}
			else{
				echo "Some Error";
			}


?>