tell application "System Events" to click at {1724, 99}
set phone_num to text returned of (display dialog "Input a phone number to call:" default answer "")
repeat
	do shell script "open tel://" & quoted form of phone_num
	delay 2
	tell application "System Events" to tell process "Notification Center"
		click UI element "Call" of group 1 of UI element 1 of scroll area 1 of windows
	end tell
	delay 60
end repeat
