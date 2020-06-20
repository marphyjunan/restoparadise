@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12 mb-2">
            <a href="{{url('history')}}" class="btn btn-primary"><i class="fa fa-arrow-left"></i> Kembali</a>
        </div>
        <div class="col-md-12 mt-1">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('home')}}">Home</a></li>
                    <li class="breadcrumb-item"><a href="{{url('history')}}">History</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Detail Pesanan</li>
                </ol>
            </nav>
        </div>
        <div class="col-md-12">
            <div class="card">
                <div class="card-body">
                    <h3>Detail Checkout</h3>
                    <h5>Sukses checkout! Silahkan lakukan pembayaran ke rekening <strong>BCA BNI MANDIRI a. n. Mr. X </strong> dengan nominal : <strong>Rp. {{ number_format($pesanan->jumlah_harga+$pesanan->kode)}}</strong></h5>
                </div>
            </div>
        </div>
        <div class="col-md-12">
            <div class="card">
                <div class="card-body">
                    <h3><i class="fa fa-shopping-cart"></i>Detail Pesanan</h3>
                    @if(!empty($pesanan))
                    <p align="right">Tanggal Pesan : {{ $pesanan->tanggal }}</p>
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Nama Makanan</th>
                                <th>Jumlah</th>
                                <th>Harga</th>
                                <th>Total Harga</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $no = 1; ?>
                            @foreach($pesanan_details as $pesanan_detail)
                            <tr>
                                <td>{{ $no++ }}</td>
                                <td>{{ $pesanan_detail->makanan->nama_makanan }}</td>
                                <td>{{ $pesanan_detail->jumlah }} Porsi</td>
                                <td>Rp. {{ $pesanan_detail->makanan->harga }}</td>
                                <td>Rp. {{ $pesanan_detail->jumlah_harga }} </td>
                            </tr>
                            @endforeach

                            <tr>
                                <td colspan="4" align="right"><strong>Total Harga :</strong></td>
                                <td><strong>Rp. {{ number_format($pesanan->jumlah_harga)}}</strong></td>
                            </tr>
                            <tr>
                                <td colspan="4" align="right"><strong>Kode Unik :</strong></td>
                                <td><strong>Rp. {{ number_format($pesanan->kode)}}</strong></td>
                            </tr>
                            <tr>
                                <td colspan="4" align="right"><strong>Total yang harus dibayar :</strong></td>
                                <td><strong>Rp. {{ number_format($pesanan->jumlah_harga+$pesanan->kode)}}</strong></td>
                            </tr>
                        </tbody>
                    </table>
                    @endif
                </div>
            </div>
        </div>             
    </div>
</div>
@endsection
