<div class="container">
  <div class="row mb-2">
    <div class="col-md-6">
      <button type="button" class="btn btn-secondary mb-2" data-bs-toggle="modal" data-bs-target="#modalTambah">
        <i class="bi bi-plus-lg"></i> Tambah Gallery
      </button>
    </div>

    <div class="col-md-6">
      <div class="input-group">
        <input type="text" id="search" class="form-control" placeholder="Cari Judul minimal 3 karakter">
        <span class="input-group-text"><i class="bi bi-search"></i></span>
      </div>
    </div>
  </div>

  <div class="row">
    <div class="table-responsive">
      <table class="table table-hover">
        <thead class="table-dark">
          <tr>
            <th>No</th>
            <th class="w-50">Deskripsi</th>
            <th class="w-50">Gambar</th>
            <th class="w-25">Aksi</th>
          </tr>
        </thead>
        <tbody id="result"></tbody>
      </table>
    </div>

<!-- Modal Tambah -->
<div class="modal fade" id="modalTambah" tabindex="-1" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5">Tambah Gallery</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>

      <form method="post" action="" enctype="multipart/form-data">
        <div class="modal-body">
          <div class="mb-3">
            <label class="form-label">Deskripsi</label>
            <textarea class="form-control" placeholder="Tuliskan Deskripsi Gallery" name="deskripsi" required></textarea>
          </div>

          <div class="mb-3">
            <label class="form-label">Gambar</label>
            <input type="file" class="form-control" name="gambar" required>
          </div>
        </div>

        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          <input type="submit" value="simpan" name="simpan" class="btn btn-primary">
        </div>
      </form>

    </div>
  </div>
</div>

<script>
  function loadData(keyword = '') {
    $.ajax({
      url: "gallery_search.php",
      type: "POST",
      data: { keyword },
      success: function(data) {
        $("#result").html(data);
      }
    });
  }

  loadData();

  $("#search").on("keyup", function() {
    let keyword = $(this).val();
    if (keyword.length >= 3 || keyword.length === 0) loadData(keyword);
  });
</script>

<?php
include "upload_foto.php";

// Simpan 
if (isset($_POST['simpan'])) {
  $deskripsi = $_POST['deskripsi'];
  $tanggal   = date("Y-m-d H:i:s");
  $username  = $_SESSION['username'];
  $nama_gambar = $_FILES['gambar']['name'];

  if ($nama_gambar == '') {
    echo "<script>alert('Pilih gambar dulu');document.location='admin.php?page=gallery';</script>";
    die;
  }

  $cek_upload = upload_foto($_FILES["gambar"]);
  if (!$cek_upload['status']) {
    echo "<script>alert('".$cek_upload['message']."');document.location='admin.php?page=gallery';</script>";
    die;
  }

  $gambar = $cek_upload['message'];

  $stmt = $conn->prepare("INSERT INTO gallery (deskripsi, gambar, tanggal, username) VALUES (?,?,?,?)");
  $stmt->bind_param("ssss", $deskripsi, $gambar, $tanggal, $username);
  $simpan = $stmt->execute();

  if ($simpan) {
    echo "<script>alert('Simpan data sukses');document.location='admin.php?page=gallery';</script>";
  } else {
    echo "<script>alert('Simpan data gagal');document.location='admin.php?page=gallery';</script>";
  }

  $stmt->close();
  $conn->close();
}


// HAPUS
if (isset($_POST['hapus'])) {
  $id = $_POST['id'];
  $gambar = $_POST['gambar'];

  if ($gambar != '') {
    @unlink("img/" . $gambar);
  }

  $stmt = $conn->prepare("DELETE FROM gallery WHERE id=?");
  $stmt->bind_param("i", $id);
  $hapus = $stmt->execute();

  if ($hapus) {
    echo "<script>alert('Hapus data sukses');document.location='admin.php?page=gallery';</script>";
  } else {
    echo "<script>alert('Hapus data gagal');document.location='admin.php?page=gallery';</script>";
  }

  $stmt->close();
  $conn->close();
}

?>
