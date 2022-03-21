%dw 2.0
//global Function

fun checkMinMax(field: String, minLength: Number, maxLength: Number)
= if( sizeOf(field) >= minLength and sizeOf(field) <= maxLength) true else false


fun trimZero(field: String)
= if ( (field matches(/^([0]+)([0-9a-zA-Z]+)/)) == true ) 
		field replace /^([0]+)/ with "" 
		else if ( (field matches(/^([0]+)([0-9a-zA-Z]+)([0]+)/))== true ) 
					field replace /^([0]+)/ with "" else field 