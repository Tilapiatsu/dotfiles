libinput:register({1}) -- register plugin version 1

TABLET_VID = 0x056a
TABLET_PID = 0x0391

function frame(device, frame, _)
	for _, event in ipairs(frame) do
	--	if event.type == evdev.EV_KEY and event.code ~= evdev.BTN_TOUCH then
	--		event.value = -event.value
		
		if event.type == evdev.EV_KEY and event.code == evdev.BTN_TOUCH then
			if event.code == evdev.BTN_STYLUS then
				event.code = evdev.BTN_RIGHT
			elseif event.code == evdev.BTN_STYLUS2 then
				event.code = evdev.BTN_MIDDLE
			end
		end
	end
	return frame
end

function device_new(device)
    local info = device:info()
    if  info.vid == TABLET_VID and info.pid == TABLET_PID then
        device:connect("evdev-frame", frame)
    end
end

libinput:connect("new-evdev-device", device_new)

