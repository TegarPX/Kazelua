function opening()
  local open = {}
  open[0] = "OnDialogRequest"
  open[1] = [[
  set_default_color|`0
add_label_with_icon|big|Kazelua Proxy|left|12258|
add_textbox|`wUser Proxy Online : `21 |
add_textbox|User Online : ]]..GetLocal().name..[[|
add_textbox|Tessssss Update Sc Online!!!|
add_textbox|TegarP Ganteng Batt|
add_textbox|Know !!!!!!! Woeeee| 
end_dialog|end|`w                   CLOSE                    |]]
  SendVariantList(open)
end



opening()
