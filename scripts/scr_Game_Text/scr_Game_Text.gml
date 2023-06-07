function scr_Game_Text(_text_id){
	switch(_text_id)
	{
	//Main room dialogues
		case "shopkeeper":{
			oPlayer.playermovement = false
	//sk		
			scr_Text("Hello Traveller! My Name is Baren and this is my Shop, The Pit of The Worlds Marvels and Curiosities! May I interest you in some of my goods?","shopkeeper");
			scr_Text("I've been distributing my goods in the area for over a century and your face is one that I am yet to see traversing these lands... ", "shopkeeper");
			scr_Text("Then again you look oddly familiar through my gaze yet I can not quite make out who you are as a traveler...", "shopkeeper");
			scr_Text("Well... I have said my piece... Who might you be?","shopkeeper");}
				//-------------------options-----------------------------------------------
				scr_option("Introduce yourself", "player - introduce")
				scr_option("Ask about your brother", "player - ask about brother")
		break;
			case "player - introduce":{
				scr_Text("Hello there Baren, My name is Benedict. I have been traveling for months through many little towns such as this one.", "player")
				scr_Text("Nice to meet you there Benedict","shopkeeper");}
					//----------------options------------------------------------------------
					scr_option("Ask about your brother", "player - ask about brother")
					scr_option("Ask about slimy creatures", "player - ask about slimes")
			break;
				case "player - ask about slimes":{
					scr_Text("What are the fluorescen beings I see wadering around?","player");
					scr_Text("Those pesty slimes keep returning to the city pestering the locals and driving away my business. Their origin is unknown...","shopkeeper");}
						//-------------------option---------------------------------------
						scr_option("Ask about your brother", "player - ask about brother")
				break;
			case "player - ask about brother":{
				scr_Text("The purpose of my travels is to locate my older brother Damien who had gone missing from our hometown.", "player")
				scr_Text(" Its been a few years since I have seen him but this is what he looked like to my knowledge. *hands drawn up picture of brother*", "player")
				scr_Text("I knew I had recognized your face from somewhere... You need to leave now... I can not be see with you...", "shopkeeper");
				scr_Text("What is this about? Have you heard anything about my brother?", "player");
				scr_Text("Around these lands your brother *points at picture* is known an enraged scientist who goes by Dr. Ooze.", "shopkeeper");
				scr_Text("He has been cooking a horrid smelling substance in the depths of one of the caverns around this very town.","shopkeeper");
				scr_Text("I can provide you service for a cost of course","shopkeeper");}
					//-----------------------------------------options---------------------------
					scr_option("Where can I find him?", "player - where find brother");
					scr_option("What will it cost me?","player - cost")
			break;
				case "player - where find brother":{
					scr_Text("That I do not know for sure. He Is rumored to be based in one of the surrounding caverns.","shopkeeper");
					scr_Text("In exchange for gold I can provide you with the necessary keys to enter the caverns","shopkeeper");
					scr_Text("To obtain the gold I need you must slay the slimes you see around town... One killed you will find gold pieces amognst their remains.","shopkeeper");}
						//------------------------------------options----------------------------------------
						scr_option("Accept terms","player - accepts terms");
						scr_option("Why kill slimes?","player - why kill");
				break;
				case "player - cost":{
					scr_Text("In exchange for gold I can provide you with the necessary keys to enter the caverns.","shopkeeper");
					scr_Text("Your brother is rumored to be based in one of the surrounding caverns.","shopkeeper");
					scr_Text("To obtain the gold I need you must slay the slimes you see around town… One killed you will find gold pieces amognst their remains.","shopkeeper");}
						//---------------------------------------options----------------------------------------
						scr_option("Accept terms", "player - accepts terms");
						scr_option("Why kill slimes?", "player - why kill");
				break;
				case "player - why kill":{
						scr_Text("Why must I kill the creatures? They seem rather harmless...","player");
						scr_Text("It's the only way of finding your brother", "shopkeeper")}
						//---------------------------------------options----------------------------------------
							scr_option("Accept terms","player - accepts terms");
					break;
				case "player - accepts terms":{
						scr_Text("Here! I'll give you the first key so you can bring my precious gold","shopkeeper")
						scr_Text("I will be back for the rest of the keys","player")}
							AddItem(ITEM_KEY_LEVEL_1,1);
							with (oPlayer)
							{
								x = 210;
								y = 265;
								playermovement = true
								shopkeepertalk = "hi shopkeeper"
							}
				break;



//---------------------------------SHOPKEEPER FOR THE REST OF THE GAME------------------------------------------------------------------------
		case "hi shopkeeper":
			with (oPlayer)
					{
						x += 10;
						y += 5;
						playermovement = false;
					}
			scr_Text("Nice to see you again. Do you need anything?", "shopkeeper");
				//---------------------------options--------------------------------------
				scr_option("Say Hello","shopkeeper - hi");
				scr_option("Yes, I need something","shopkeeper - go to the shop");
		break;
				case "shopkeeper - hi":
					scr_Text("Hi, I'll see you soon", "player");
				
						oPlayer.playermovement = true
					
				break;
				case "shopkeeper - go to the shop":
					scr_Text("See you soon", "shopkeeper");
					
					if !oShop.shopOpen {
						global.shop = true;
						oShop.shopOpen = true;
						oPlayer.playermovement = false;
						instance_destroy(oTextBox)
						}
					
				break;	

//---------------------------------------------cases for slimes-------------------------------------------------------------------------------------
		//---------Main Room Slime---------------
		case "main room slime":{
			oPlayer.playermovement = false;
			scr_Text("Hmmm up close these creatures give off a rancid odor... They seem to be fairly low intelligence beings...","player");
			scr_Text("They dont speak though when I look into their eyes I feel a familiar sensation.","player");
			scr_Text("Nevertheless lets get this over with so I may continue the search for my brother","player");}
				//---------------options-------------------------------
				scr_option("Kill slime","main room slime - kill");
		break;
			case "main room slime - kill":{
				scr_Text("*you feel a srange sensation throughout your body*");
				scr_Text("What is this feeling?", "player");
				scr_Text("*you jum as you hear a shriek come from somewhere near you*", "player");
				scr_Text("PLEeeEEeAAaaAAsSSEeeee!!!!!", "slime");
				scr_Text("*you look around again to locate the source of the exclamation*");
				scr_Text("**you notice the slime gazing at you with sincerity");
				scr_Text("Was that you?", "player");
				scr_Text("You can hear my cries?...since I have been this disgusting creature I have felt drowned in my own thoughts and watched as others that ", "slime");
				scr_Text("were turned be disposed of", "slime");
				scr_Text("Please traveller, do not dispose pf me, I have a lot I wish to accomplish and a family to support", "slime");
				scr_Text("Please spare me!", "slime");}
				//---------------------------------------options----------------------------------------
					scr_option("Ask a question","main room slime - ask");
					scr_option("Demand slime","main room slime - demand");
			break;
				case "main room slime - ask":{
					scr_Text("How is this possible... How am I able to understand you?... Who are you?...","player");
					scr_Text("I have never encountered a person that could understand me...","slime");
					scr_Text("I am Nathaniel Watts. Up until several days ago I worked as a local caregiver to the folks of this town.","slime");
					scr_Text("I was lured into the caverns by Dr. Ooze and tranformed into this","slime");
					scr_Text("Will you help me?","slime");}
					//---------------------------------------options----------------------------------------
						scr_option("Save slime","main room slime - save 1");
				break;
						case "main room slime - save 1":{
							scr_Text("How can I help you? What must I do?","player");
							scr_Text("Whispers around town have told me the chosen one will have the ability to relive us from this form!","slime");
							scr_Text("You just have to find the power within yourself to convert me back into a human!","slime");
							scr_Text("How about I try this...","player");
							scr_Text("*You clench your fists in concentration*");
							scr_Text("*The slime turns back to human*");
							scr_Text("Thank you","slime");}
							//change sprite to saved one
							oCursed.sprite_index = sHuman;
						break;
				case "main room slime - demand":{
					scr_Text("Speak up slime. What is the meaning of all this?", "player");
					scr_Text("You must be the chosen one!", "slime");
					scr_Text("I have heard rumors of a being coming to relinquish the damage made by Dr. Ooze. You must use your power to save us innocent people!", "slime");
					scr_Text("Please save me. Up until several days ago I worked as a local caregiver to the folks of this town.","slime");
					scr_Text(" I was lured into the caverns by Dr. Ooze and transformed into this.","slime");}
						//-----------------------------option--------------
						scr_option("save slime", "main room slime - save 2");
				break;
			case "main room slime - save 2":{
				scr_Text("Well lets give this a try","player");
				scr_Text("*You clenth your fists in concentration*");
				scr_Text("*The slime turns back to human*","slime - saved");
				scr_Text("Thank you. I am Nathaniel Watts. I will forever be grateful!","slime - saved");}
				//change sprite to saved one
				oCursed.sprite_index = sHuman;
			break;
						
						
						
	//----------------------SLIME RED------------------------------
		case "npc 1":{
			oPlayer.playermovement = false;
			scr_Text("Excuse me, traveller! I have a family at home. Please, I beg of you, can you help me?","slime red")}
				//----------------------------options---------------
				scr_option("Talk with the slime","npc 1 - talk with the slime");
				scr_option("Kill","npc 1 - kill");
			break;
				case "npc 1 - kill":{
					scr_Text("pleeeaaaaaaaseeeeeee!!! don't do it!!!!!", "slime red");}
					//gold
						audio_play_sound(snd_coin,20,false);
						global.money += 100;
					scr_Text("*you find gold*");
						//destroy cursed person
						oCursed1.sprite_index = sSlimeDeathred;
				break;
				
				case "npc 1 - talk with the slime":{
					scr_Text("Whats your name? When did you get turned in to this?", "player");
					scr_Text("I had just left my wife and 3 little children on my way to the mines where I work,","slime red");
					scr_Text(" Then I had been lured by Dr. Ooze thinking I was going for a new job opportunity. All of a sudden I was this.","slime red");}
						//-------------------------options----------------------
						scr_option("save", "npc 1 - save");
						scr_option("kill", "npc 1 - kill");
				break;
						case "npc 1 - save":{
							scr_Text("I'll sprinkle this powder and you will be a human again","player");
							scr_Text("*you sprinled the magic powder*")}
								audio_play_sound(snd_coin,20,false);
								global.money += 70;
							scr_Text("Thank you so much! I have this * gives key piece and some gold*","slime1 - saved")
								//sprite to human
								oCursed1.sprite_index = sHuman_1;
						break;
						
												
		case "npc 2":{
			oPlayer.playermovement = false;
			scr_Text("Can someone hear me?","slime orange")
				//----------------------------options---------------
				scr_option("Talk with the slime","npc 2 - talk with the slime");
				scr_option("Kill","npc 2 - kill");
			break;}
				case "npc 2 - kill":{
					scr_Text("I don't deserve this...", "slime orange");
					scr_Text("you are just like him... ", "slime orange");
						//gold
						audio_play_sound(snd_coin,20,false);
						global.money += 75;
					scr_Text("*you find gold*");
						//destroy cursed person
						oCursed2.sprite_index = sSlimeDeathorange;
				break;}
				
				case "npc 2 - talk with the slime":{
					scr_Text("Hey there, I can hear you", "player");
					scr_Text("I need help...I used to be a person, with a life, friends and family. ","slime orange");
					scr_Text("I worked hard at my job, enjoyed my hobbies and loved spending time with my loved ones.","slime orange");
					scr_Text(" I had no idea my life was going to take such a drastic turn.","slime orange");
						//-------------------------options----------------------
						scr_option("save", "npc 2 - save");
						scr_option("kill", "npc 2 - kill");
				break;}
						case "npc 2 - save":{
							scr_Text("With this powder you will be okay","player");
							scr_Text("I'm feeling strange...","slime orange");
							scr_Text("*You throw the some powder*");
							scr_Text("I'm feeling strange...","slime orange");
							scr_Text("Oh! thank you so much have this before I go","slime2 - saved")
								//gold
								audio_play_sound(snd_coin,20,false);
								global.money += 40;
							scr_Text("*gold and a piece of a key*");
								//change sprite to saved one
								oCursed2.sprite_index = sHuman_2;
						break;}
								
						
		case "npc 3":{
			oPlayer.playermovement = false;
			scr_Text("Oh my kittens are going to be so worried!","slime")
				//----------------------------options---------------
				scr_option("Talk with the slime","npc 3 - talk with the slime");
				scr_option("Kill","npc 3 - kill");
			break;}
				case "npc 3 - kill":{
					scr_Text("pleeeaaaaaaasssseeeeeee!!! don't do it!! my poor cats...", "slime");
					scr_Text("*attack with a sword* *attack with a sword*", "player");
							//gold
							audio_play_sound(snd_coin,20,false);
							global.money += 75;
					scr_Text("*gold*");
							//destroy cursed person
							oCursed3.sprite_index = sSlimeDeath;	
				break;}
				case "npc 3 - talk with the slime":{
					scr_Text("Whats your name? When did you get turned in to this?", "player");
					scr_Text("One day, I was walking through the forest to pick some fruit and was struck by an unknown force that turned me into a slime. ","slime");
					scr_Text("I was now a slime, with no idea how to go back to being a person","slime");
						//-------------------------options----------------------
						scr_option("save", "npc 3 - save");
						scr_option("kill", "npc 3 - kill");
				break;}
						case "npc 3 - save":{
							scr_Text("Watch this! *throw some powder*","player");
							scr_Text("Great!!! Please take this ","slime3 - saved");
								//gold
								audio_play_sound(snd_coin, 20, false)
								global.money += 50;
							scr_Text("*gold* *a piece of a key*");
								//change sprite to saved one
								oCursed3.sprite_index = sHuman_3;
						break;}
						
	//-------------------------SLIME RED-----------------------			
		case "npc 4":{
			oPlayer.playermovement = false;
			scr_Text("Hey watch out! I can not believe I am amongst such filth as you in this form","slime red")
				//----------------------------options---------------
				scr_option("Talk with the slime","npc 4 - talk with the slime");
				scr_option("Kill","npc 4 - kill");
			break;}
				case "npc 4 - kill":{
					scr_Text("You have no idea who I am...", "slime red");
					scr_Text("*attack with sword*", "player")
					scr_Text("aaaaaaaaaaaaaaaaaaa aaaaaaaaaaaa aaaaaaaaaaaaa", "slime red");
						//gold
						audio_play_sound(snd_coin,20,false)
						global.money += 120;
					scr_Text("*gold*");
						//destroy cursed person
						oCursed4.sprite_index = sSlimeDeathred;
					
				break;}
				case "npc 4 - talk with the slime":{
					scr_Text("What makes you say that!", "player");
					scr_Text("I always had my way and got everything I wanted. I could do whatever I wanted. ","slime red");
					scr_Text("I was better than everyone else how could this happen to me? Of all people!","slime red");
						//-------------------------options----------------------
						scr_option("save", "npc 4 - save");
						scr_option("kill", "npc 4 - kill");}
				break;
						case "npc 4 - save":{
							scr_Text("This is better","slime4 - saved");
							scr_Text("take that old thing, I don't like it","slime4 - saved");
							scr_Text("*Piece of key*","slime4 - saved");
								//change sprite to saved one
								oCursed4.sprite_index = sHuman_4;
						break;		}	
						
						
		case "npc 5":{
			oPlayer.playermovement = false;
			scr_Text("Hello excuse me sir could I ask for a few gold pieces? I need to get myself a drink...","slime orange")
				//----------------------------options---------------
				scr_option("Talk with the slime","npc 5 - talk with the slime");
				scr_option("Kill","npc 5 - kill");
			break;}
			
				case "npc 5 - kill":{
					scr_Text("pleeeaaaaaaaseeeeeee!!! don't do it!!!!!", "slime orange");
					scr_Text("*attacks with a sword**attacks with a sword*", "player")
					scr_Text("aaaaaaaaaaaaaaaaaaa aaaaaaaaaaaa aaaaaaaaaaaaa", "slime orange");
						//gold
						audio_play_sound(snd_coin,20,false)
						global.money += 120;
					scr_Text("*you find some gold on the ground*", "coin");
						//destroy cursed person
						oCursed5.sprite_index = sSlimeDeathorange;
				break;}
				
				case "npc 5 - talk with the slime":{
					scr_Text("Why would you need some gold right now?", "player");
					scr_Text("I was on the way to the local pub where I like to spend most of my days. ","slime orange");
					scr_Text("Then all of a sudden as I passed through one of the caverns in the city and I was promised a free drink from a strange doctor. ","slime orange");
					scr_Text("I just need a drink right now...","slime orange");
						//-------------------------options----------------------
						scr_option("save", "npc 5 - save");
						scr_option("kill", "npc 5 - kill");
				break;}
						case "npc 5 - save":{
							scr_Text("You concentrate your energy focusing on returning the slime to its human form","player");
							scr_Text("Thank you so much, please accept this *coins* *piece of a key*","player");
								//gold
								audio_play_sound(snd_coin,20,false)
								global.money += 90;
							scr_Text("*some gold*","slime5 - saved");
								//change sprite to saved one
								oCursed5.sprite_index = sHuman_5;
						
						break;}
		

//-------------------------------------------------- B R O T H E R ----------------------------------------------------------------

	case "brother":{
		scr_Text("This is a face I thought I would never see again...","villain");
		scr_Text("I have traveled many months to find out what had happened to you...","player");
		scr_Text("All of our people back in our town is worried","player");}
		//-----------------------------------options----------------------------
			scr_option("Talk to Damien","brother - talk")//talk to him choice 1
			scr_option("Draw your sword","brother - draw sword");//attack choice 2 
	break;
//choice 1
		case "brother - talk":{
			scr_Text("All I want right now is to speak to my brother...", "player");
			scr_Text("Do I make it seem as if I need my younger brother with me at this moment?...", "villain");
			scr_Text("Look at what I have been able to achieve away from all of my limitations...", "villain");}
			//-----------------------------------options----------------------------
				scr_option("Ask about his plan","brother - plan");
				scr_option("Ask why he disappeared","brother - disappear");
		break;
			case "brother - plan":{
				scr_Text("What are you doing here to all these people?","player");
				scr_Text("I am simply proving to all those who could not see my potential the limitless nature of my capabilities","brother");
				scr_Text("The oozing creatures are mere sacrifices towards the development of immortality","brother");
				scr_Text("The latest version of my concoction is ready and I believe it time for me to return home and test it.","brother");}
			//-----------------------------------options ENDING----------------------------
					scr_option("Kill Damien","brother - ending 1");
					scr_option("Destroy Damien's work","brother - ending 2");
			break;
			case "brother - disappear":{
				scr_Text("We had originally thought something had happened to you...", "player");
				scr_Text("When did you leave in silence?","player");
				scr_Text("I mentioned my new revelations to some fellows and I was laughed at...","brother");
				scr_Text("Despite my accomplishments I was painted as a clown","brother");
				scr_Text("The latest version of my concoction is ready and I believe it time for me to return home and test it","brother");}
			//-----------------------------------options ENDING---------------------------
					scr_option("kill Damien","brother - ending 1");//ending 3
				if global.kill >=4
				{
					scr_option("Join Damien","brother - ending 4")
				}
			break;
			
//----------------------------------CHOICE 1 ENDINGS----------------------------------------------------
			//---------------ENDING 1 and 3---------------------------------------
				case "brother - ending 1":{
					scr_Text("I cannot let you endager the lively hood of anyone yet alone any of those from our town","player");
					scr_Text("*You swiftly swing your sword through Damien*");
					scr_Text("*faintly* Well, I see I am not the only one capable of doing what is necessary for change","brother");
					scr_Text("*You bring the remains of  Damien and begin your journey home with your mission completed*");}
					//brother dies
					oSequenceControl.ending_1 = true;
					//SEQUENCE BROTHER DIES
				break;
				
			//---------------ENDING 2------------------------------------
				case "brother - ending 2":{
					scr_Text("I cannot let you endager the lively hood of anyone yet alone any of those from our town","player");
					scr_Text("What have you done!","brother");
					scr_Text("This will not halt the success of my goal...","brother");
					scr_Text("*Damien scapes the cavern through a hidden exit*","brother");}
					//make code for the player to scape
					oSequenceControl.ending_2 = true;
					//SEQUENCE through exit
					
					
				break;
				
			//-----------------ENDING 4----------------------------------
				case "brother - ending 4":{
					scr_Text("You are one of the greatest minds I know...","player");
					scr_Text("In my efforts to find you in this town I have seen the value of your work","player");
					scr_Text("Let me assist in your research","player");
					scr_Text("The time for change has passed unfortunately...","brother");
					scr_Text("I do not have the time to be discussing with the likes of you","brother");
					scr_Text("Return home... though im sure you will feel my presence soon enough","brother");
					scr_Text("*Damien secures his work swiftly and escapes through a trap door*");}
					//brothers scape
					oSequenceControl.ending_4 = true;
					//SEQUENCE ESCAPING THROUGH
				break;
	
//--------------------------------------choice 2----------------------------------------------------------------------------------------
		case"brother - draw sword":{
			scr_Text("You have done damage to the innocent people of this town, I will not let this continue...","player");
			scr_Text("You unsheathe sword and show intent to end Damiens wrongdoings","player");
			scr_Text("I refuse to be stopped...","brother");
			scr_Text("My work will bring evolution to our world as we know it!","brother");
			scr_Text("I will complete my goal...","brother");}
				//---------------------------------------options----------------------------------------
				scr_option("Give him a chance","brother - chance");
			if global.save >= 4 {
				scr_option("Swing at Damien","brother - swing");
			}
		break;
			case "brother - chance":{
				scr_Text("There must be another way than turning people to slimes","player");
				scr_Text("You cannot keep ruining the lives of some of the innocent people in this town","player");
				scr_Text("My research is a gift to human kind","brother");
				scr_Text("There are sacrifices that must be made in order to succeed","brother");
				scr_Text("Even you should be able to justify my actions...","brother");}
				//---------------------------------------options----------------------------------------
					scr_option("Kill Damien","brother - ending 5");
				if global.kill >=2
				{
					scr_option("Flee Damien","brother - ending 6");
				}
			break;
			case "brother - swing":{
				scr_Text("The horrible actions you have made leave me no other option but to end this here and now...","player");
				scr_Text("No one will ever be affected by the likes of you again!","player");
				scr_Text("*Plunges sword into Damien*");
				scr_Text("*exclaims in pain*");
				scr_Text("*faintly* Well, I see I am not the only one capable of doing what is necessary for change","brother");}
				//---------------------------------------options----------------------------------------	
					scr_option("Aid Damien","brother - ending 7");
					scr_option("Leave Damien","brother - ending 8");
			break;
//-------------------------------------------CHOICE 2 ENDINGS--------------------------
		//------------------------ENDING 5--------------------------------------------------
				case "brother - ending 5":{
					scr_Text("You cannot keep ruining the lives of some of the innocent people in this town","player");
					scr_Text("It pains me to have to do this to my own blood","player");
					scr_Text("*You take your sword and slash Damien*");
					scr_Text("*faintly* Well, I see I am not the only one capable of doing what is necessary for change","brother");}
					//SEQUENCE OF BOTHER DYING AND PLAYER SCAPING
					oSequenceControl.ending_5 = true;
				break;
		//----------------------------ENDING 6---------------------------------------------
				case "brother - ending 6":{
					scr_Text("Along my travels in this town have learnt that I may one day begin to see your perspective","player");
					scr_Text("For now I have to rethink my own goals in life...","player");
					scr_Text("*You hear as you are walking away* ¨Return or not, I shall persist on completing my goal...¨");}	
					//brother scapes code
					// SEQUENCE OF PLAYER SCAPING FROM HIS BROTHER
					oSequenceControl.ending_6 = true;
				break;
		//---------------------------ENDING 7---------------------------------------------
				case "brother ending 7":{
					scr_Text("Despite your wrongdoings I can not leave my own blood in such a manner...","player");
					scr_Text("*You begin to aproach Damien*");
					scr_Text("As I mentioned before… I will complete my goal...","brother");
					scr_Text("*Damien falls through a trap door in the cave and vanishes*");}
					//make code to make him disappear
					oSequenceControl.ending_7 = true;
				break;
		//---------------------------ENDING 8---------------------------------------------
				case "brother - ending 8":{
					scr_Text("It pains me to do this to my own blood...","player");
					scr_Text("But you had left me no other option, I can not see you do any more harm","player");
					scr_Text("*you quickly retreat from the cavern and leave Damiens remains*");
					}
					//brother has to keep lying down
					oSequenceControl.ending_8 = true;
				break;
//-----------------------------------------DOOR LOCKED MESSAGE---------
	//case for door locked message
	case "door locked":
		scr_Text("Door locked! You need a key...");
		break;
	}
}
	
	
	