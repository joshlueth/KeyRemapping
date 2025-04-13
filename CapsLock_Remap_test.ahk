#Requires AutoHotkey v2.0-beta
#SingleInstance

ih := InputHook("B L1 T1", "{Esc}")

*CapsLock::
{
	ih.Start()
	reason := ih.Wait()
	if (reason = "Stopped") {
		MsgBox ih.Input	
	} else if (reason = "Max") {
		MsgBox ih.Input
	}
}

*CapsLock up::
{
	if (ih.InProgress) {
		ih.Stop()
	} else {
		MsgBox "Up"
	}
}

9::^PgUp

0::^PgDn
