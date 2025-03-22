function drop_items(item_x,item_y,items,obj){

	
	if(items > 1)
	{
		var _anglePerItem = 360/ items;
		var _angle = random(360);
		for (var i = 0; i < items; i++)
		{
			with(instance_create_layer(item_x, item_y, "Instances",obj))
			{
				direction = _angle;
				spd = 0.75 + (items * 0.1) + random(0.1);
			}
			_angle += _anglePerItem;
		}
		
		
	}else instance_create_layer(item_x, item_y, "Instances", obj);
	

}