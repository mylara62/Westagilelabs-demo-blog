$(document).ready(function(){
	$('.article-comment').keydown(function(event){ 
    var keyCode = (event.keyCode ? event.keyCode : event.which);   
    if (keyCode == 13) {
	    $.ajax({
	      url: '/comments',
	      method: 'POST',
	      data: {id: this.id, comment: this.value}
	    });
	    $(this).val("");
    }
	});

	$(".comment_reply_link").click(function(){
		comment_id = $(this).attr('data-commentid');
		id = $("#comment_reply_"+comment_id)
		if(id.css('display') == "none") { $("#comment_reply_"+comment_id).css('display', 'block') }
		else{ $("#comment_reply_"+comment_id).css('display', 'none') }
	});

	$('.comment-reply').keydown(function(event){ 
    var keyCode = (event.keyCode ? event.keyCode : event.which);   
    if (keyCode == 13) {
	    $.ajax({
	      url: '/replies',
	      method: 'POST',
	      data: {id: this.id, comment: this.value}
	    });
	    $(this).val("");
    }
	});

	$(".reply_comment_link").click(function(){
		reply_id = $(this).attr('data-replyid');
		id = $("#reply_comment_"+reply_id)
		if(id.css('display') == "none") { $("#reply_comment_"+reply_id).css('display', 'block') }
		else{ $("#reply_comment_"+reply_id).css('display', 'none') }
	});

	$('.reply-comment').keydown(function(event){ 
    var keyCode = (event.keyCode ? event.keyCode : event.which);   
    if (keyCode == 13) {
	    $.ajax({
	      url: '/reply_comments',
	      method: 'POST',
	      data: {id: this.id, comment: this.value}
	    });
	    $(this).val("");
    }
	});
});