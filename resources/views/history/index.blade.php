@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12 mb-2">
            <a href="{{url('home')}}" class="btn btn-primary"><i class="fa fa-arrow-left"></i> Kembali</a>
        </div>
        <div class="col-md-12 mt-1">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="{{url('home')}}">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">History</li>
                </ol>
            </nav>
        </div>
        <div class="col-md-12">
            <div class="card">
                <div class="card-body">
                    <h3><i class="fa fa-history"></i>History</h3>
                    <table class="table table-striped">
                        <thead>
                            <th>No</th>
                            <th>Tanggal</th>
                            <th>Status</th>
                            <th>Jumlah Harga</th>
                            <th>Aksi</th>
                        </thead>                        
                        <tbody>
                            <?php $no = 1; ?>
                            @foreach($pesanans as $pesanan)
                            <tr>
                                <td>{{ $no++ }}</td>
                                <td>{{ $pesanan->tanggal }}</td>
                                <td>
                                    @if ($pesanan->status==1)
                                    Sudah Checkout dan Belum Bayar
                                    @else
                                    Sudah Bayar
                                    @endif
                                </td>
                                <td>Rp. {{number_format($pesanan->jumlah_harga+$pesanan->kode)}}</td>
                                <td>
                                    <a href="{{url('history')}}/{{$pesanan->id}}" class="btn btn-primary"> <i class="fa fa-info"></i>Detail</a>
                                </td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>             
    </div>
</div>
@endsection
