<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html dir="ltr" lang="ko">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="author" content="SemiColonWeb" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="stylesheet" as="style" crossorigin href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.9/dist/web/static/pretendard.min.css" />
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">

    <!-- preload -->
    <link rel="preload" href="<c:url value='/'/>css/reset.css" as="style" onload="this.onload=null;this.rel='stylesheet'">
    <link rel="preload" href="<c:url value='/'/>css/styles.css" as="style" onload="this.onload=null;this.rel='stylesheet'">
    <link rel="preload" href="<c:url value='/'/>css/responsive.css" as="style" onload="this.onload=null;this.rel='stylesheet'">
    <link rel="preload" href="<c:url value='/'/>css/font-icons.css" as="style" onload="this.onload=null;this.rel='stylesheet'">
    <link rel="preload" href="<c:url value='/'/>css/sub.css" as="style" onload="this.onload=null;this.rel='stylesheet'">
    <link rel="stylesheet" href="<c:url value='/'/>css/sub-ios.css" type="text/css" media="all" />
    <link rel="preload" href="<c:url value='/'/>css/board.css" as="style" onload="this.onload=null;this.rel='stylesheet'">

    <!-- Document Title
    ============================================= -->
    <title>IBK시스템, AI 아이디어 챌린지 - QnA</title>

    <!-- favicon -->
    <link rel="icon" type="image/x-icon" href="<c:url value='/'/>images/favicon.ico">

<script type="text/javaScript" language="javascript">

/*********************************************************
 * 초기화
 ******************************************************** */
function fn_egov_initl_qnalist(){

	// 첫 입력란에 포커스..
	document.QnaListForm.searchKeyword.focus();
	
}

/*********************************************************
 * 페이징 처리 함수
 ******************************************************** */
function fn_egov_select_linkPage(pageNo){
	
	document.QnaListForm.pageIndex.value = pageNo;
	document.QnaListForm.action = "<c:url value='/uss/olh/qna/QnaListInqire.do'/>";
   	document.QnaListForm.submit();
   	
}

/*********************************************************
 * 조회 처리 함수
 ******************************************************** */
function fn_egov_search_qnacn(){

	document.QnaListForm.pageIndex.value = 1;
	document.QnaListForm.submit();
	
}

/*********************************************************
 * Q&A 등록화면 호출
 ******************************************************** */
function fn_egov_regist_cnsltcn(){

	document.QnaListForm.action = "<c:url value='/uss/olh/qna/QnaCnRegistView.do'/>";
	document.QnaListForm.submit();
		
}

/* ********************************************************
 * 상세회면 처리 함수
 ******************************************************** */
function fn_egov_inquire_qnadetail(qaId) {		

	// 사이트 키값(siteId) 셋팅.
	document.QnaListForm.qaId.value = qaId;	
//  document.QnaListForm.action = "<c:url value='/uss/olh/qna/QnaDetailInqire.do'/>";
  	document.QnaListForm.action = "<c:url value='/uss/olh/qna/QnaInqireCoUpdt.do'/>"; 
  	document.QnaListForm.submit();	
	   	   		
}

