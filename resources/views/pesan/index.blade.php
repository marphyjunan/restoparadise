@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-12 mb-2">
                            <a href="{{url('home')}}" class="btn btn-primary"><i class="fa fa-arrow-left"></i> Kembali</a>
                        </div>
                        <div class="col-md-12 mt-1">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="{{url('home')}}">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">{{$makanan->nama_makanan}}</li>
                                </ol>
                            </nav>
                        </div>
                        <div class="col-md-6">
                            <img class="rounded mx-auto d-block" src="{{url('uploads')}}/{{$makanan->gambar}}" width ="100%" alt="">
                        </div>
                        <div class="col-md-6 mt-5">
                            <h2>{{$makanan->nama_makanan}}</h2>
                            <table class="table">
                                <tbody>
                                    <tr>
                                        <td>Harga</td>
                                        <td>:</td>
                                        <td>Rp. {{number_format($makanan->harga)}}</td>
                                    </tr>
                                    <tr>
                                        <td>Stok</td>
                                        <td>:</td>
                                        <td>{{number_format($makanan->stok)}}</td>
                                    </tr>
                                    <tr>
                                        <td>Keterangan</td>
                                        <td>:</td>
                                        <td>{{$makanan->keterangan}}</td>
                                    </tr>
                                    

                                        <tr>
                                            <td>Jumlah Pesan</td>
                                            <td>:</td>
                                            <td>
                                            <form action="{{url('pesan')}}/{{$makanan->id}}" method="post">
                                            @csrf
                                                <input type="text" name="jumlah_pesan" class="form-control" required="">
                                                <button type="submit" class="btn-primary mt-2"> <i class="fa fa-shopping-cart"></i> Masukkan ke Pesanan
                                            </form>
                                            </td>
                                        </tr>
                                    </tbody>
                            </table>

                        </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
