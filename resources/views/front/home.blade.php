@extends('front.master')
@section('title','Home Page')
@section('content')
 <main role="main">
<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="{{asset('dist/images/imgbox3.jpg')}}" width="100%"height="470px" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="{{asset('dist/images/imgbox3.jpg')}}" width="100%"height="470px"  alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="{{asset('dist/images/imgbox3.jpg')}}"width="100%"height="470px" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

      <div class="album py-5 bg-light">
        <div class="container">

          <div class="row">
			  @foreach($products as $product)
            <div class="col-md-4">
              <div class="card mb-4 shadow-sm">
                <img class="card-img-top" src="{{$product->image_path}}" alt="Card image cap" width="200px" height="300px">
                <div class="card-body">
					
					<h4 class=" float-right">{{$product->price}}</h4>
					<del>{{$product->price}}</del>
                  <p class="card-text">{{$product->name}}.</p>
					
                  <div class="d-flex justify-content-between align-items-center">
                    <div class="btn-group">
						
                      <a class="btn btn-sm btn-outline-warning" href="{{url('productDetail',$product->id)}}">View Product</a>
                     
						<a href="{{url('cart/addItem',$product->id)}}" class="btn btn-info">Add To Cart</a>
                    </div>
					  
                    <small class="text-muted">min 9</small>
                  </div>
                </div>
              </div>
				   
            </div>
          
			@endforeach 
          
          </div>
			
			<div class="row">
			  @foreach($bus as $bu)
            <div class="col-md-4">
              <div class="card mb-4 shadow-sm">
                <img class="card-img-top" src="{{$bu->image_path}}" alt="Card image cap" width="200px" height="300px">
                <div class="card-body">
					
					<h4 class=" float-right">{{$bu->bu_price}}</h4>
					<del>{{$bu->country->name}}</del>
                  <p class="card-text">{{$bu->bu_small_dis}}.</p>
					
                  <div class="d-flex justify-content-between align-items-center">
                    <div class="btn-group">
					
						<a href="{{route('showb',$bu->id)}}" class="btn btn-info">View</a>
                    </div>
					  
                    <small class="text-muted">min 9</small>
                  </div>
                </div>
              </div>
				   
            </div>
          
			@endforeach 
          
          </div>
        </div>
      </div>

    </main>

@endsection