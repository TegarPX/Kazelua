function needupdate()
    warning = [[
set_border_color|255,255,255,255|
set_bg_color|0,0,0,200|
set_default_color|`w
add_label_with_icon|big|`4Kazelua Alert   |left|16084|
add_spacer|small|
add_textbox|`2New Update Script Has Been Release !!|
add_textbox|`2Please Update this script!! in discord !!!|
end_dialog|wkwkwk|EXIT|
]]
    SendVariantList({[0] = "OnDialogRequest", [1] = warning})
end


needupdate()