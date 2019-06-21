%dw 2.0
/**
 * Function to map error
 */
fun mapError(error , correlationId, message, code) = 
 {
	"success": false,
	"correlationId": correlationId,
	"timestamp": now(),
	"errorDetails": [{
		"errorCode": code,
		"message": message,
		additionalInfo : if(error.errorMessage.payload != null) error.errorMessage.payload 
						else if (error.description !=null) {
			description: error.description
		}
						 else {}
	}]
}

/*
 * Truncate the value of each element in an object
 */
fun truncateValue(val, size) = val match  {
    case is Null -> null
    case x if(sizeOf(x as String) > size) -> (x as String)[0 to size]
    else -> val
}