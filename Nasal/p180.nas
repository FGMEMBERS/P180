# ===========================
# Test: convert from °F to °C
# ===========================


convertTemp = func{
	var tempF = getprop("engines/engine[0]/egt_degf");
	var degC = (degF - 32) * 5/9;
        setprop("engines/engine[0]/egt_degc", degC);
	settimer(convertTemp, 0.1);	#refresh 10 times per second
}

setlistener("/sim/signals/fdm-initialized", convertTemp);

# ========================================================================
# Enable engines sound
# ========================================================================

enableSound = func{
	setprop("sim/sound/E_volume", 1.0);
}

setlistener("/sim/signals/fdm-initialized", enableSound);
