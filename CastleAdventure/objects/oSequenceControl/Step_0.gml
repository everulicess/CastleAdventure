//control sequences
switch sequenceState
{
	case seqState.playing:
		instance_destroy(oBrother);
		instance_destroy(oPlayer);
	break;
	case seqState.finished:
		//remove sequence
		if (layer_sequence_exists(curSeqLayer,curSeq))
		{
			layer_sequence_destroy(curSeq)
		}
		//restore control to player, reset
		layer_destroy_instances(oPlayer);
		layer_destroy_instances(oBrother);
		sequenceState = seqState.notPlaying;
		curSeq = seq_Credits;
	break;
}	
if ending_1 == true || ending_3 == true
{
	if curSeq== noone && !instance_exists(oTextBox){
	scr_ending_seq(curSeqLayer, seq_Ending_1);
	}
}
if ending_2 == true
{
	if curSeq== noone&& !instance_exists(oTextBox){
	scr_ending_seq(curSeqLayer, seq_Ending_2);
	}
}
if ending_4 == true
{
	if curSeq== noone&& !instance_exists(oTextBox){
	scr_ending_seq(curSeqLayer, seq_Ending_4);
	}
}
if ending_5 == true
{
	if curSeq== noone&& !instance_exists(oTextBox){
	scr_ending_seq(curSeqLayer, seq_Ending_5);
	}
}
if ending_6 == true
{
	if curSeq== noone&& !instance_exists(oTextBox){
	scr_ending_seq(curSeqLayer, seq_Ending_6);
	}
}
if ending_7 == true
{
	if curSeq== noone&& !instance_exists(oTextBox){
	scr_ending_seq(curSeqLayer, seq_Ending_7);
	}
}
if Credits == true
{
	if curSeq== seq_Credits&& !instance_exists(oTextBox){
	scr_ending_seq(curSeqLayer, seq_Credits);
	}
}


