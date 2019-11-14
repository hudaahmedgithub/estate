

require('./bootstrap');

/*window.Vue = require('vue');
Vue.component('example-component', require('./components/ExampleComponent.vue'));

const app = new Vue({
    el: '#app'
});

*/

import Echo from "laravel-echo"

window.io = require('socket.io-client');

window.Echo = new Echo({
    broadcaster: 'socket.io',
    host: window.location.hostname + ':6001'
});

let onlineUsersLength=0;

window.Echo.join('online')

    .here((users) => {
	
    let userId=$('meta[name=user-id]').attr('content');
    //console.log(userId);
 users.forEach(function(user)
	{
	 
	onlineUsersLength=users.length;
	 
	if(users.length > 1)
		{
			$('#no-online-users').css('display','none');
		}
	if(user.id==userId)
		{
			return ;
		}
		$('#online_users').append('<li id="user-'+user.id+'"class="list-group-item"><span class="icon icon-circle text-success"></span> '+user.name+'</li>');
		
	   })
    })
    .joining((user) => {
	onlineUsersLength++;
	$('#no-online-users').css('display','none');
       $('#online_users').append('<li id="user-'+user.id+'" class="list-group-item"><span class="icon icon-circle text-success"></span> '+user.name+'</li>');
    })
    .leaving((user) => {
	onlineUsersLength--;
	if(onlineUsersLength==1)
		{
		$('#no-online-users').css('display','block');
		}
        $('#user-'+user.id).remove();
    });


$('#chat-text').keypress(function(e){
if(e.which == 13)
   {
	e.preventDefault();
	let body=$(this).val();
	let url=$(this).data('url');
	$(this).val('');// to empty text-field after write message
	   
	   $('#chat').append('<div class="float-right bg-primary" style="width:50%;margin-top:10px;border-radius:10px;padding-top:10px;padding-bottom:10px;padding-left:10px"><p>'+body+'</p></div><div class="clearfix"></div>') ;
	   
let data = {
'_token':$('meta[name=csrf-token]').attr('content'),
  body
}
	
$.ajax({
	url:url,
	method:'post',
	data:data,
})

}	
});

window.Echo.channel('chat-group').listen('MessageDelivered',(e) => {
     
$('#chat').append('<div class="float-left bg-warning" style="width:50%;margin-top:10px;border-radius:10px;padding-top:10px;padding-bottom:10px;padding-left:10px"><p>'+e.message.body+'</p></div><div class="clearfix"></div>');
	   });
	  















