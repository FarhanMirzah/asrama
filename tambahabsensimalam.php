<?php

  include('session_cek.php');
  include('koneksi.php');

  if(isset($_POST['submit'])){
    $tanggal = $_POST['tanggal'];
    $waktu = $_POST['waktu'];
    $nim = $_SESSION['nim'];
    $statuskehadiran = $_POST['statuskehadiran'];

    $result = mysqli_query($mysqli, "INSERT INTO absensimalam(tanggal, waktu, nim, statuskehadiran) 
    VALUES ('$tanggal','$waktu','$nim','$statuskehadiran')");
    
    if($result){
      echo "<script>
              var info = 'Absensi Malam Berhasil Ditambahkan!';  
              window.alert(info);
              document.location='absensimalam.php'; 
            </script>";
    }
    else{
      echo "<script> 
              var info = 'Absensi Malam Gagal Ditambahkan!'; 
              window.alert(info);
              document.location='tambahabsensimalam.php'; 
            </script>";
    }
  }

?>

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Form Absensi Malam</title>
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
          <li class="dropdown"><a href="#"><span>Absensi</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="absensisubuh.php">Absensi Subuh</a></li>
              <li><a href="absensimalam.php">Absensi Malam</a></li>
              <li><a href="izinasrama.php">Izin Asrama</a></li>
            </ul>
          </li>
          <li><a class="nav-link scrollto" href="profil.php">Profil</a></li>
          <li><a class="nav-link scrollto" href="logout.php">Logout</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav>
    </div>
  </header>
  <!-- End Header -->

  <section id="services3">
    <div class="section-header">
      <h3 class="section-title">Absensi Malam</h3>
      <p class="section-description"></p>
    </div>
    <div class="container px-3 px-lg-4">
      <div class="card mt-0">
      <div class="card-header bg-dark text-white">
        Form Absensi Malam
      </div>
      <div class="card-body">    
      <form method="post" action="tambahabsensimalam.php">    
        <div class="form-group">
          <label>Tanggal</label>
          <input type="date" name="tanggal" class="form-control" placeholder="Input tanggal" required>
        </div>
        <div class="form-group">
          <label>Waktu</label>
          <input type="time" name="waktu" class="form-control" placeholder="Input waktu absensi" required>
        </div>
        <div class="form-group">
          <label for="statuskehadiran">Status Kehadiran</label>
		      <select name="statuskehadiran" class="form-control">
            <option disabled selected> Pilih </option>
            <option value="hadir">hadir</option>
            <option value="izin">izin</option>
            <option value="sakit">sakit</option>
		      </select>
        </div>
        <br>
        <button type="submit" class="btn btn-primary" name="submit">Tambah</button>
        <button type="reset" class="btn btn-danger" name="reset">Reset</button>
      </form>  
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