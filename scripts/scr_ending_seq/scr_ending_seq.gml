function scr_ending_seq(curSeqLayer, _Seq_id){
var _camX = camera_get_view_x(view_camera[0])+floor(camera_get_view_width(view_camera[0])*0.5);
var _camY = camera_get_view_y(view_camera[0])+floor(camera_get_view_height(view_camera[0])*0.5);

//Create Sequence on the proper layer
if !(layer_sequence_exists(curSeqLayer, _Seq_id))
{
	if (layer_exists(curSeqLayer))
	{
		layer_sequence_create(curSeqLayer,_camX,_camY, _Seq_id);
		layer_depth(curSeqLayer,-999999999);
	}
}
	instance_destroy(oBrother)
	oSequenceControl.Credits = true;
}