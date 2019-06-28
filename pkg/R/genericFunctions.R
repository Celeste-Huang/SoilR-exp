setGeneric(
  name="Delta14C",
  def=function( 
  F 
  ){
	   standardGeneric("Delta14C")
  }
)
setGeneric(
	 name="Delta14C_from_AbsoluteFractionModern",
	 def=function( 
	 AbsoluteFractionModern 
	 ){
	     standardGeneric("Delta14C_from_AbsoluteFractionModern")
	 }
)
setGeneric(
	 name="AbsoluteFractionModern",
	 def=function( 
	 F 
	 ){
	     standardGeneric("AbsoluteFractionModern")
	 }
)
setGeneric(
	 name="AbsoluteFractionModern_from_Delta14C",
	 def=function( 
	 delta14C){
	     standardGeneric("AbsoluteFractionModern_from_Delta14C")
	 }
)
setGeneric(
	 name="getFormat",
	 def=function( 
	 object 
	 ){
	     standardGeneric("getFormat")
	 }
)
setGeneric(
	 name="getValues",
	 def=function( 
	 object 
	 ){
	     standardGeneric("getValues")
	 }
)
setMethod(
	f= "AbsoluteFractionModern_from_Delta14C",
	   signature("numeric"),
	   definition=function(
	delta14C 
	){
	fprime=(delta14C/1000)+1
	return(fprime)
	}
)
setMethod(
	f= "Delta14C_from_AbsoluteFractionModern",
	   signature("numeric"),
	   definition=function(
	   AbsoluteFractionModern 
	   ){
	     D14C=(AbsoluteFractionModern-1)*1000
	     return(D14C)
	   }
)
setMethod(
	f= "AbsoluteFractionModern_from_Delta14C",
	   signature("matrix"),
	   definition=function 
	(
	delta14C 
	){
	fprime=matrix(
	    nrow=nrow(delta14C),
	    ncol=ncol(delta14C),
	    sapply(delta14C,AbsoluteFractionModern_from_Delta14C)
	)
	return(fprime)
	}
)
setMethod(
	f= "Delta14C_from_AbsoluteFractionModern",
	   signature("matrix"),
	   definition=function(
	AbsoluteFractionModern 
	){
	D14C=matrix(
	    nrow=nrow(AbsoluteFractionModern),
	    ncol=ncol(AbsoluteFractionModern),
	    sapply(AbsoluteFractionModern,Delta14C_from_AbsoluteFractionModern)
	)
	return(D14C)
	}
)
setGeneric ( 
	name= "getMeanTransitTime",
	def=function(
	   object,           
	   inputDistribution 
	){standardGeneric("getMeanTransitTime")}
)
setGeneric ( 
	name= "getTransitTimeDistributionDensity",
	def=function(
	             object, 
	             inputDistribution, 
	             times 
	){standardGeneric("getTransitTimeDistributionDensity")}
)
setGeneric (
	name= "getTimes",
	def=function(
	object){standardGeneric("getTimes")}
)
setGeneric (
	name= "getInitialValues",
	def=function(
	object){standardGeneric("getInitialValues")}
)
setGeneric ( 
	name= "getOutputFluxes",
	def=function
	(
	object 
  ,as.closures=F 
	){standardGeneric("getOutputFluxes")
	}
)
setGeneric ( 
	name= "getC",
	def=function(
	object 
  ,as.closures=F 
	){standardGeneric("getC")
	}
)
setGeneric( 
	name= "getParticleMonteCarloSimulator",
	def=function
	(object 
	){standardGeneric("getParticleMonteCarloSimulator")
	 }
)
setGeneric ( 
	name= "getReleaseFlux",
  valueClass='matrix',
	def=function
	(
	object 
	){standardGeneric("getReleaseFlux")
	}
)
setGeneric ( 
	name= "getAccumulatedRelease",
	def=function
	(object 
	){standardGeneric("getAccumulatedRelease")
	 }
)
setGeneric ( 
	name= "getC14",
	def=function(
	object
	){standardGeneric("getC14")}
)
setGeneric ( 
	name= "getCumulativeC",
	def=function(
	object
	){standardGeneric("getCumulativeC")}
)
setGeneric ( 
	name= "getF14",
	def=function(
	object
	){standardGeneric("getF14")}
)
setGeneric ( 
	name= "getReleaseFlux14",
	def=function(
	object
	){standardGeneric("getReleaseFlux14")}
)
setGeneric ( 
  name= "getF14R",
  def=function(
	 object
	 ){standardGeneric("getF14R")}
  )
