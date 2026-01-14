<?php
// ambil data user login
$username = $_SESSION['username'];

$stmt = $conn->prepare("SELECT username, foto FROM profile WHERE username=? LIMIT 1");
$stmt->bind_param("s", $username);
$stmt->execute();
$user = $stmt->get_result()->fetch_assoc();
$stmt->close();

// proses simpan
include "upload_foto.php";

if (isset($_POST['simpan_profile'])) {
    $username_baru = trim($_POST['username_baru'] ?? $username);
    $password_baru = trim($_POST['password_baru'] ?? '');
    $foto_lama = $_POST['foto_lama'] ?? '';

    // default: tidak ganti foto
    $foto_baru = $foto_lama;

    // kalau upload foto baru
    if (!empty($_FILES['foto']['name'])) {
        $cek_upload = upload_foto($_FILES['foto']);
        if (!$cek_upload['status']) {
            echo "<script>alert('".$cek_upload['message']."');document.location='admin.php?page=profile';</script>";
            die;
        }

        $foto_baru = $cek_upload['message'];

        // hapus foto lama (kalau ada & bukan kosong)
        if ($foto_lama != '' && file_exists("img/" . $foto_lama)) {
            @unlink("img/" . $foto_lama);
        }
    }

// kalau password baru diisi → update password juga
if ($password_baru !== '') {
    $hash = password_hash($password_baru, PASSWORD_DEFAULT);

    $stmt = $conn->prepare("UPDATE profile SET username=?, password=?, foto=? WHERE username=?");
    $stmt->bind_param("ssss", $username_baru, $hash, $foto_baru, $username);
} else {
    $stmt = $conn->prepare("UPDATE profile SET username=?, foto=? WHERE username=?");
    $stmt->bind_param("sss", $username_baru, $foto_baru, $username);
}

$ok = $stmt->execute();
$stmt->close();

if ($ok) {
    // update session biar navbar ikut berubah
    $_SESSION['username'] = $username_baru;

    echo "<script>alert('Profile berhasil diupdate');document.location='admin.php?page=profile';</script>";
} else {
    echo "<script>alert('Gagal update profile');document.location='admin.php?page=profile';</script>";
}

}
?>

<div class="container">

    <form method="post" enctype="multipart/form-data">
        <div class="mb-3">
            <label class="form-label">Username</label>
            <input type="text" name="username_baru" class="form-control"
            value="<?= htmlspecialchars($user['username'] ?? $username) ?>" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Ganti Password</label>
            <input type="password" name="password_baru" class="form-control" placeholder="Tuliskan Password Baru Jika Ingin Mengganti Password Saja">
        </div>

        <div class="mb-3">
            <label class="form-label">Ganti Foto Profil</label>
            <input type="file" name="foto" class="form-control">
            <input type="hidden" name="foto_lama" value="<?= htmlspecialchars($user['foto'] ?? '') ?>">
        </div>

        <div class="mb-3">
            <label class="form-label">Foto Profil Saat Ini</label><br>
            <?php
            if (!empty($user['foto']) && file_exists("img/" . $user['foto'])) {
                echo '<img src="img/' . $user['foto'] . '" class="img-thumbnail" style="max-width:180px;">';
            } else {
                echo '<div class="text-muted">Belum ada foto profil.</div>';
            }
            ?>
        </div>

        <button type="submit" name="simpan_profile" class="btn btn-primary">simpan</button>
    </form>
</div>
