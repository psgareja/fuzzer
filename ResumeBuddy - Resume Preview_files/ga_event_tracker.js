function ga_event_tracking(action, label) {
    ga('send', {
      hitType: 'event',
      eventCategory: 'Skill-CV',
      eventAction: action, 
      eventLabel: label
    });
}

/**
 * GA tracking for tabs on dahboard page
 **/
$("#myResume").click(function(e){
    ga_event_tracking('myResume_click', 'Label');
});
$("#myInfo").click(function(e){
    ga_event_tracking('myInfo_click', 'Label');
});
$("#resources-tab").click(function(e){
    ga_event_tracking('resources-tab_click', 'Label');
});
$("#myQues").click(function(e){
    ga_event_tracking('myQues_click', 'Label');
});
$("#subscription-tab").click(function(e){
    ga_event_tracking('subscription-tab_click', 'Label');
});

/**
 * GA tracking for READ-MORE button in resources tab
 **/
$(".read-more").click(function(e){
    var action = $(this).attr("id") + "_click";
    ga_event_tracking(action, 'Label');
});

/**
 * GA tracking fron header menu dropdown list
 **/
$(".header-menu-list-item").click(function(e){
    var action = $(this).attr("id") + "_click";
    ga_event_tracking(action, 'Label');
});

/**
 * GA tracking fron header menu dropdown list
 **/
$(document).ready(function() {
	$(".preview-click").click(function(e){
	    var action = $(this).attr("id") ;
	    ga_event_tracking(action, 'Label');
	})
});

function handleOutboundLinkClicks(event) {
  ga('send', 'event', {
    eventCategory: 'Outbound Link',
    eventAction: 'click',
    eventLabel: event.target.href
  });
}
