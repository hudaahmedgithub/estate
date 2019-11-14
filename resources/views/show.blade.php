@extends('layouts.app')
@section('content')
<script src="https://maps.googleapis.com/maps/api/js"></script>
<div class="about-info shadow">
  <div class="container">
    <div class="row shadow" style="border: 1px solid;
  padding: 10px;
  box-shadow: 10px 10px 20px 20px #cff;">
	
		<div class="col-md-3">
			<h2 style="color:#0098d0">{{$bu->bu_price}} LE</h2>
			<h1 style="color:#0098d0;margin-left:-30px">{{$bu->bu_phone}}</h1>
			
		</div>
      <div class="col-md-9 shadow">
        
          <h2 style="color:#0098d0"><span>{{$bu->bu_small_dis}}</span>
			  <h5>{{$bu->created_at}}</h5>
			</h2>
			<img src="{{$bu->image_path}}" height="350px" width="450px">
      <table id="example2" class="table table-bordered table-hover col-md-6">
		  <tr>
			  <th>price</th>
			  <td>{{$bu->bu_price}}</td>
		  </tr>
		  <tr>
			  <th>floor</th>
			  <td>{{$bu->bu_floor}}</td>
		  </tr>
		  <tr>
			  <th>square</th>
			  <td>{{$bu->bu_square}}</td>
		  </tr>
		  <tr>
			  <th>operation</th>
			  <td>{{$bu->operation['type']}}</td>
		  </tr>
		   <tr>
			  <th>category</th>
			  <td>{{$bu->category['name']}}</td>
		  </tr>
		  @if($bu->country_id)
		   <tr>
			  <th>Country</th>
			  <td>{{$bu->country->name}}</td>
		  </tr>
		  @endif
        <p>{{$bu->bu_large_dis}}</p>
        
	
     
		  </table>
	<!--	  <script>
		var myCenter=new google.maps.LatLng(51.508742,-0.120850);
		var marker;
			function initialize()
			{
				var mapProp = {
					center:myCenter,
					zoom:5,
					mapType:google.maps.mapTypeId.ROADMAP
				};
				
				
		var map=new google.maps.Map(document.getElementById('googleMap').mapProp);
	
	var marker=new google.maps.marker({
		position:myCenter,
		animation:google.maps.Animation.BOUNCE
	});
				marker.setMap(map); 
}
google.maps.event.addDomListener('window','load','initialize');
		</script>-->
		<div id="googleMap" style="width:500px;height:300px">
				</div>
		  </div>
      </div>
    </div>
 



<br>
<br>
<div class="footer">
  <div class="footer_bottom">
    <div class="follow-us"> <a class="fa fa-facebook social-icon" href="#"></a> <a class="fa fa-twitter social-icon" href="#"></a> <a class="fa fa-linkedin social-icon" href="#"></a> <a class="fa fa-google-plus social-icon" href="#"></a> </div>
    <div class="copy">
      <p>Copyright &copy; 2015 Company Name. Design by <a href="http://www.templategarden.com" rel="nofollow">TemplateGarden</a></p>
    </div>
  </div>
</div>
@endsection