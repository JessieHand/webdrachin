<?php
include "koneksi.php"; // sesuaikan file koneksi kamu

$keyword = $_POST['keyword'] ?? '';
$keyword = trim($keyword);

if ($keyword !== '') {
  $stmt = $conn->prepare("SELECT * FROM gallery WHERE gambar LIKE ? ORDER BY id DESC");
  $like = "%$keyword%";
  $stmt->bind_param("s", $like);
  $stmt->execute();
  $hasil = $stmt->get_result();
} else {
  $hasil = $conn->query("SELECT * FROM gallery ORDER BY id DESC");
}

$no = 1;
while ($row = $hasil->fetch_assoc()) {
?>
<tr>
  <td><?= $no++; ?></td>
  <td>
    <img src="img/<?= $row['gambar']; ?>" style="max-width:180px" class="img-thumbnail">
    <div class="small text-muted mt-1"><?= $row['gambar']; ?></div>
  </td>
  <td>
    <form method="post" onsubmit="return confirm('Yakin hapus?')" style="display:inline;">
      <input type="hidden" name="id" value="<?= $row['id']; ?>">
      <input type="hidden" name="gambar" value="<?= $row['gambar']; ?>">
      <button type="submit" name="hapus" class="btn btn-danger btn-sm">Hapus</button>
    </form>
  </td>
</tr>
<?php } ?>
