@extends('layouts.master', ['title' => 'Barang Keluar'])

@section('content')
    <x-container>
        <div class="mb-3 d-flex justify-content-end">
            <button onclick="window.print()" class="btn btn-sm btn-primary">
                <i class="fa fa-print"></i> Print Halaman Ini
            </button>
        </div>

        <div class="col-12">
            <x-card title="DAFTAR BARANG KELUAR" class="card-body p-0">
                <x-table>
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
                                <td>{{ $i + $transactions->firstItem() }}</td>
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
                            <td colspan="4" class="font-weight-bold text-uppercase">
                                Total Barang Keluar
                            </td>
                            <td class="font-weight-bold text-danger text-right">
                                {{ $grandQuantity }} Barang
                            </td>
                        </tr>
                    </tbody>
                </x-table>
            </x-card>
            <div class="d-flex justify-content-end">{{ $transactions->links() }}</div>
        </div>
    </x-container>
<style>
        @media print {
            button, .btn, .d-flex.justify-content-end {
                display: none !important;
            }
        }
    </style>
@endsection
