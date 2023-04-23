<?php 
class sms_class{
	function sinch($recipient_phone_numbers, $message){
		$service_plan_id = "b561f4c3fd164a9786bb714fe21f50d8";
		$bearer_token = "43c22a1c5ee44139a80a9ba4411f3b63";

		//Any phone number assigned to your API
		$send_from = "447520651145";
		//May be several, separate with a comma ,
		//$recipient_phone_numbers = "8801775567493"; 
		//$message = "Test message to {$recipient_phone_numbers} from {$send_from}";

		// Check recipient_phone_numbers for multiple numbers and make it an array.
		if(stristr($recipient_phone_numbers, ',')){
		  $recipient_phone_numbers = explode(',', $recipient_phone_numbers);
		}else{
		  $recipient_phone_numbers = [$recipient_phone_numbers];
		}

		// Set necessary fields to be JSON encoded
		$content = [
		  'to' => array_values($recipient_phone_numbers),
		  'from' => $send_from,
		  'body' => $message
		];

		$data = json_encode($content);

		$ch = curl_init("https://us.sms.api.sinch.com/xms/v1/{$service_plan_id}/batches");
		curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json'));
		curl_setopt($ch, CURLOPT_HTTPAUTH, CURLAUTH_BEARER);
		curl_setopt($ch, CURLOPT_XOAUTH2_BEARER, $bearer_token);
		curl_setopt($ch, CURLOPT_POST, true);
		curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);

		$result = curl_exec($ch);

		if(curl_errno($ch)) {
			echo 'Curl error: ' . curl_error($ch);
		} else {
			echo $result;
		}
		curl_close($ch);
	}
	public function sms_net(){
		$curl = curl_init();
		curl_setopt_array($curl, array(
		  CURLOPT_URL => 'https://api.sms.net.bd/sendsms',
		  CURLOPT_RETURNTRANSFER => true,
		  CURLOPT_CUSTOMREQUEST => 'POST',
		  CURLOPT_POSTFIELDS => array('api_key' => 'B3zDQ7A216pQPLp7Efbx9iK8l2SjZxgYZkHvD3Nt','msg' => 'Test','to' => '8801800000000'),
		));
		$response = curl_exec($curl);
		curl_close($curl);
	}
	
}
?>