--Clear Screen
function cs()
term.clear()
term.setCursorPos(1,1)
end

--Database Connection

function DBControl(sMode, sUser, sPass)
	ModeList = {"login"}
	url = "http://www.roeboatcorpcom.ipage.com/cc/ccLogin.php"
if sMode == ModeList[1] then
	local request = http.post(url, "command="..textutils.urlEncode(tostring(sMode)).."&".."username="..textutils.urlEncode(tostring(sUser)).."&".."password="..textutils.urlEncode(tostring(sPass)))
	end
end

print("> Testing MySQL and PHP")
print("> Username:")
write(": ")
local sUsername = read()
print("> Password:")
write(": ")
local sPassword = read()
print("> Command/Mode:")
write(": ")
local sCommand = read()
DBControl(sCommand, sUsername, sPassword)