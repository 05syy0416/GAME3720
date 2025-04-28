var _videoData = video_draw();
var _videoStatus = _videoData[0];

if (_videoStatus == 0) //playing without error
{
	var _videoSurface = _videoData[1];
	
	if (surface_exists(_videoSurface)){
		var scale = 1.75;
		var surf_w = surface_get_width(_videoSurface);
		var surf_h = surface_get_height(_videoSurface);
		
		var draw_x = 100;
		var draw_y = 0;
		
		draw_surface_ext(_videoSurface, draw_x, draw_y, scale, scale, 0, c_white, 1);
	}
	
}