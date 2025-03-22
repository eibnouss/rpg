NineSliceBoxStratched(s_textbox,x1,y1,x2,y2,background);
draw_set_font(f_text);
draw_set_valign(fa_left);
draw_set_halign(fa_center);
draw_set_color(c_black);
var print = string_copy(message,1,textprogress);

if (response[0] != -1) and (textprogress >= string_length(message)){
for (var i = 0;i < array_length(response);i++ ){
print+="\n";
if (i == responseselected) print += ">";
print += response[i];
if (i == responseselected) print += "<";

}
}
draw_text((x1+x2)/2,y1+8,print);
draw_set_color(c_white);
draw_text((x1+x2)/2,y1+7,print);