#Requires AutoHotkey v2.0-beta
#SingleInstance

ih := InputHook("B L1 T1", "{Esc}")

*CapsLock::
{
	ih.Start()
	reason := ih.Wait()
	if (reason = "Stopped") {
		Send "{Esc}"
	} else if (reason = "Max") {
		Send "{Blind}{LCtrl down}" ih.Input
	}
}

*CapsLock up::
{
	if (ih.InProgress) {
		ih.Stop()
	} else {
		Send "{LCtrl up}"
	}
}