<?php


if (!file_exists('madeline.php')){
copy('https://phar.madelineproto.xyz/madeline.php', 'madeline.php');
}
include 'madeline.php';
$MadelineProto = new \danog\MadelineProto\API('session.madeline'); 
$MadelineProto->start();
$user = readline("Enter Username : @");
$fuk = readline("Enter Fucked ( u / c  ) : ");
if($fuk == "c"){
$updates = $MadelineProto->channels->createChannel(['broadcast' => true, 'megagroup' => false, 'title' => "LGAST", 'about' => "."]);
}
$sudo = "@ABoWatan";
$x = 0;
$MadelineProto->messages->sendMessage(['peer' => $sudo, 'message' => "- Hi #LGAST ,\n- Was Pinned @".$user." .!"]);
do{
ob_start();
try{
$MadelineProto->messages->getPeerDialogs(['peers' => [$user]]);
echo $l." » ".$x." » ".date("i:s")."\n";
++$x;
}catch(Exception $e){
if($fuk == "u"){
$MadelineProto->account->updateUsername(['username' => $user]);
}elseif($fuk == "c"){
$MadelineProto->channels->updateUsername(['channel' => $updates['updates'][1], 'username' => $user]);
$MadelineProto->messages->sendMessage(['peer' => $updates['updates'][1], 'message' => "Fucked By @LGAST .!"]);
}
$MadelineProto->messages->sendMessage(['peer' => $sudo, 'message' => "- Hi #LGAST ,\n- I'm Fucked @".$user." ,\n- And The Loops ".$x.".!"]);
echo $user." Was Fucked .!\n";
exit;
}

}while(true);