setGeneric ( 
  name= "getF14C",
  def=function(
	 object
	 ){standardGeneric("getF14C")}
  )
setGeneric(
	 name="getTimeRange",
	 def=function(object){
	     standardGeneric("getTimeRange")
	 }
)
setGeneric(
	 name="getFunctionDefinition",
	 def=function(object){
	     standardGeneric("getFunctionDefinition")
	 }
)
setGeneric(
	 name="getNumberOfPools",
	 def=function(object){
	     standardGeneric("getNumberOfPools")
	 }
)
setGeneric(
	 name="getOutputReceivers",
	 def=function(object,i){
	     standardGeneric("getOutputReceivers")
	 }
)
setGeneric(
	 name="getDecompOp",
	 def=function(object){
	     standardGeneric("getDecompOp")
	 }
)
setGeneric(
	 name="getInFluxes",
	 def=function(object){
	     standardGeneric("getInFluxes")
	 }
)
setGeneric(
	 name="availableParticleProperties",
	 def=function(object){
	     standardGeneric("availableParticleProperties")
	 }
)
setGeneric(
	 name="availableParticleSets",
	 def=function(object){
	     standardGeneric("availableParticleSets")
	 }
)
setGeneric(
	 name="availableResidentSets",
	 def=function(object){
	     standardGeneric("availableResidentSets")
	 }
)
setGeneric(
	 name="computeResults",
	 def=function(object){
	     standardGeneric("computeResults")
	 }
)
setGeneric(
	 name="getDotOut",
	 def=function(object){
	     standardGeneric("getDotOut")
	 }
)
setGeneric(
	 name="getTransferMatrix",
	 def=function(object){
	     standardGeneric("getTransferMatrix")
	 }
)
setGeneric(
	 name="getTransferCoefficients",
	 def=function(object){
	     standardGeneric("getTransferCoefficients")
	 }
)
setGeneric(
	 name="getTransferCoefficients",
	 def=function(object,as.closures=F){
	     standardGeneric("getTransferCoefficients")
	 }
)
setGeneric(
	 name="TimeMap",
	 def=function 
	 (
	   map,
	   starttime,
	   endtime,
     times,
     data,
	   lag=0,                  
	   interpolation=splinefun 
     )
	 {
	     standardGeneric("TimeMap")
	 }
)
setGeneric(
	 name="BoundFc",
	 def=function 
	 (
      format,
      ...
   )
	 {
	     standardGeneric("BoundFc")
	 }
)
setGeneric(
	 name="UnBoundInFlux",
	 def=function 
	 (map)
	 {
	     standardGeneric("UnBoundInFlux")
	 }
)
setGeneric(
	 name="ConstInFlux",
	 def=function 
	 (
	   map
	  )
	 {
	     standardGeneric("ConstInFlux")
	 }
)
setGeneric(
	 name="GeneralDecompOp",
	 def=function 
	 (object)
	 {
	     standardGeneric("GeneralDecompOp")
	 }
)
setGeneric(
	 name="InFlux",
	 def=function 
	 (object)
	 {
	     standardGeneric("InFlux")
	 }
)
setGeneric(
	 name="ConstLinDecompOp",
	 def=function 
	 (mat,internal_flux_rates,out_flux_rates,numberOfPools)
	 {
	     standardGeneric("ConstLinDecompOp")
	 }
)
setGeneric(
	 name="UnBoundLinDecompOp",
	 def=function 
	 (matFunc)
	 {
	     standardGeneric("UnBoundLinDecompOp")
	 }
)
setGeneric(
	 name="BoundLinDecompOp",
	 def=function 
	 (
    map,
    ...
   )
	 {
	     standardGeneric("BoundLinDecompOp")
	 }
)
setGeneric(
	 name="add_plot",
	 def=function 
	 (
    x,
    ...
   )
	 {
	     standardGeneric("add_plot")
	 }
)
setGeneric(
	 name="getSrcDim",
	 def=function  
	 (
    obj
   )
	 {
	     standardGeneric("getSrcDim")
	 }
)
setGeneric(
	 name="PoolIndex",
	 def=function  
	 (i) {
	     standardGeneric("PoolIndex")
	 }
)
setGeneric(
	 name="ConstantInternalFluxRate",
	 def=function  
	 (
     source
    ,destination
    ,src_to_dest
    ,rate_constant
   )
	 {
	     standardGeneric("ConstantInternalFluxRate")
	 }
)
setGeneric(
	 name="ConstantOutFluxRate",
	 def=function  
	 (
     source
    ,rate_constant
   )
	 {
	     standardGeneric("ConstantOutFluxRate")
	 }
)