<!DOCTYPE html>
<html>
<head>

</head>
<link rel="stylesheet" href="estilos.css">
<body>
    <form action="login.php" method="post">
    <div class="container">
    <input type="email" name="imail" placeholder="email">
    <input type="password" name="contra" placeholder="password">
    <button>Login</button>
    </div>
</body>
</html>
<?php
// Check if the form was submitted using the POST method
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Optional: Use isset() to safely double-check the keys exist
    if (isset($_POST["imail"]) && isset($_POST["contra"])) {
        $email_ingresado = $_POST["imail"];
        $password_ingresada = $_POST["contra"];
        $email_correcto = "admin@unispaces.mx";
        $password_correcta = "1234";

        if ($email_ingresado === $email_correcto && $password_ingresada === $password_correcta) {
            echo "Bienvenido Administrador";
           } else{
                echo "Credenciales incorrecta";
        }
        
    }
}
?>