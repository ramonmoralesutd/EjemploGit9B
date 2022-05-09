<?php

include('database.php');

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $user = $_POST['user'];
    $password = md5($_POST['password']);

    $query = "SELECT * FROM informacion_cuenta WHERE email = '$user' AND password = '$password'";
    $request = mysqli_query($connection, $query);
    if ($row = mysqli_fetch_array($request)) {
        if ($row['loggedin'] == "1") {
            echo '<script>Hay una sesión iniciada en otro dispositivo<script/>';
            header('location: ../public/login.php?status=error_login');
        } else {
            $id = $row['id_cuenta'];
            $query2 = "UPDATE informacion_cuenta set loggedin = 1 WHERE id_cuenta = '$id'";
            $request2 = mysqli_query($connection, $query2);

            session_start();
            $_SESSION['id'] = $id;
            $_SESSION['time_session'] = date('h:i:s');

            /* Tokenización */
            $token = sha1(uniqid(mt_rand(), true));
            setcookie('token', $token, time() + (60 * 60 * 24), '/');
            $_SESSION['token'] = $token;

            if ($row['privilegio'] == 'usuario') {
                header('location: ../public/profile.php?id=' . $id);
            } else if ($row['privilegio'] == 'commerce' || $row['privilegio'] == 'service') {
                header('location: ../public/dashboard.php?id=' . $id);
            } else if ($row['privilegio'] == 'root') {
                header('location: ../public/dashboard.php?id=' . $id);
            }
        }
    } else {
        $query = "SELECT * FROM informacion_cuenta WHERE telefono = '$user' AND password = '$password' AND loggedin = 0";
        $request = mysqli_query($connection, $query);

        if ($row = mysqli_fetch_array($request)) {
            session_start();
            $id = $row['id_cuenta'];
            $_SESSION['id'] = $id;
            $query = "UPDATE informacion_cuenta set loggedin =1 WHERE id_cuenta = '$id'";
            $_SESSION['time_session'] = date('h:i:s', time());

            /* Tokenización */
            $token = sha1(uniqid(mt_rand(), true));
            setcookie('token', $token, time() + (60 * 60 * 24), '/');
            $_SESSION['token'] = $token;

            if ($row['privilegio'] == 'usuario') {
                header('location: ../public/profile.php?id=' . $id);
            } else if ($row['privilegio'] == 'commerce') {
                header('location: ../public/dashboard.php?id=' . $id);
            }
        } else {
            header('location: ../public/login.php?status=error');
        }
    }
}
