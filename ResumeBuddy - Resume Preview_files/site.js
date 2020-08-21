$(document).ready(function () {
    $('#eventCarousel').carousel({
        // interval: 10000
        interval: false
    })
});

$(".select-examn-row-item").hover(
    function() {
    }, function() {
        if(!$(this).hasClass('clicked') ){
            $(this).removeClass('hovered');
        }
    }
);

$(".select-examn-row-item").click(function(e){
    e.preventDefault(); 
    e.stopPropagation;
    $('.clicked:not(:hover)').removeClass('clicked hovered');
    $(this).addClass('clicked');
});


$("#chooselevelform-level").addClass('col-sm-12');

function addProgress(element)
{
	var styleText = "";
	var id = "";
	if (element == undefined)
	{
		element = $('body');
		styleText = "position:fixed;";
		id = "amcat-body-overlay";
	}

	//element.append('<div class="overlay" style=styleText><i class="fa fa-refresh fa-spin overlay-icon"></i></div>');
	element.append ('<div class="overlay" id='+id+' style='+styleText+'>'+waitingImage+' </div>');
}

function removeProgress(element)
{
	if (element == undefined)
	{
		element = $('body');
		element.find('#amcat-body-overlay').remove();
		return;
	}
	element.children().last().remove();
}

/* for appending dark overlay in body tag */
function addDarkOverlay(element)
{
	var styleText = "";
	var id = "";
	if (element == undefined)
	{
		element = $('body');
		styleText = "position:fixed;";
		id = "amcat-grey-overlay";
	}
	element.prepend ('<div class="grey-overlay" id='+id+' style='+styleText+'></div>');
}

/* for removing dark overlay in body tag */
function removeDarkOverlay(element)
{
	if (element == undefined)
	{
		element = $('body');
		element.find('#amcat-grey-overlay').remove();
		return;
	}
	element.children().last().remove();
}