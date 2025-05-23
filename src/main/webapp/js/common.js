$(document).ready(function () {
	//loadLayout();
	//setViewport();
	initFunctions();
	setUserAgent();

	// nav menu click event
	$('.nav-button').on('click', function(e) {
		e.stopPropagation();
		const $item = $(this).closest('.nav-item');
		$('.nav-item').not($item).removeClass('open'); // 다른 메뉴 닫기
		$item.toggleClass('open');
	});

	$(document).on('click', function() {
		$('.nav-item, .has-submenu').removeClass('open');
	});

	// form - file input
	$('#file').on('change', function () {
		const fileName = this.files.length > 0 ? this.files[0].name : '선택된 파일 없음';
		$('.f_file_name').text(fileName);
	});

	// star rating
	$('.star-rating .star').on('click', function () {
		const $wrap = $(this).closest('.star-rating');
		if ($wrap.data('editable') !== true && $wrap.data('editable') !== 'true') return;

		const selected = $(this).data('value');
		$wrap.attr('data-rating', selected);
		$('#rating-value').text(selected);
	});
});

/* Header & Footer 로드 */
function loadLayout(){
	if($("#header-wrap").length){
		$("#header-wrap").load("../include/header.html", function () {
			console.log("Header Loaded!");
			if($("#footer").length) {
				$("#footer").load("../include/footer.html", function () {
					console.log("Footer Loaded!");
					initFunctions();
				});
			}else{
				initFunctions();
			}
		});
	}else{
		initFunctions();
	}
}

/* 공통 기능 초기화 */
function initFunctions() {
	initGnb();
	initCounter();
}

function initGnb(){
	const $header = $('#header');
	$header.find('#primary-menu-trigger').on('click', function(){
		$header.toggleClass("primary-menu-open");
		$( '#primary-menu > ul, #primary-menu > div > ul' ).toggleClass('d-block');
	})

	/* 하위 메뉴 */
	$( '#primary-menu ul li:has(ul)' ).addClass('sub-menu');

	$('#primary-menu li:has(ul)').hover(function(){
		const $menu = $(this).find('ul');
		$menu.stop(true, true).css('display', 'block').animate({ opacity: 1 }, 200);
	}, function(){
		const $menu = $(this).find('ul');
		$menu.stop(true, true).animate({ opacity: 0 }, 200, function () {
			$menu.css('display', 'none');
		});
	})

	$('#primary-menu li:has(ul) > a').on( 'click touchend', function(e){
		$(this).parents('.sub-menu').siblings().find('ul,.mega-menu-content').removeClass('d-block');
		$(this).parent('li').children('ul,.mega-menu-content').toggleClass('d-block');
		e.preventDefault();
	});

	/* 로그인 메뉴 */
	$('#primary-menu-con > .login-menu-con').hover(
		function () {
			const $menu = $(this).find('.mem-menu');
			$menu.stop(true, true).css('display', 'block').animate({ opacity: 1 }, 200);
		},
		function () {
			const $menu = $(this).find('.mem-menu');
			$menu.stop(true, true).animate({ opacity: 0 }, 200, function () {
				$menu.css('display', 'none');
			});
		}
	);
}

function initCounter(){
	$('.counter').each(function() {
		var $counter = $(this),
			$countEl = $counter.find('span'),
			counterSpeed = $countEl.data('speed') || 3000,
			refreshInterval = $countEl.data('refresh-interval') || 50,
			useComma = $countEl.data('comma') === true || $countEl.data('comma') === 'true';

		$counter.appear(function() {
			if (!$counter.hasClass('counted')) {
				$countEl.countTo({
					from: $countEl.data('from') || 0,
					to: $countEl.data('to') || 0,
					speed: parseInt(counterSpeed),
					refreshInterval: parseInt(refreshInterval),
					formatter: function (value, options) {
						if (useComma) {
							return value.toFixed(0).replace(/\B(?=(\d{3})+(?!\d))/g, ",");
						} else {
							return value.toFixed(0);
						}
					}
				});
				$counter.addClass('counted');
			}
		}, {accX: 0, accY: -120}, 'easeInCubic');
	});
}

/* 뷰포트 설정 */
function setViewport() {
	if( $(window).width() <= 480 ) {
		var ww = ( document.documentElement.clientWidth < window.screen.width ) ? $(window).width() : window.screen.width;
		var mw = 480;
		var ratio = ww / mw;
		$('meta[name="viewport"]').attr( 'content', 'width=' + mw + ', initial-scale=' + ratio + ', user-scalable=no' );
	} else {
		$('meta[name="viewport"]').attr( 'content', 'width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no' );
	}
}

function setUserAgent() {
	const ua = navigator.userAgent.toLowerCase();

	const isAndroid = ua.includes('android');
	const isIPhone = ua.includes('iphone');
	const isIPod = ua.includes('ipod');

	// 핵심 iPad 감지 로직
	const isIPad = ua.includes('ipad') ||
		(ua.includes('macintosh') && 'ontouchend' in document);

	const isIOS = isIPhone || isIPod || isIPad;

	const isWindows = ua.includes('windows nt');
	const isMacReal = ua.includes('macintosh') && !('ontouchend' in document);

	const device = (isAndroid || isIOS) ? 'mobile' : 'pc';

	let os = 'etc';
	if (isAndroid) os = 'aos';
	else if (isIOS) os = 'ios';
	else if (isWindows) os = 'windows';
	else if (isMacReal) os = 'mac';

	$('body').attr('data-device', device).attr('data-os', os);
}


