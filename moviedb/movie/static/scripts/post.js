function csrfSafeMethod(method) {
    // these HTTP methods do not require CSRF protection
    return (/^(GET|HEAD|OPTIONS|TRACE)$/.test(method));
}

$(document).ready(function() {
	// post list
	$('#new-post').click(function() {
		$('#new-post-modal').modal('show');
	});

	$('#new-post-submit').click(function() {
		$('#new-post-submit').attr('disabled', 'disabled');
		var title = $('#new-post-title').val();
		var content = $('#new-post-content').val();
		$.ajax({
			type: "POST",
			url: "add/",
			data: {
				title: title,
				content: content,
			},
			beforeSend: function(xhr, settings) {
				var csrftoken = $.cookie('csrftoken');
				if (!csrfSafeMethod(settings.type) && !this.crossDomain) {
					xhr.setRequestHeader("X-CSRFToken", csrftoken);
				}
			},
			success: function() {
				$('#new-post-modal .modal-footer div').show();
				$('#new-post-title').val('');
				$('#new-post-content').val('');
				setTimeout(function() {
					$('#new-post-modal .modal-footer div').hide();
					$('#new-post-modal').modal('hide');
					window.location.replace("");
				}, 1000);
			},
			error: function(data) {
				alert('Post Failed!');
				$('#new-post-submit').removeAttr('disabled');
			}
		});
		
	});

	$('#postlist li').mouseover(function(e) {
		$(this).find('.remove-button').show();
	});

	$('#postlist li').mouseout(function(e) {
		$(this).find('.remove-button').hide();
	});

	// post
	$('#modify-post').click(function() {
		$('#modify-post-modal').modal('show');
	});

	$('#modify-post-submit').click(function() {
		$('#modify-post-submit').attr('disabled', 'disabled');
		var title = $('#modify-post-title').val();
		var content = $('#modify-post-content').val();
		var id = $('#post-detail div:last').text();
		$.ajax({
			type: "POST",
			url: "/discuss/post/modify/" + id + "/",
			data: {
				title: title,
				content: content,
			},
			beforeSend: function(xhr, settings) {
				var csrftoken = $.cookie('csrftoken');
				if (!csrfSafeMethod(settings.type) && !this.crossDomain) {
					xhr.setRequestHeader("X-CSRFToken", csrftoken);
				}
			},
			success: function() {
				$('#modify-post-modal .modal-footer div').show();
				$('#modify-post-content').val('');
				setTimeout(function() {
					$('#modify-post-modal .modal-footer div').hide();
					$('#modify-post-modal').modal('hide');
					window.location.replace("");
				}, 1000);
			},
			error: function(data) {
				alert('Comment Failed!');
				$('#modify-post-submit').removeAttr('disabled');
			}
		});
		
	});

	$('#new-comment').click(function() {
		$('#new-comment-modal').modal('show');
	});

	$('#new-comment-submit').click(function() {
		$('#new-comment-submit').attr('disabled', 'disabled');
		var content = $('#new-comment-content').val();
		var postid = parseInt($('#post-detail div:last').text());
		$.ajax({
			type: "POST",
			url: "/discuss/comment/add/",
			data: {
				post_belong_id: postid,
				content: content,
			},
			beforeSend: function(xhr, settings) {
				var csrftoken = $.cookie('csrftoken');
				if (!csrfSafeMethod(settings.type) && !this.crossDomain) {
					xhr.setRequestHeader("X-CSRFToken", csrftoken);
				}
			},
			success: function() {
				$('#new-comment-modal .modal-footer div').show();
				$('#new-comment-content').val('');
				setTimeout(function() {
					$('#new-comment-modal .modal-footer div').hide();
					$('#new-comment-modal').modal('hide');
					window.location.replace("");
				}, 1000);
			},
			error: function(data) {
				alert('Comment Failed!');
				$('#new-comment-submit').removeAttr('disabled');
			}
		});
		
	});

	$('#commentlist li').mouseover(function(e) {
		$(this).find('.remove-button').show();
	});

	$('#commentlist li').mouseout(function(e) {
		$(this).find('.remove-button').hide();
	});
});