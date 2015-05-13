function cs()
term.clear()
term.setCursorPos(1,1)
end

--Database Connection

function DBControl(sMode, sUser, sPass)
	ModeList = {"login"}
	--url = "http://www.roeboatcorpcom.ipage.com/cc/ccLogin.php"
if sMode == ModeList[1] then
	local url = "http://roeboatcorpcom.ipage.com/cc/ccCheckUser.php?"
	local request = http.get(url, "username="..textutils.urlEncode(tostring(sUser)).."&".."password="..textutils.urlEncode(tostring(sPass)))
	if request.readLine() == "0" {
		print("USER ACCESS DENIED - FAILED AUTHENTICATION")
		os.reboot()
	} elseif request.readLine() == "1" {
		print("USER ACCESS GRANTED - WELCOME")
	}
	end
end
end

print("> Roeboat Corp Universal NATO Login System")
print("> Username: ")
local sUsername = read()
print("> Password:")
local sPassword = read()
print("> Command/Mode:")
local sCommand = read()
DBControl(sCommand, sUsername, sPassword)