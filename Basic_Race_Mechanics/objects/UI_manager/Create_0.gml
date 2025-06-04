playing = false;
layer_name = "HUD_layer";

update_playing = function(){
	if (playing) {
		layer_set_visible(layer_name, true);
	}else{
		layer_set_visible(layer_name, false);
	}
}

