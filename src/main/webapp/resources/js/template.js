/*** Layout **/
$(function(){
	/* GNB */

	var gnb = $('#gnb');
	var gnb_m = $('#gnb .dep_m');
	var gnb_dep = $('#gnb .dep');
	var gnb_dep2 = $('#gnb .dep2');
    
	gnb_m.bind('mouseover focusin',function(){
		gnb_m.removeClass('over');
		gnb_dep.removeClass('over');
		$(this).addClass('over');
		$(this).closest('.dep').addClass('over');
	});
	gnb_dep2.bind('mouseover',function(){
        gnb_m.removeClass('over');
		$(this).closest('.dep').find('.dep_m').addClass('over');
	});
	gnb_dep2.bind('mouseout',function(){
		 gnb_m.removeClass('over');
	});
	gnb_dep.mouseleave(function(){
		gnb_close();
	});
	$('h1, .ad_info, .ad_info a').bind('mouseover focusin',function(){
		gnb_close();
	});
	function gnb_close(){
		gnb_m.removeClass('over');
		gnb_dep.removeClass('over');
		gnb_dep2.removeClass('over');
	}
});



/* Form */
$(function(){
	if($("input[type='checkbox']").length > 0){
		$("input[type='checkbox']").ezMark(); //checkbox
	}
	if($("input[type='radio']").length > 0){
		$("input[type='radio']").ezMark(); //radio
	}
});


/*** Common ***/
$(function(){
	$('.btn_box_view').click(function(){
		var tar = $(this).closest('.txt_box_view');
		var foldingChk = tar.hasClass('on');
		if (foldingChk){
			tar.removeClass('on');
		} else {
			tar.addClass('on');
		}
		return false;
	});
});



/* datepicker */
$(function(){
	$('.select_date').datepicker({
		//showOn: "both", // 버튼과 텍스트 필드 모두 캘린더를 보여준다.
		//showOn: "button",
		buttonImage:false, // 버튼 이미지
		buttonImageOnly: false, // 버튼에 있는 이미지만 표시한다.
		dateFormat: 'yy-mm-dd',
		prevText: '이전 달',
		nextText: '다음 달',
		monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		dayNames: ['(일)','(월)','(화)','(수)','(목)','(금)','(토)'],
		dayNamesShort: ['일','월','화','수','목','금','토'],
		dayNamesMin: ['일','월','화','수','목','금','토'],
		showMonthAfterYear: true,
		changeMonth : true,
		changeYear : true,
		yearSuffix: '년',
		buttonText: "달력보기",
		//minDate: new Date(),
	});
	$('input.select_date').click(function(){
		$(this).datepicker('show');
	});
});
	