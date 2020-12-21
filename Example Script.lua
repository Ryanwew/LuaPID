local part = script.Parent

_G.Kp = 0

_G.Ki = 0

_G.Kd = 0

currentPos = 0

_G.Fi = 0

_G.LastError = 0


while true do

	x = _G.PID(part.Position.Z, player.position.Z, currentPos, _G.Kp, _G.Ki, _G.Kd)
	-- This calls the function with the PID control variables in place
	
	currentPos = part.Position.Z
	-- This saves the last position, used for caculating the derivative
	
	part.Velocity = Vector3.new(0, 0, (x))

	wait(0.1)
end