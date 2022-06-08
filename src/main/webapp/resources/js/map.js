/**
 * 
 */
var mapService = (function () {
	
	
	var getList = function (callback, error) {
        /*console.log(url)
        console.log("getList()......")*/
		var url = "/map/place"
        $.ajax({
            url : url,
            type : "get",
            dataType : "json",
            async : false,
            success : function (result, status, xhr) {
                if(callback) {
                    callback(result);
                }
            },
            error : function (xhr, status, er) {
                if(error) {
                    error(er);
                }
            }
            
        })
    }
	 return { 
		 getList : getList,
	 };
})()