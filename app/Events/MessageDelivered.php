<?php

namespace App\Events;
use App\Message;
use App\User;
use Illuminate\Broadcasting\Channel;
use Illuminate\Queue\SerializesModels;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Broadcasting\PresenceChannel;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;
class MessageDelivered implements ShouldBroadcast
{
    use Dispatchable, InteractsWithSockets, SerializesModels;
	
     
     public $user;
	public $message;
    public function __construct(Message $message)
    {
        $this->message = $message;
		//$this->user=$user;
	}
public function broadcastOn()
    {
        return new Channel('chat-group');
    }
}
