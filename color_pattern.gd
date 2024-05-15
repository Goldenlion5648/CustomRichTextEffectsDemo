@tool
extends RichTextEffect
class_name ColorPattern

var bbcode = "color_pattern"

func _process_custom_fx(char_fx: CharFXTransform) -> bool:
	var colors = char_fx.env.get("colors", ["red"])
	var color_pos = (char_fx.range.x +
			int(char_fx.elapsed_time)) % len(colors)
	char_fx.color = colors[color_pos]
	return true
