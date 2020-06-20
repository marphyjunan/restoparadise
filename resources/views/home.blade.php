@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        @foreach($makanans as $makanan)
        <div class="col-md-4">
            <div class="card mb-4">
                <img class="card-img-top" src="{{ url('uploads') }}/{{$makanan->gambar}}" alt="">
                <div class="card-body">
                    <h5 class="card-title">{{$makanan->nama_makanan}}</h5>
                    <p class="card-text"><strong> Harga : Rp. </strong>{{number_format($makanan->harga)}}
                    <br> <strong> Stok : </strong> {{($makanan->stok)}}
                    <hr> <strong> Keterangan : </strong> <br> {{($makanan->keterangan)}}

                    </p>
                    <a href="{{url('pesan')}}/{{$makanan->id}}" class="btn btn-primary"><i class="fa fa-shopping-cart"></i> Pesan</a>
                </div>
            </div>
        </div>
        
        @endforeach
    </div>
</div>
@endsection
