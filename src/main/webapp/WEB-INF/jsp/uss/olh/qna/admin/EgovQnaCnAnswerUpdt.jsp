<%--
  Class Name : EgovQnaCnAnswerUpdt.jsp
  Description : EgovQnaCnAnswerUpdt 화면
  Modification Information
 
      수정일         수정자                   수정내용
    -------    --------    ---------------------------
     2009.02.01   박정규          최초 생성
     2011.08.31  JJY       경량환경 버전 생성
 
    author   : 공통서비스개발팀 박정규
    since    : 2009.02.01
--%>
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>샘플 포털 > 포털서비스관리 > 서비스관리 > QnA답변관리</title>
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
<validator:javascript formName="qnaManageVO" staticJavascript="false" xhtml="true" cdata="false"/>

<script type="text/javaScript" language="javascript">

/* ********************************************************
 * 초기화
 ******************************************************** */
function fn_egov_initl_qnacnanswer(){

	// 첫 입력란에 포커스..
	qnaManageVO.answerCn.focus();
	
}

/* ********************************************************
 * 저장처리화면
 ******************************************************** */
function fn_egov_updt_qnacnanswer(form, qaId){

	// 서버사이드 테스트용
	/*	
		form.action = "<c:url value='/uss/olh/qnm/QnaCnAnswerUpdt.do'/>";
		form.submit(); 
		return;
	*/

	if (!validateQnaManageVO(form)) {
			
		return;
		
	} else {

	
		form.qaId.value = qaId;
		form.action = "<c:url value='/uss/olh/qnm/QnaCnAnswerUpdt.do'/>";
		form.submit();	
				
	}
		
}

/* ********************************************************
 * 목록 으로 가기
 ******************************************************** */
function fn_egov_inqire_qnaanswerlist() {

	qnaManageVO.action = "<c:url value='/uss/olh/qnm/QnaAnswerListInqire.do'/>";
	qnaManageVO.submit();
		
}

/* ********************************************************
 * 메일발송을 위한 화면을 호출
 ******************************************************** */
function fn_egov_pop_mailform() {
/*	
	var url 	= "<c:url value='/ems/insertSndngMailView.do'/>";	
	var	status 	= "width=640,height=480,top=200,left=200";

			
	window.open(url,'popup', status);
*/	 
}


</script>
</head>
<body onLoad="fn_egov_initl_qnacnanswer();">

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
                                        <li>QnA답변관리</li>
                                    </ul>
                                </div>
                                <!--// Location -->

								<form:form modelAttribute="qnaManageVO" name="qnaManageVO" action="${pageContext.request.contextPath}/uss/olh/qnm/QnaCnAnswerUpdt.do" method="post">
								
								<input name="qaId" type="hidden" value="<c:out value='${result.qaId}'/>">
								<input name="writngPassword" type="hidden" value="<c:out value='${result.writngPassword}'/>">

                                <h1 class="tit_1">포털서비스관리</h1>

                                <p class="txt_1">포털시스템에서 제공되는 서비스들에 대한 컨텐츠를 관리합니다.</p>

                                <h2 class="tit_2">서비스관리</h2>

                                <h3 class="tit_3">QnA답변관리</h3>

                                <div class="board_view2">
                                    <table summary="Q&amp;A에 대한 답변을 수정합니다.">
                                    	<caption>Q&amp;A답변수정</caption>
                                        <colgroup>
                                            <col style="width: 190px;">
                                            <col style="width: auto;">
                                        </colgroup>
                                        <tr>
                                            <td class="lb">
                                                <label for="wrterNm">작성자명</label>
                                                <span class="req">필수</span>
                                            </td>
                                            <td>
                                                <input id="wrterNm" class="f_txt" name="wrterNm" type="text" readonly value="<c:out value='${result.wrterNm}'/>" maxlength="20" title="작성자명">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lb">
                                                <label for="areaNo">전화번호</label>
                                            </td>
                                            <td>
                                                <input id="areaNo" class="f_txt w_80" name="areaNo" type="text" readonly value="<c:out value='${result.areaNo}'/>" maxlength="5" title="전화번호(지역)">
                                                <span class="f_txt_inner mr5 ml5" title="전화번호 첫번째">-</span>
                                                <input id="middleTelno" class="f_txt w_80" name="middleTelno" type="text" readonly value="<c:out value='${result.middleTelno}'/>" maxlength="5" title="전화번호(국번)">
                                                <span class="f_txt_inner mr5 ml5">-</span>
                                                <input id="endTelno" class="f_txt w_80" name="endTelno" type="text" readonly value="<c:out value='${result.endTelno}'/>" maxlength="5" title="전화번호(지번)">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lb">
                                                <label for="emailAdres">이메일</label>
                                            </td>
                                            <td>
                                                <input id="emailAdres" class="f_txt w_half" name="emailAdres" type="text" readonly value="<c:out value='${result.emailAdres}'/>" maxlength="30" title="이메일">
                                                <input type="hidden" name="emailAnswerAt" id="emailAnswerAt" value="N"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lb">
                                                <label for="qestnSj">질문제목</label>
                                                <span class="req">필수</span>
                                            </td>
                                            <td>
                                                <input id="qestnSj" class="f_txt w_full" name="qestnSj" type="text" readonly value="<c:out value="${result.qestnSj}"/>" maxlength="70" title="질문제목">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lb">
                                                <label for="qestnCn">질문내용</label>
                                                <span class="req">필수</span>
                                            </td>
                                            <td>
                                                <textarea id="qestnCn" class="f_txtar w_full h_200" name="qestnCn" class="textarea" cols="30" rows="10" readonly="readonly" title="질문내용"><c:out value="${result.qestnCn}"/></textarea>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lb">
                                            	<label for="qnaProcessSttusCode">진행처리상태</label>
                                                <span class="req">필수</span>
                                            </td>
                                            <td>
                                                <label class="f_select" for="qnaProcessSttusCode">
                                                    <select id="qnaProcessSttusCode" name="qnaProcessSttusCode" class="select" title="진행처리상태">
                                                        <c:forEach var="forResult" items="${resultList}" varStatus="status">
                                                       	<option value='<c:out value="${forResult.code}"/>' <c:if test="${forResult.code == result.qnaProcessSttusCode}">selected="selected"</c:if> >
                                                       		<c:out value="${forResult.codeNm}"/>
                                                       	</option>
                                                        </c:forEach> 
                                                    </select>
                                                </label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="lb">
                                                <label for="answerCn">답변내용</label>
                                                <span class="req">필수</span>
                                            </td>
                                            <td>
                                                <form:textarea id="answerCn" class="f_txtar w_full h_200" path="answerCn" cols="30" rows="10" title="답변내용"/>
                                                <form:errors path="answerCn"/>
                                            </td>
                                        </tr>
                                    </table>
                                </div>

								<!-- 목록/저장버튼  시작-->
                                <div class="board_view_bot">
                                    <div class="left_col btn3">
                                    </div>

                                    <div class="right_col btn1">
                                        <a href="#LINK" class="btn btn_blue_46 w_100" onclick="fn_egov_updt_qnacnanswer(document.qnaManageVO,'<c:out value="${result.qaId}"/>'); return false;">저장</a><!-- 저장 -->
                                        <a href="<c:url value='/uss/olh/qnm/QnaAnswerListInqire.do'/>" class="btn btn_blue_46 w_100" onclick="fn_egov_inqire_qnaanswerlist(); return false;"><spring:message code="button.list" /></a><!-- 목록 -->
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