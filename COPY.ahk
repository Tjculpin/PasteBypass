Gui, Add, Edit, vUserInput w300 r5, ; Input field for the user to enter text (increased lines to allow more text)
Gui, Add, Button, gSubmit x+10, OK
Gui, Show, , Enter Text to Type
return

Submit:
Gui, Submit, Hide  ; Get the text entered and hide the GUI
KeyWait, LButton, D T5  ; Wait for the next mouse click or keypress
KeyWait, LButton, U
SendInput %UserInput%  ; Simulate typing the text
return

GuiClose:
ExitApp
