@extends('layouts.app')

@section('content')
<style>
.master
	{
		background: #0cc;
		color: antiquewhite;
	}
.bg-primary
	{
		float: right;
		background-color:deepskyblue;
	}
.bg-warning
	{
		float: left;
		background-color:#FF9900;
		color: aliceblue;
	}
</style>

<div class="container">
    <div class="row">
	
	   <div class="col-md-3">
		   <h2>Online Users</h2>
		   <h5 id="no-online-users">no online user</h5>
	 <ul id="online_users" class="list-group">
 
    </ul>
	 </div>
		<hr>
		<div class=" col-md-9 d-flex flex-column" style="height:80vh;overflow-y:auto">
			<div class="h-100 bg-white mb-4 p-5" id="chat" style="overflow:auto;background:#fff;">
			
		@foreach($messages as $message)
		
		<div class="{{auth()->user()['id']==$message->user_id ? 'float-right bg-primary' : 'float-left bg-warning' }}" style="width:40%;margin-top:10px;border-radius:10px;padding-top:17px;
		padding-bottom:17px;padding-right:20px">
			
			<p>{{$message->body}}</p>
			
				</div>
				<div class="clearfix"></div>
				@endforeach
				
		</div>
			<br>
			<br>
		<form action="" class="d-flex">
		
			<input id="chat-text" type="text"
		   data-url="{{route('messages.store')}}" style="margin-right:10px"
			class="form-control"
		     name="">
			
			<button class="btn btn-primary" style="background:#0aa">Send</button>
	</form>
  </div>
</div>


<script>
	
	
	
	</script>
@endsection