function scr_set_defaults_for_text(){
	line_break_pos[0, page_number] = 999;
	line_break_num[page_number] = 0;
	line_break_offset[page_number] = 0;
	
	txtb_spr[page_number] = sTextBox;
	speaker_sprite[page_number] = noone;
	speaker_side[page_number] = 1;
}


///@param text
///@param [character]
///@param [side]
function scr_Text(_text){
	scr_set_defaults_for_text();
	text[page_number] = _text;
	//get character info
	if argument_count > 1 
	{
		switch (argument[1])
		{
			//shopkeeper
			case "shopkeeper":{
				speaker_sprite[page_number] = sGoblinshopkeeperIdle_;
				txtb_spr[page_number] = sTextBox;
			break;}
			//player
			case "player":{
				speaker_sprite[page_number] = sPlayerIdle_;
				txtb_spr[page_number] = sTextBox
				
			break;}
			//coin
			case "coin":{
				speaker_sprite[page_number] = sCoin_;
				txtb_spr[page_number] = sTextBox
			break;}
			//slime
		
			case "slime":{
				speaker_sprite[page_number] = sSlimeIdle_;
				txtb_spr[page_number] = sTextBox;
			break;}
			
			case "slime red":{
				speaker_sprite[page_number] = sSlimeIdlered_;
				txtb_spr[page_number] = sTextBox;
			break;}
			
			case "slime orange":{
				speaker_sprite[page_number] = sSlimeIdleorange_;
				txtb_spr[page_number] = sTextBox;
			break;}
			
			case "slime - saved":{
				speaker_sprite[page_number] = sHuman_;
				txtb_spr[page_number] = sTextBox;
			break;}
			
			case "slime1 - saved":{
				speaker_sprite[page_number] = sHuman_1_;
				txtb_spr[page_number] = sTextBox;
			break;}
			
			case "slime2 - saved":{
				speaker_sprite[page_number] = sHuman_2_;
				txtb_spr[page_number] = sTextBox;
			break;}
			
			case "slime3 - saved":{
				speaker_sprite[page_number] = sHuman_3_;
				txtb_spr[page_number] = sTextBox;
			break;}
			
			case "slime4 - saved":{
				speaker_sprite[page_number] = sHuman_4_;
				txtb_spr[page_number] = sTextBox;
			break;}
			
			case "slime5 - saved":{
				speaker_sprite[page_number] = sHuman_5_;
				txtb_spr[page_number] = sTextBox;
			break;}
		
		//villain
			case "villain": {
				speaker_sprite[page_number] = sVillainIdle_;
				txtb_spr[page_number] = sTextBox;
			break;
			}
			case "brother":{
				speaker_sprite[page_number] = sBrotherIdle_;
				txtb_spr[page_number] = sTextBox;
			break;}
			}
	}
	
	//side the character is on
	if argument_count > 2
	{
		speaker_side[page_number] = argument[2];
	}
	page_number++;
}

//@param option
//@param link_id
function scr_option (_option, _link_id) {
	option[option_number] = _option;
	option_link_id[option_number] = _link_id;
	
	option_number++;
}

///@param text_id
function scr_create_textbox (_text_id){
	with(instance_create_depth(0,0,-999999, oTextBox))
	{
		scr_Game_Text(_text_id)
	}
}
