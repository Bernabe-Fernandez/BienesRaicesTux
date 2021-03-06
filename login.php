    <?php
    require 'includes/funciones.php';

    require 'includes/config/database.php';
    $db = conectarDB();
    $errores = [];

    //autenticar el usuario
    if ($_SERVER["REQUEST_METHOD"] === "POST" && $_POST['option'] == '1') {
        //agregamos filtro para validar email
        $email = mysqli_real_escape_string($db, filter_var($_POST['email'], FILTER_VALIDATE_EMAIL));
        $password = mysqli_real_escape_string($db, $_POST['password']);
        $username = mysqli_real_escape_string($db, $_POST['name']);

        if (!$email) {
            $errores[] = "El Email es obligatorio o  no es valido";
        }
        if (!$password) {
            $errores[] = "El Password es obligatorio";
        }
        if (!$username) {
            $errores[] = "El Nombre de usuario es obligatorio";
        }

        if (empty($errores)) {

            //revisar si el usuario existe
            $query = "SELECT IdVendedores, nameUser, correoElectronico, contraseña FROM vendedores WHERE correoElectronico = '${email}'";
            $resultado = mysqli_query($db, $query);
            // var_dump($query);

            //comprobacion para usuarios
            if ($resultado->num_rows) {
                //revisar si el password es correcto
                $usuario = mysqli_fetch_assoc($resultado);
                //verificar si el usuario es correcto
                if ($usuario['nameUser'] == $username) {
                    $auth = password_verify($password, $usuario['contraseña']);
                    if ($auth) {
                        //el usuario ha sido autenticado

                        //llenar el arreglo de la sesion
                        $_SESSION['usuario'] = $usuario['correoElectronico'];
                        $_SESSION['Idusuario'] = $usuario['IdVendedores'];
                        $_SESSION['login'] = true;

                        //regresar al index
                        //header('Location: login.php');
                        echo "<script>location.href='index.php';</script>";
                    } else {
                        $errores[] = "Contraseña Incorrecta";
                    }
                } else {
                    $errores[] = "El usuario no coincide";
                }
            } else {
                $errores[] = "El Correo Electronico no es Correcto";
            }
        }
    } elseif (($_SERVER["REQUEST_METHOD"] === "POST" && $_POST['option'] == '2')) {
        //agregamos filtro para validar email
        $email = mysqli_real_escape_string($db, filter_var($_POST['email'], FILTER_VALIDATE_EMAIL));
        $password = mysqli_real_escape_string($db, $_POST['password']);
        $username = mysqli_real_escape_string($db, $_POST['name']);

        if (!$email) {
            $errores[] = "El Email es obligatorio o  no es valido";
        }
        if (!$password) {
            $errores[] = "El Password es obligatorio";
        }
        if (!$username) {
            $errores[] = "El Nombre de usuario es obligatorio";
        }

        if (empty($errores)) {
            //revisar si el usuario existe
            $query = "SELECT idCompradores, nameUser, correoElectronico, contraseña FROM compradores WHERE correoElectronico = '${email}'";
            $resultado = mysqli_query($db, $query);
            // var_dump($query);

            //comprobacion para usuarios
            if ($resultado->num_rows) {
                //revisar si el password es correcto
                $usuario = mysqli_fetch_assoc($resultado);
                //verificar si el usuario es correcto
                if ($usuario['nameUser'] == $username) {
                    $auth = password_verify($password, $usuario['contraseña']);
                    if ($auth) {
                        //el usuario ha sido autenticado

                        //llenar el arreglo de la sesion
                        $_SESSION['usuario'] = $usuario['correoElectronico'];
                        $_SESSION['Idusuario'] = $usuario['idCompradores'];
                        $_SESSION['login_comprador'] = true;

                        //regresar al index
                        //header('Location: index.php');
                        echo "<script>location.href='index.php';</script>";
                    } else {
                        $errores[] = "Contraseña Incorrecta";
                    }
                } else {
                    $errores[] = "El usuario no coincide";
                }
            } else {
                $errores[] = "El Correo Electronico no es Correcto";
            }
        }
    }
    incluirTemplate('header');
    ?>
    <!-- Formulario de inicio de sesion  con tres input correspondientes a los datos del login -->
    <main class="container">
        <?php foreach ($errores as $error) : ?>
            <div class="alerta error">
                <?php echo $error; ?>
            </div>
        <?php endforeach; ?>
        <h1>Inicio de Sesión Cliente</h1>
        <form action="" method="POST" class="form">
            <div class="forma">
                <div class="grupo">
                    <input type="text" id="name" name="name" required>
                    <spam class="barra"></spam>
                    <label for="name">Nombre de Usuario</label>
                </div>

                <div class="grupo">
                    <input type="email" name="email" id="email" required>
                    <spam class="barra"></spam>
                    <label for="email">Email</label>
                </div>

                <div class="grupo">
                    <input type="password" name="password" id="password" required>
                    <spam class="barra"></spam>
                    <label for="">Password</label>
                    <div class="contenedor-password">
                        <div class="icono-password toggle" onclick="mostrar()">
                            <svg xmlns="http://www.w3.org/2000/svg" class="icon icon-tabler icon-tabler-eye" width="30" height="30" viewBox="0 0 24 24" stroke-width="1.5" stroke="#9e9e9e" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                                <circle cx="12" cy="12" r="2" />
                                <path d="M22 12c-2.667 4.667 -6 7 -10 7s-7.333 -2.333 -10 -7c2.667 -4.667 6 -7 10 -7s7.333 2.333 10 7" />
                            </svg>
                        </div>
                    </div>
                </div>
                <div class="type-user">
                    <label for="vendedor">Vendedor</label>
                    <input type="radio" id="vendedor" name="option" value="1" checked>
                    <label for="comprador">Comprador</label>
                    <input type="radio" id="comprador" name="option" value="2">
                </div>

                <!-- Boton de el formulario del login  -->
                <div class="boton-login-center">
                    <input type="submit" value="Iniciar Sesion" class="boton-login">
                    <a href="loginAdmin.php" class="boton-login">Soy Administrador</a>
                </div>
                <a href="cuenta.php">¿No tienes una cuenta? Registrate</a>
            </div>
        </form>
    </main>


    <!-- footer -->
    <footer>
        <p>Bienes<span>Raices</span>Tux Todos los Derechos Reservados &copy;</p>
    </footer>

    <!-- mandamos a llmar js -->
    <script src=" js/script.js"></script>
    </body>

    </html>