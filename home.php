<?php
    include('session_cek.php');
    include('koneksi.php');
    $nim = $_SESSION['nim'];
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Absensi Asrama UNAND</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/unand-icon.png" rel="icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Poppins:300,400,500,700" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Regna - v4.7.0
  * Template URL: https://bootstrapmade.com/regna-bootstrap-onepage-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center header-transparent">
    <div class="container d-flex justify-content-between align-items-center">
      <div id="logo">
      </div>
      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto active" href="home.php">Home</a></li>
          <li><a class="nav-link scrollto" href="logout.php">Logout</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav>
    </div>
  </header>
  <!-- End Header -->

  <section id="services">
    <div class="container" data-aos="fade-up">
      <div class="section-header">
        <h3 class="section-title">Absensi Asrama</h3>
        <h3 class="section-title">UNAND</h3>
        <p class="section-description"></p>
      </div>
      <div class="row">
        <div class="col-lg-4 col-md-6" data-aos="zoom-in">
          <div class="box">
            <div class="icon"><a href="absensisubuh.php?nim=<?php echo $nim ?>"><i class="bi bi-card-checklist"></i></a></div>
            <h4 class="title"><a href="absensisubuh.php?nim=<?php echo $nim ?>">Absensi Subuh</a></h4>
            <p class="description">Absensi subuh dilakukan ketika selesai shalat subuh berjamaah dengan melengkapi form</p>
          </div>
        </div>
        <div class="col-lg-4 col-md-6" data-aos="zoom-in">
          <div class="box">
            <div class="icon"><a href="absensimalam.php?nim=<?php echo $nim ?>"><i class="bi bi-card-checklist"></i></a></div>
            <h4 class="title"><a href="absensimalam.php?nim=<?php echo $nim ?>">Absensi Malam</a></h4>
            <p class="description">Absensi malam dilakukan ketika selesai shalat isya berjamaah dengan melengkapi form</p>
          </div>
        </div>
        <div class="col-lg-4 col-md-6" data-aos="zoom-in">
          <div class="box">
            <div class="icon"><a href="izinasrama.php?nim=<?php echo $nim ?>"><i class="bi bi-card-checklist"></i></a></div>
            <h4 class="title"><a href="izinasrama.php?nim=<?php echo $nim ?>">Izin Asrama</a></h4>
            <p class="description">Izin asrama dilakukan ketika terdapat kondisi tertentu yang menyebabkan tidak dapat berada di lingkungan asrama</p>
          </div>
        </div>
        <div class="col-lg-4 col-md-6" data-aos="zoom-in">
          <div class="box">
            <div class="icon"><a href="profil.php?nim=<?php echo $nim ?>"><i class="bi bi-brightness-high"></i></a></div>
            <h4 class="title"><a href="profil.php?nim=<?php echo $nim ?>">Profil</a></h4>
            <p class="description">Lihat dan edit profil pengguna</p>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="footer-top">
      <div class="container">
      </div>
    </div>
    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong>Asrama UNAND</strong>. All Rights Reserved
      </div>
      <div class="credits">
      </div>
    </div>
  </footer>
  <!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/purecounter/purecounter.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>
</html>