</script>
</head>
<body class="stretched">

    <!-- Document Wrapper
    ============================================= -->
    <div id="wrapper" class="clearfix">

        <!-- header start -->
        <c:import url="/sym/mms/ContHeader.do" />
	    <!-- //header end -->

        <!-- Content
    ============================================= -->
        <section id="content">
            <div class="sub-layout">
                <div class="sub-banner">
                    <div class="container">
                        <div class="sub-banner-title">
                            QnA
                        </div>
                    </div>
                </div>
                <nav class="nav-menu">
                    <div class="container">
                        <!-- Left menu -->
                        <c:import url="/sym/mms/ContMenuLeft.do" />
                        <!--// Left menu -->
                    </div>
                </nav>
            </div>
            <div class="content-wrap">
                <div class="container clearfix">
                    <!-- 검색조건 -->
                    <div class="condition">
                        <form name="QnaListForm" action="<c:url value='/uss/olh/qna/QnaListInqire.do'/>" method="post">
                            <div class="condition_inner">
                                <input type="hidden" name="ihidnum" value="">
                                <input type="hidden" name="realname" value="">

                                <input type="hidden" name ="nextUrlName" value="QA등록">
                                <input type="hidden" name ="nextUrl" value="/uss/olh/qna/QnaCnRegistView.do">

                                <input type="hidden" name="certificationAt" value="<c:out value='${certificationAt}'/>">
                                <input type="hidden" name="loginRealnmAt" value="">

                                <input type="hidden" name="wrterNm" value="">

                                <label class="item f_select" for="searchCondition">
                                    <select name="searchCondition" id="searchCondition" title="검색조건 선택">
                                        <option value="wrterNm" <c:if test="${searchVO.searchCondition == 'wrterNm'}">selected="selected"</c:if> >작성자</option>
                                        <option value="qestnSj" <c:if test="${searchVO.searchCondition == 'qestnSj'}">selected="selected"</c:if> >질문제목</option>
                                    </select>
                                </label>

                                <span class="item f_search">
                                    <input class="f_input w_500" name="searchKeyword" type="text" value='<c:out value="${searchVO.searchKeyword}"/>'
                                           maxlength="35" title="검색어 입력">
                                    <button class="btn" type="submit"
                                            onclick="fn_egov_search_qnacn(); return false;">조회</button>
                                </span>

                                <a href="#" class="item btn btn_black_46 w_100" onclick="fn_egov_regist_cnsltcn(); return false;">등록</a>

                                <input name="qaId" type="hidden" value="">
                                <input name="passwordConfirmAt" type="hidden" value="">
                                <input name="pageIndex" type="hidden" value="<c:out value='${searchVO.pageIndex}'/>"/>
                            </div>
                        </form>

                    </div>
                    <!--// 검색조건 -->

                    <!-- 게시판 -->
                    <div class="board_list">
                        <table>
                            <caption>목록</caption>
                            <colgroup>
                                <col style="width: 70px;">
                                <col style="width: auto; min-width: 330px;">
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
                                    <td class="al" colspan="6">
                                        등록된 글이 존재하지 않습니다.
                                    </td>
                                </tr>
                            </c:if>

                            <c:forEach items="${resultList}" var="resultInfo" varStatus="status">
                                <tr>
                                    <td><c:out value="${paginationInfo.totalRecordCount+1 - ((searchVO.pageIndex-1) * searchVO.pageSize + status.count)}"/></td>
                                    <td class="al">
                                        <a href = "<c:url value='/uss/olh/qna/QnaInqireCoUpdt.do'/>?qaId=${resultInfo.qaId}&amp;pageIndex=${searchVO.pageIndex}" class="lnk" onclick="fn_egov_inquire_qnadetail('<c:out value="${resultInfo.qaId}"/>'); return false;" >
                                            <c:out value="${resultInfo.qestnSj}" escapeXml="false"/>
                                        </a>
                                    </td>
                                    <td><c:out value="${resultInfo.wrterNm}"/></td>
                                    <td><c:out value="${resultInfo.qnaProcessSttusCodeNm}"/></td>
                                    <td><c:out value="${resultInfo.inqireco}"/></td>
                                    <td><c:out value='${fn:substring(resultInfo.writngDe, 0,4)}'/>.<c:out value='${fn:substring(resultInfo.writngDe, 4,6)}'/>.<c:out value='${fn:substring(resultInfo.writngDe, 6,8)}'/></td>
                                </tr>
                            </c:forEach>

                            </tbody>
                        </table>
                    </div>

                    <!-- 페이징 -->
                    <div class="board_list_bot">
                        <div class="paging" id="paging_div">
                            <ul>
                                <ui:pagination paginationInfo="${paginationInfo}" type="renew" jsFunction="fn_egov_select_linkPage" />
                            </ul>
                        </div>
                    </div>
                    <!-- // 페이징 끝 -->

                    <!--// 게시판 -->
                </div>
            </div>
        </section>

        <!-- footer 시작 -->
        <c:import url="/sym/mms/ContFooter.do" />
	    <!-- //footer 끝 -->
    </div>

    <!-- Go To Top
============================================= -->
    <div id="gotoTop" class="icon-angle-up"></div>

    <!-- External JavaScripts
    ============================================= -->
    <script type="text/javascript" src="<c:url value='/'/>js/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="<c:url value='/'/>js/plugins.js"></script>

    <script type="text/javascript" src="<c:url value='/'/>js/common.js"></script>

    <!-- Footer Scripts
    ============================================= -->
    <script type="text/javascript" src="<c:url value='/'/>js/functions.js"></script>

    <script type="text/javascript" src="<c:url value='/'/>js/ui.js"></script>
    
</body>
</html>