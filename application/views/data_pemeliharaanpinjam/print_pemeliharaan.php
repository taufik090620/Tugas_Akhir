<html>
    <head>
        <title>Data Pemeliharaan</title>
    </head>
    <style>
    table, td, th {
    border: 1px solid;
    text-align: center;
    }

    table {
    width: 100%;
    border-collapse: collapse;
    }
    </style>
    <body>
        <table>
            <tr>
                    <th>No</th>
                    <th>Nama Alat</th>
                    <th>Kode Alat</th>
                    <th>Total Alat</th>
                    <th>Jumlah Alat Baik</th>
                    <th>Jumlah Alat Rusak</th>
                    <th>Jumlah Alat Hilang</th>
                    <th>Tahun Peredaran</th>
                    <th>Tanggal pemeliharaan</th>
                    <th>Status Alat</th>
            </tr>
            <?php $no = 1;
             foreach($pemeliharaanpinjam as $inv) : ?>
                <tr>
                    <td><?= $no++ ?></td>
                    <td><?= $inv->nama_barang ?></td>
                    <td><?= $inv->kode_barang ?></td>
                    <td><?= $inv->total_alat ?></td>
                    <td><?= $inv->dipasang ?></td>
                    <td><?= $inv->jumlah_rusak ?></td>
                    <td><?= $inv->jumlah_hilang ?></td>
                    <td><?= $inv->tahun_peredaran ?></td>
                    <td><?= $inv->tanggal_pemeliharaan ?></td>
                    <td><?= $inv->status_alat ?></td>
                </tr>
                <?php endforeach ?>
        </table>
        <script type="text/javascript">
            window.print();
        </script>
    </body>
</html>