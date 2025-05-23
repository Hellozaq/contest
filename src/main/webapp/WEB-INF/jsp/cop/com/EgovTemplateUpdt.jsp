<%--
  Class Name : EgovTemplateUpdt.jsp
  Description : 템플릿 속성 수정화면
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2009.03.18   이삼섭          최초 생성
     2011.08.31  JJY       경량환경 버전 생성
 
    author   : 공통서비스 개발팀 이삼섭
    since    : 2009.03.18
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="<c:url value='/'/>css/base.css">
	<link rel="stylesheet" href="<c:url value='/'/>css/layout.css">
	<link rel="stylesheet" href="<c:url value='/'/>css/component.css">
	<link rel="stylesheet" href="<c:url value='/'/>css/page.css">
	<script src="<c:url value='/'/>js/jquery-1.11.2.min.js"></script>
	<script src="<c:url value='/'/>js/ui.js"></script>

<script type="text/javascript" src="<c:url value="/validator.do"/>"></script>
<validator:javascript formName="templateInf" staticJavascript="false" xhtml="true" cdata="false"/>
<script type="text/javascript">
	function fn_egov_update_tmplatInfo() {
		if (!validateTemplateInf(document.templateInf)){
			return;
		}
		
		if (confirm('<spring:message code="common.update.msg" />')) {
			document.templateInf.action = "<c:url value='/cop/com/updateTemplateInf.do'/>";
			document.templateInf.submit();
		}
	}
	
	function fn_egov_select_tmplatInfo() {
		document.templateInf.action = "<c:url value='/cop/com/selectTemplateInfs.do'/>";
		document.templateInf.submit();	
	}
	
	function fn_egov_selectTmplatType(obj) {
		if (obj.value == 'TMPT01') {
			document.getElementById('sometext').innerHTML = "게시판 템플릿은 CSS만 가능합니다.";
		} else if (obj.value == '') {
			document.getElementById('sometext').innerHTML = "";
		} else {
			document.getElementById('sometext').innerHTML = "템플릿은 JSP만 가능합니다.";
		}		
	}

	function fn_egov_previewTmplat() {
        var frm = document.templateInf;
        
        var url = frm.tmplatCours.value;

        var target = "";
        var width = "";

        if (frm.tmplatSeCode.value == 'TMPT01') {
            target = "<c:url value='/cop/bbs/previewBoardList.do'/>";
            width = "1024";
        } else {
            alert('<spring:message code="cop.tmplatCours" /> 지정 후 선택해 주세요.');
        }

        if (target != "") {
            window.open(target + "?searchWrd="+url, "preview", "width=" + width + "px, height=800px;");
        }
    }
</script>
<title>샘플 포털 > 포털서비스관리 > 서비스관리 > 게시판템플릿관리</title>

<style type="text/css">
	h1 {font-size:12px;}
	caption {visibility:hidden; font-size:0; height:0; margin:0; padding:0; line-height:0;}
</style>


