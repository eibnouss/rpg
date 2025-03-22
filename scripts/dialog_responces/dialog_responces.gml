// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function dialog_responces(response){
switch(response){
case 0: break;
case 1: new_textbox("you give response a",1);break;
case 2: new_textbox("you give response b,any further response?",1,["3:yes","0:no"]);break;
case 3: new_textbox("thank for you responses",0);break;
default: break;
	}
}