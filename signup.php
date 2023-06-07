<?php include 'includes/session.php'; ?>
<?php include 'includes/header2.php'; ?>

<body class="body-wrapper">

<?php include 'includes/navbar2.php'; ?>

<section class="login py-5 border-top-1">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-5 col-md-8 align-item-center">
                <div class="border">
                    <?php
                        if(isset($_SESSION['error'])){
                            echo "
                            <div class='callout callout-danger text-center'>
                                <h3>".$_SESSION['error']."</h3> 
                            </div>
                            ";
                            unset($_SESSION['error']);
                        }

                        if(isset($_SESSION['success'])){
                            echo "
                            <div class='callout callout-success text-center'>
                                <h3>".$_SESSION['success']."</h3> 
                            </div>
                            ";
                            unset($_SESSION['success']);
                        }
                    ?>
                    <div class="register-box-body">
                    <h3 class="bg-gray p-4 font-weight-bold">Criar conta</h3>

                    <form action="register.php" method="POST">
                        <fieldset class="p-4">
                            <input type="text" class="border p-3 w-100 my-2" name="firstname" placeholder="Primeiro Nome" value="<?php echo (isset($_SESSION['firstname'])) ? $_SESSION['firstname'] : '' ?>" required>
                            <input type="text" class="border p-3 w-100 my-2" name="lastname" placeholder="Último Nome" value="<?php echo (isset($_SESSION['lastname'])) ? $_SESSION['lastname'] : '' ?>"  required>
                            <input type="text" class="border p-3 w-100 my-2" name="email" placeholder="Nome de Usuário" value="<?php echo (isset($_SESSION['text'])) ? $_SESSION['text'] : '' ?>" required>
                            <input type="password" class="border p-3 w-100 my-2" name="password" placeholder="Senha" required>
                            <input type="password" class="form-control" name="repassword" placeholder="Confirmar senha" required>
                            <button type="submit" class="d-block my-2 py-3 px-5 bg-primary text-white border-0 rounded font-weight-bold" name="signup">Criar Conta</button>
                            <p>Já tem tem uma conta? <a class="mt-3 d-inline-block text-primary" href="login.php">Iniciar Sessão</a></p>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

    <?php include 'includes/footer2.php'; ?>


</body>

</html>

