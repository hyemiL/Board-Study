var Commons = (function() {
	/**
 	 * 공통 ajax call 함수 
 	 * @param requestUrl
 	 * @param callback
 	 *
	 */
	 let ajaxGet = function(requestUrl, callback) {
		$.ajax({
			type : 'GET',
			url : requestUrl,
			cache : false,
			dataType : 'json',
			success : function(resp) {
				callback(resp);			
			},
			error : function(jqXHR, status, error) {
				console.log(jqXHR);
			}
		}).done(function() {
			
		});
	};
	
	let ajaxPost = function(requestUrl, params, callback) {
		$.ajax({
			type : 'POST',
			url : requestUrl,
			dataType : 'json',
			data : JSON.stringify(params),
			contentType : 'application/json',
			success : function(resp) {
				callback(resp);
			},
			error : function(jqXHR, status, error) {
				console.log(jqXHR);
			}
		})
	}
	
	let test = function() {
		console.log("test");
	}
	
	
	return {
		ajaxGet : ajaxGet,
		ajaxPost : ajaxPost,
		test : test
	}
	

})();