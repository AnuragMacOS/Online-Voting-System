<?php

			$conn = mysqli_connect('localhost', 'root', '', 'VoterDatabase');

			$name = $_POST['name'];
			$password = $_POST['password'];


			$check = mysqli_query($conn, "SELECT * FROM AdminLogin WHERE name='$name' AND password='$password' ");

			if (mysqli_num_rows($check)>0) {
				echo '

					<script>
						location = "AdminDashboard.php";
					</script>

				';
			}
			else{
				echo '

					<script>
						alert("Incorrect information !! You are not Admin ");
						location = "../dashboard.php";
					</script>

				';
			}



?>