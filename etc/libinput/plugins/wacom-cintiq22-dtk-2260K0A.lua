libinput:register(1) -- register plugin version 1
libinput:connect("new-evdev-device", function(_, device)
	if device:vid() == 0x056a and device:pid() == 0x0391 then
		device:connect("evdev-frame", function(_, frame)
			for _, event in ipairs(frame.events) do
				if
					event.type == evdev.EV_KEY
					and (event.code == evdev.BTN_STYLUS or event.code == evdev.BTN_STYLUS2)
				then
					event.value = -event.value
				end
			end
			return frame
		end)
	end
end)
