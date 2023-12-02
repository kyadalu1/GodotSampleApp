extends Node

@native("libmystatticlib.h") 
class MyLibrary:
	static func saveValue(value: Variant, forKey: String) -> void
	static func getValueForKey(key: String) -> Variant
