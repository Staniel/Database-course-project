// $(document).ready(function() {
// 	$("#like").click(function(){
// 		console.log(1);
// 		$.ajax({
//             url: $("#like").attr("action"),
//             type: "POST",
//             data: {'csrfmiddlewaretoken': $("#like").attr("value")},
//             success: function(data) {
//             	location.reload();
//             },
//             error: function(jqXHR, textStatus, errorThrown) {
//                 alert("error: "+jqXHR.responseText);
//             }
//         });
// 	})
// 	$("#unlike").click(function(){
// 		console.log(3);
// 		$.ajax({
//             url: $("#unlike").attr("action"),
//             type: "POST",
//             data: {'csrfmiddlewaretoken': $("#unlike").attr("value")},
//             success: function(data) {
//             	location.reload();
//             },
//             error: function(jqXHR, textStatus, errorThrown) {
//                 alert("error: "+jqXHR.responseText);
//             }
//         });
// 	})
// 	$("#watch").click(function(){
// 		var data = {'csrfmiddlewaretoken': $("#watch").attr('value')};
// 		console.log(data);
// 		$.ajax({
//             url: $("#watch").attr("action"),
//             type: "POST",
//             data: data,
//             success: function(data) {
//             	location.reload();
//             },
//             error: function(jqXHR, textStatus, errorThrown) {
//                 alert("error: "+jqXHR.responseText);
//             }
//         });
// 	})

// 	$("#unwatch").click(function(){
// 		console.log(4);
// 		$.ajax({
//             url: $("#unwatch").attr("action"),
//             type: "POST",
//             data: {'csrfmiddlewaretoken': $("#unwatch").attr("value")},
//             success: function(data) {
//             	location.reload();
//             },
//             error: function(jqXHR, textStatus, errorThrown) {
//                 alert("error: "+jqXHR.responseText);
//             }
//         });
// 	})
// })