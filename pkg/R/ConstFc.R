


#' automatic title
#' 
#' @param object no manual documentation
#' @autocomment These comments were created by the auto_comment_roclet by
#' inspection of the code.  You can use the "update_auto_comment_roclet" to
#' automatically adapt them to changes in the source code. This will remove
#' `@param` tags for parameters that are no longer present in the source code
#' and add `@param` tags with a default description for yet undocumented
#' parameters.  If you remove this `@autocomment` tag your comments will no
#' longer be touched by the "update_autocomment_roclet".
setMethod(
    f="getValues",
    signature="ConstFc",
    definition=function
			(object 
			){
        return(object@values)
    }
)



#' automatic title
#' 
#' @param F no manual documentation
#' @autocomment These comments were created by the auto_comment_roclet by
#' inspection of the code.  You can use the "update_auto_comment_roclet" to
#' automatically adapt them to changes in the source code. This will remove
#' `@param` tags for parameters that are no longer present in the source code
#' and add `@param` tags with a default description for yet undocumented
#' parameters.  If you remove this `@autocomment` tag your comments will no
#' longer be touched by the "update_autocomment_roclet".
setMethod(
   f= "Delta14C",
      signature("ConstFc"),
      definition=function
	(F
	){
	f=F@format
        targetFormat="Delta14C"
        if (f==targetFormat){
	   return(F)
	}
	if (f=="AbsoluteFractionModern"){
	 f_afn=F@values
	 f_d14C=Delta14C_from_AbsoluteFractionModern(f_afn)
	 D14C=F
	 D14C@values=f_d14C
	 D14C@format=targetFormat
	 return(D14C)
	} 
      stop("conversion not implemented for this format")
      }	 
)



#' automatic title
#' 
#' @param F no manual documentation
#' @autocomment These comments were created by the auto_comment_roclet by
#' inspection of the code.  You can use the "update_auto_comment_roclet" to
#' automatically adapt them to changes in the source code. This will remove
#' `@param` tags for parameters that are no longer present in the source code
#' and add `@param` tags with a default description for yet undocumented
#' parameters.  If you remove this `@autocomment` tag your comments will no
#' longer be touched by the "update_autocomment_roclet".
setMethod(
   f= "AbsoluteFractionModern",
      signature("ConstFc"),
      definition=function
	(F 
	){
	f=F@format
        targetFormat="AbsoluteFractionModern"
        if (f==targetFormat){
	   return(F)
	}
	if (f=="Delta14C"){
	 f_d14C=F@values
         f_afn=AbsoluteFractionModern_from_Delta14C(f_d14C)
	 AFM_tm=F
	 AFM_tm@values=f_afn
	 AFM_tm@format=targetFormat
	 return(AFM_tm)
	} 
      stop("conversion not implemented for this format")
      }	 
)






#' creates an object containing the initial values for the 14C fraction needed
#' to create models in SoilR
#' 
#' The function returns an object of class ConstFc which is a building block
#' for any 14C model in SoilR. The building blocks of a model have to keep
#' information about the formats their data are in, because the high level
#' function dealing with the models have to know. This function is actually a
#' convenient wrapper for a call to R's standard constructor new, to hide its
#' complexity from the user.
#' 
#' 
#' @param values a numeric vector
#' @param format a character string describing the format e.g. "Delta14C"
#' @return An object of class ConstFc that contains data and a format
#' description that can later be used to convert the data into other formats if
#' the conversion is implemented.
 ConstFc <- function 
     (
     values=c(0),  
     format="Delta14C"   
     )
     {
 	F0=new(Class="ConstFc",values=values,format=format)
 	return(F0)
 }