</head>
<body onload="fn_egov_selectTmplatType(document.templateInf.tmplatSeCode)">

    <!-- Skip navigation -->
    <a href="#contents" class="skip_navi">본문 바로가기</a>

    <div class="wrap">
        <!-- header start -->
	    <c:import url="/sym/mms/EgovHeader.do" />
	    <!-- //header end -->

        <div class="container">
            <div class="sub_layout">
                <div class="sub_in">
                    <div class="layout">
                        <!-- Left menu -->
	                    <c:import url="/sym/mms/EgovMenuLeft.do" />
	                    <!--// Left menu -->
        
                        <div class="content_wrap">
                            <div id="contents" class="content">
                                 <!-- Location -->
                                <div class="location">
                                    <ul>
                                        <li><a class="home" href="">Home</a></li>
                                        <li><a href="">포털서비스관리</a></li>
                                        <li><a href="">서비스관리</a></li>
                                        <li>게시판템플릿관리</li>
                                    </ul>
                                </div>
                                <!--// Location -->

								<form:form modelAttribute="templateInf" name="templateInf" method="post" >
								<input type="hidden" name="pageIndex" value="<c:out value='${searchVO.pageIndex}'/>" />
								<input name="tmplatNm" type="hidden" value='<c:out value="${TemplateInfVO.tmplatNm}"/>' />

                                <h1 class="tit_1">포털서비스관리</h1>

                                <p class="txt_1">포털시스템에서 제공되는 서비스들에 대한 컨텐츠를 관리합니다.</p>

                                <h2 class="tit_2">서비스관리</h2>
                                
                                <h3 class="tit_3">게시판템플릿관리</h3>

                                <div class="board_view2">
                                    <table>
                                        <colgroup>
                                            <col style="width: 190px;">
                                            <col style="width: auto;">
                                        </colgroup>
                                        <tr>
                                            <td class="lb">
                                                <span class="min"><spring:message code="cop.tmplatNm" /></span><!-- 템플릿 명 -->
                                            </td>
                                            <td>
                                            	<input name="tmplatId" type="hidden" size="60" value='<c:out value="${TemplateInfVO.tmplatId}"/>' maxlength="60" >
                                            	<c:out value="${TemplateInfVO.tmplatNm}"/>
                                            	<br/><form:errors path="tmplatId" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lb">
                                                <label for="tmplatSeCode"><spring:message code="cop.tmplatSeCode" /></label><!-- 템플릿 구분 -->
                                                <span class="req">필수</span>
                                            </td>
                                            <td>
                                                <label class="f_select" for="tmplatSeCode">
                                                    <select id="tmplatSeCode" name="tmplatSeCode" class="select" onchange="fn_egov_selectTmplatType(this)">
                                                        <option selected value=''>--선택하세요--</option>
                                                        <c:forEach var="result" items="${resultList}" varStatus="status">
                                                        	<option value='<c:out value="${result.code}"/>' <c:if test="${TemplateInfVO.tmplatSeCode == result.code}">selected="selected"</c:if> ><c:out value="${result.codeNm}"/></option>
                                                        </c:forEach>
                                                 </select>
                                                </label>
                                                <span class="f_txt_inner ml15">게시판 템플릿은 CSS만 가능합니다.</span>
                                                <form:errors path="tmplatSeCode" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lb">
                                                <label for="tmplatCours"><spring:message code="cop.tmplatCours" /></label><!-- 템플릿 경로 -->
                                                <span class="req">필수</span>
                                            </td>
                                            <td>
                                                <input id="tmplatCours" class="f_txt w_full" name="tmplatCours" type="text" size="60" value='<c:out value="${TemplateInfVO.tmplatCours}"/>' maxlength="60">
                                                <br/><form:errors path="tmplatCours" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lb">
                                            	<spring:message code="cop.useAt" /><!-- 사용여부 -->
                                                <span class="req">필수</span>
                                            </td>
                                            <td class="rdoSet"><!-- 2개이상 radio 있을때 필요 -->
                                                <label for="rdo1" class="mr30 <c:if test="${TemplateInfVO.useAt == 'Y'}"> on</c:if>">
                                                    <input id="rdo1" type="radio" name="useAt" class="radio2" value="Y" <c:if test="${TemplateInfVO.useAt == 'Y'}"> checked="checked"</c:if>>
                                                    Y
                                                </label>
                                                <label for="rdo2" class="<c:if test="${TemplateInfVO.useAt == 'N'}"> on</c:if>">
                                                    <input id="rdo2" type="radio" name="useAt" class="radio2" value="N" <c:if test="${TemplateInfVO.useAt == 'N'}"> checked="checked"</c:if>>
                                                    N
                                                </label>
                                            </td>
                                        </tr>
                                    </table>
                                </div>

								<!-- 목록/저장버튼  시작-->
                                <div class="board_view_bot">
                                    <div class="left_col btn3">
                                        <a href="#LINK" class="btn btn_skyblue_h46 w_100" onclick="javascript:fn_egov_previewTmplat(); return false;"><spring:message code="cop.preview" /></a><!-- 미리보기 -->
                                    </div>

                                    <div class="right_col btn1">
                                        <a href="#LINK" class="btn btn_blue_46 w_100" onclick="javascript:fn_egov_update_tmplatInfo(); return false;"><spring:message code="button.save" /></a><!-- 저장 -->
                                        <a href="<c:url value='/cop/com/selectTemplateInfs.do'/>" class="btn btn_blue_46 w_100" onclick="javascript:fn_egov_select_tmplatInfo(); return false;"><spring:message code="button.list" /></a><!-- 목록 -->
                                    </div>
                                </div>
                                <!-- 목록/저장버튼  끝-->
                                
                                </form:form>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- footer 시작 -->
	    <c:import url="/sym/mms/EgovFooter.do" />
	    <!-- //footer 끝 -->
    </div>
    
</body>
</html>