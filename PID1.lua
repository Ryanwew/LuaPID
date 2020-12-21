function _G.PID(Position, Target, LastPos, Kp, Ki, Kd)	
	local Error = Target - Position

	local Fp = Error * Kp
	
	_G.Fi = _G.Fi + (Error*Ki)

	local Fd = Kd * (Error - _G.LastError)

	_G.LastError = Target - LastPos

	_G.Fapp = Fp + _G.Fi + Fd

	return(_G.Fapp)
end
