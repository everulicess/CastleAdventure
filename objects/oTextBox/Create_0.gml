depth  = -9999999;


//textbox parameters
textbox_width = 225;
textbox_height = 70;
border = 8;
line_sep = 14;
line_width = textbox_width-border*2;
txtb_img = 0;
txtb_img_spd = 4/60;

//the text
page = 0;
page_number = 0;
text[0] = "";
text_length[0] = string_length(text[0]);
char[0,0] = "";
char_x[0, 0] = 0;
char_y[0, 0] = 0;
draw_char = 0;
text_spd = 1;

//options
option[0] = "";
option_link_id[0] = -1;
option_pos = 0;
option_number = 0;



setup = false;

//effects
scr_set_defaults_for_text();
last_free_space = 0;






