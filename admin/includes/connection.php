<?php
$servername = "localhost";
$username = "root";        // Default MySQL root username
$password = "";            // Update this if root has a password
$database = "gardner";     // Your database name
$port = 3307;              // MySQL configured port

// Create connection
$conn = mysqli_connect($servername, $username, $password, $database, $port);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

?>
