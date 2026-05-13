<!DOCTYPE html>
<html>
<head>
    <title>Print Barang Keluar</title>
    <style>
        body { font-family: Arial, sans-serif; }
        table { width: 100%; border-collapse: collapse; margin-bottom: 20px; }
        th, td { border: 1px solid #000; padding: 8px; text-align: left; vertical-align: top; }
        li { list-style: none; }
        @media print {
            .no-print { display: none; }
        }
    </style>
</head>
<body>
    <h2 style="text-align: center;">Laporan Barang Keluar</h2>
    <table>
        <thead>
            <tr>
                <th>#</th>
                <th>Nama Customer</th>
                <th>Nama Produk</th>
                <th>Kategori Produk</th>
                <th>Kuantitas</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($transactions as $i => $transaction)
                <tr>
                    <td>{{ $i + 1 }}</td>
                    <td>{{ $transaction->user->name }}</td>
                    <td>
                        @foreach ($transaction->details as $details)
                            <li>{{ $details->product->name }}</li>
                        @endforeach
                    </td>
                    <td>
                        @foreach ($transaction->details as $details)
                            <li>{{ $details->product->category->name }}</li>
                        @endforeach
                    </td>
                    <td>
                        @foreach ($transaction->details as $details)
                            <li>{{ $details->quantity }} - {{ $details->product->unit }}</li>
                        @endforeach
                    </td>
                </tr>
            @endforeach
            <tr>
                <td colspan="4" style="font-weight: bold;">Total Barang Keluar</td>
                <td style="font-weight: bold; color: red;">{{ $grandQuantity }} Barang</td>
            </tr>
        </tbody>
    </table>

    <div class="no-print">
        <button onclick="window.print()">Print Sekarang</button>
    </div>
</body>
</html>
