#Requires AutoHotkey v2.0.18+

; Map CapsLock to Esc when pressed alone
; and to Ctrl+key when pressed in conjunction with some other key
*CapsLock::Send('{Blind}{Ctrl Down}')
*CapsLock Up:: {
    if (A_PriorKey = 'Capslock')
        Send('{Blind}{Ctrl Up}{Escape}')
    else if GetKeyState('Control') && !GetKeyState('Control', 'P')
        Send('{Blind}{Ctrl Up}')
}