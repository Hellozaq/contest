<%--
  Class Name : EgovQnaAnswerListInqire.jsp
  Description : EgovQnaAnswerListInqire 화면
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
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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

<script type="text/javaScript" language="javascript">

/*********************************************************
 * 초기화
 ******************************************************** */
function fn_egov_initl_qnaanswerlist(){

	// 첫 입력란에 포커스..
	document.QnaAnswerListForm.searchKeyword.focus();
	
}

/*********************************************************
 * 페이징 처리 함수
 ******************************************************** */
function fn_egov_select_linkPage(pageNo){
	
	document.QnaAnswerListForm.pageIndex.value = pageNo;
	document.QnaAnswerListForm.action = "<c:url value='/uss/olh/qnm/QnaAnswerListInqire.do'/>";
   	document.QnaAnswerListForm.submit();
   	
}

/*********************************************************
 * 조회 처리 함수
 ******************************************************** */
function fn_egov_search_qnacnanswer(){

	document.QnaAnswerListForm.pageIndex.value = 1;
	document.QnaAnswerListForm.submit();
	
}

/*********************************************************
 * 등록 처리 함수
 ******************************************************** */
function fn_egov_regist_qnaanswercn(){
				
	document.QnaAnswerListForm.action = "<c:url value='/uss/olh/qnm/QnaAnswerCnRegistView.do'/>";
	document.QnaAnswerListForm.submit();	
	
}

/* ********************************************************
 * 상세회면 처리 함수
 ******************************************************** */
function fn_egov_inquire_qnaanswerdetail(qaId) {		

	// Q&A ID 셋팅.
	document.QnaAnswerListForm.qaId.value = qaId;	
    document.QnaAnswerListForm.action = "<c:url value='/uss/olh/qnm/QnaAnswerDetailInqire.do'/>"; 
  	document.QnaAnswerListForm.submit();	
	   	   		
}

</script>
</head>
<body>

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

                                <h1 class="tit_1">포털서비스관리</h1>

                                <p class="txt_1">포털시스템에서 제공되는 서비스들에 대한 컨텐츠를 관리합니다.</p>

                                <h2 class="tit_2">서비스관리</h2>

                                <h3 class="tit_3">QnA답변관리</h3>

                                <!-- 검색조건 -->
                                <div class="condition">
                                
                                	<form name="QnaAnswerListForm" action="<c:url value='/uss/olh/qnm/QnaAnswerListInqire.do'/>" method="post">
                                        <div class="condition_inner">
                                            <label class="item f_select" for="sel1">
                                                <select id="sel1" name="searchCondition" class="select" title="조회조건 선택">
                                                    <option selected value=''>선택하세요</option>
                                                    <option value="wrterNm" <c:if test="${searchVO.searchCondition == 'wrterNm'}">selected="selected"</c:if> >작성자명</option>
                                                    <option value="qnaProcessSttusCodeNm" <c:if test="${searchVO.searchCondition == 'qnaProcessSttusCodeNm'}">selected="selected"</c:if> >진행상태</option>
                                                </select>
                                            </label>

                                            <span class="item f_search">
                                                <input class="f_input w_500" name="searchKeyword" type="text" value='<c:out value="${searchVO.searchKeyword}"/>' maxlength="35" title="검색어 입력">
                                                <button class="btn" type="submit" onclick="fn_egov_search_qnacnanswer(); return false;">조회</button><!-- 조회 -->
                                            </span>

                                            <input name="qaId" type="hidden" value="">
                                            <input name="passwordConfirmAt" type="hidden" value="">
                                            <input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>"/>
                                        </div>
                                    </form>
                                    
                                </div>
                                <!--// 검색조건 -->

                                <!-- 게시판 -->
                                <div class="board_list">
                                    <table summary="Q&amp;A에 대한 답변목록을 제공합니다.">
                                    	<caption>답변목록</caption>
                                        <colgroup>
                                            <col style="width: 70px;">
                                            <col style="width: auto;">
                                            <col style="width: 120px;">
                                            <col style="width: 120px;">
                                            <col style="width: 120px;">
                                            <col style="width: 120px;">
                                        </colgroup>
                                        <thead>
                                            <tr>
                                                <th scope="col">순번</th>
                                                <th scope="col">질문제목</th>
                                                <th scope="col">작성자</th>
                                                <th scope="col">진행상태</th>
                                                <th scope="col">조회수</th>
                                                <th scope="col">작성일자</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        	
                                        	<c:if test="${fn:length(resultList) == 0}">
                                        	<tr>
                                        		<td colspan="6"><spring:message code="common.nodata.msg" /></td>
                                        	</tr>
                                        	</c:if>
                                        	
                                        	<c:forEach items="${resultList}" var="resultInfo" varStatus="status">
                                            <tr>
                                                <td><c:out value="${paginationInfo.totalRecordCount+1 - ((searchVO.pageIndex-1) * searchVO.pageSize + status.count)}"/></td>
                                                <td class="al">
                                                	<a href="<c:url value='/uss/olh/qnm/QnaAnswerDetailInqire.do'/>?qaId=${resultInfo.qaId}&amp;pageIndex=${searchVO.pageIndex}" class="lnk" onclick="fn_egov_inquire_qnaanswerdetail('<c:out value="${resultInfo.qaId}"/>'); return false;">
                                                		<c:out value="${resultInfo.qestnSj}"/>
                                                	</a>
                                                </td>
                                                <td><c:out value="${resultInfo.wrterNm}"/></td>
                                                <td><c:out value="${resultInfo.qnaProcessSttusCodeNm}"/></td>
                                                <td><c:out value="${resultInfo.rdcnt}"/></td>
                                                <td><c:out value='${fn:substring(resultInfo.writngDe, 0,4)}'/>-<c:out value='${fn:substring(resultInfo.writngDe, 4,6)}'/>-<c:out value='${fn:substring(resultInfo.writngDe, 6,8)}'/></td>
                                            </tr>
                                            </c:forEach>
                                            
                                        </tbody>
                                    </table>
                                </div>

								<!-- 페이징 -->
                                <div class="board_list_bot">
                                    <div class="paging" id="paging_div">
                                        <ul>
                                            <ui:pagination paginationInfo = "${paginationInfo}" type="image" jsFunction="fn_egov_select_linkPage" />
                                        </ul>
                                    </div>
                                </div>
                                <!-- // 페이징 끝 -->
                                <!--// 게시판 -->
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