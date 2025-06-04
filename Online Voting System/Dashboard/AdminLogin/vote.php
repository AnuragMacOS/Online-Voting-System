<?php

	session_start();

	$conn = mysqli_connect('localhost', 'root', '', 'VoterDatabase');

	$votes = $_POST['gvotes'];
	$total_votes = $votes + 1 ;
	$gid = $_POST['gid'];
	$uid = $_SESSION['voterdata']['id'];


	$update_votes = mysqli_query($conn, "UPDATE AddCandidate SET votes ='$total_votes' WHERE id = '$gid'  ");
	$update_user_status = mysqli_query($conn, "UPDATE VoterRegistration  SET status =1 WHERE id = '$uid'  ");

	if ($update_votes and $update_user_status) {
		$candidate = mysqli_query($conn, "SELECT * FROM AddCandidate");
		$candidatedata = mysqli_fetch_all($candidate, MYSQLI_ASSOC);

		$_SESSION['voterdata']['status']=1;
		$_SESSION['candidatedata'] = $candidatedata;

		echo '

					<script>
						alert("Voting Successfull");
						location="../dashboard.php";
					</script>


				';
	}
	else{
		echo "Some Error";
	}



?>