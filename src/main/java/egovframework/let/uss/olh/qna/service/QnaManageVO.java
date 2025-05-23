package egovframework.let.uss.olh.qna.service;

/**
 * 
 * Q&A를 처리하는 VO 클래스
 * @author 공통서비스 개발팀 박정규
 * @since 2009.04.01
 * @version 1.0
 * @see
 *
 * "<pre>
 * << 개정이력(Modification Information) >>
 *   
 *   수정일      수정자           수정내용
 *  -------    --------    ---------------------------
 *   2009.04.01  박정규          최초 생성
 *   2011.08.31  JJY            경량환경 템플릿 커스터마이징버전 생성 
 *
 * </pre>"
 */
public class QnaManageVO extends QnaManageDefaultVO {
	
    private static final long serialVersionUID = 1L;
    
    /** QA ID */
    private String qaId;
    
    /** 질문제목 */
    private String qestnSj;    
    
    /** 질문내용 */
    private String qestnCn;
    
    /** 작성비밀번호 */
    private String writngPassword;

    /** 지역번호 */
    private String areaNo;
    
    /** 중간전화번호 */     
    private String middleTelno;
    
    /** 끝전화번호 */
    private String endTelno;
        
    /** 이메일 주소 */
    private String emailAdres;
        
    /** 이메일 답변여부 */
    private String emailAnswerAt;

    /** 작성자 명 */
    private String wrterNm;
    
    /** 작성일자 */
    private String writngDe;
    
    /** 조회횟수 */
    private String inqireCo;
        
    /** 질의응답처리상태코드 */
    private String qnaProcessSttusCode;

    /** 질의응답처리상태코드명 */
    private String qnaProcessSttusCodeNm;
    
    /** 답변내용 */
    private String answerCn;
    
    /** 답변일자 */
    private String answerDe;

    /** 작성비밀번호 확인여부 */
    private String passwordConfirmAt;
    
    /** 답변자명 */
    private String emplyrNm;
    
    /** 사무실전화번호 */
    private String offmTelno;

    /** 답변자 EMAIL 주소 */
    private String aemailAdres;
    
    /** 부서명 */
    private String orgnztNm;
        
    /** 최초등록시점 */
    private String frstRegisterPnttm;

    /** 최초등록자ID */
    private String frstRegisterId;

    /** 최종수정시점 */
    private String lastUpdusrPnttm;

    /** 최종수정자ID */
    private String lastUpdusrId;

	/**
	 * qaId attribute 를 리턴한다.
	 * @return the String
	 */
	public String getQaId() {
		return qaId;
	}

	/**
	 * qaId attribute 값을 설정한다.
	 */
	public void setQaId(String qaId) {
		this.qaId = qaId;
	}

	/**
	 * qestnSj attribute 를 리턴한다.
	 * @return the String
	 */
	public String getQestnSj() {
		return qestnSj;
	}

	/**
	 * qestnSj attribute 값을 설정한다.
	 */
	public void setQestnSj(String qestnSj) {
		this.qestnSj = qestnSj;
	}

	/**
	 * qestnCn attribute 를 리턴한다.
	 * @return the String
	 */
	public String getQestnCn() {
		return qestnCn;
	}

	/**
	 * qestnCn attribute 값을 설정한다.
	 */
	public void setQestnCn(String qestnCn) {
		this.qestnCn = qestnCn;
	}

	/**
	 * writngPassword attribute 를 리턴한다.
	 * @return the String
	 */
	public String getWritngPassword() {
		return writngPassword;
	}

	/**
	 * writngPassword attribute 값을 설정한다.
	 */
	public void setWritngPassword(String writngPassword) {
		this.writngPassword = writngPassword;
	}

	/**
	 * areaNo attribute 를 리턴한다.
	 * @return the String
	 */
	public String getAreaNo() {
		return areaNo;
	}

	/**
	 * areaNo attribute 값을 설정한다.
	 */
	public void setAreaNo(String areaNo) {
		this.areaNo = areaNo;
	}

	/**
	 * middleTelno attribute 를 리턴한다.
	 * @return the String
	 */
	public String getMiddleTelno() {
		return middleTelno;
	}

	/**
	 * middleTelno attribute 값을 설정한다.
	 */
	public void setMiddleTelno(String middleTelno) {
		this.middleTelno = middleTelno;
	}

	/**
	 * endTelno attribute 를 리턴한다.
	 * @return the String
	 */
	public String getEndTelno() {
		return endTelno;
	}

	/**
	 * endTelno attribute 값을 설정한다.
	 */
	public void setEndTelno(String endTelno) {
		this.endTelno = endTelno;
	}

	/**
	 * emailAdres attribute 를 리턴한다.
	 * @return the String
	 */
	public String getEmailAdres() {
		return emailAdres;
	}

	/**
	 * emailAdres attribute 값을 설정한다.
	 */
	public void setEmailAdres(String emailAdres) {
		this.emailAdres = emailAdres;
	}

	/**
	 * emailAnswerAt attribute 를 리턴한다.
	 * @return the String
	 */
	public String getEmailAnswerAt() {
		return emailAnswerAt;
	}

	/**
	 * emailAnswerAt attribute 값을 설정한다.
	 */
	public void setEmailAnswerAt(String emailAnswerAt) {
		this.emailAnswerAt = emailAnswerAt;
	}

	/**
	 * wrterNm attribute 를 리턴한다.
	 * @return the String
	 */
	public String getWrterNm() {
		return wrterNm;
	}

	/**
	 * wrterNm attribute 값을 설정한다.
	 */
	public void setWrterNm(String wrterNm) {
		this.wrterNm = wrterNm;
	}

	/**
	 * writngDe attribute 를 리턴한다.
	 * @return the String
	 */
	public String getWritngDe() {
		return writngDe;
	}

	/**
	 * writngDe attribute 값을 설정한다.
	 */
	public void setWritngDe(String writngDe) {
		this.writngDe = writngDe;
	}

	/**
	 * inqireCo attribute 를 리턴한다.
	 * @return the String
	 */
	public String getInqireCo() {
		return inqireCo;
	}

	/**
	 * inqireCo attribute 값을 설정한다.
	 */
	public void setInqireCo(String inqireCo) {
		this.inqireCo = inqireCo;
	}

	/**
	 * qnaProcessSttusCode attribute 를 리턴한다.
	 * @return the String
	 */
	public String getQnaProcessSttusCode() {
		return qnaProcessSttusCode;
	}

	/**
	 * qnaProcessSttusCode attribute 값을 설정한다.
	 */
	public void setQnaProcessSttusCode(String qnaProcessSttusCode) {
		this.qnaProcessSttusCode = qnaProcessSttusCode;
	}

	/**
	 * qnaProcessSttusCodeNm attribute 를 리턴한다.
	 * @return the String
	 */
	public String getQnaProcessSttusCodeNm() {
		return qnaProcessSttusCodeNm;
	}

	/**
	 * qnaProcessSttusCodeNm attribute 값을 설정한다.
	 */
	public void setQnaProcessSttusCodeNm(String qnaProcessSttusCodeNm) {
		this.qnaProcessSttusCodeNm = qnaProcessSttusCodeNm;
	}

	/**
	 * answerCn attribute 를 리턴한다.
	 * @return the String
	 */
	public String getAnswerCn() {
		return answerCn;
	}

	/**
	 * answerCn attribute 값을 설정한다.
	 */
	public void setAnswerCn(String answerCn) {
		this.answerCn = answerCn;
	}

	/**
	 * answerDe attribute 를 리턴한다.
	 * @return the String
	 */
	public String getAnswerDe() {
		return answerDe;
	}

	/**
	 * answerDe attribute 값을 설정한다.
	 */
	public void setAnswerDe(String answerDe) {
		this.answerDe = answerDe;
	}

	/**
	 * passwordConfirmAt attribute 를 리턴한다.
	 * @return the String
	 */
	public String getPasswordConfirmAt() {
		return passwordConfirmAt;
	}

	/**
	 * passwordConfirmAt attribute 값을 설정한다.
	 */
	public void setPasswordConfirmAt(String passwordConfirmAt) {
		this.passwordConfirmAt = passwordConfirmAt;
	}

	/**
	 * emplyrNm attribute 를 리턴한다.
	 * @return the String
	 */
	public String getEmplyrNm() {
		return emplyrNm;
	}

	/**
	 * emplyrNm attribute 값을 설정한다.
	 */
	public void setEmplyrNm(String emplyrNm) {
		this.emplyrNm = emplyrNm;
	}

	/**
	 * offmTelno attribute 를 리턴한다.
	 * @return the String
	 */
	public String getOffmTelno() {
		return offmTelno;
	}

	/**
	 * offmTelno attribute 값을 설정한다.
	 */
	public void setOffmTelno(String offmTelno) {
		this.offmTelno = offmTelno;
	}

	/**
	 * aemailAdres attribute 를 리턴한다.
	 * @return the String
	 */
	public String getAemailAdres() {
		return aemailAdres;
	}

	/**
	 * aemailAdres attribute 값을 설정한다.
	 */
	public void setAemailAdres(String aemailAdres) {
		this.aemailAdres = aemailAdres;
	}

	/**
	 * orgnztNm attribute 를 리턴한다.
	 * @return the String
	 */
	public String getOrgnztNm() {
		return orgnztNm;
	}

	/**
	 * orgnztNm attribute 값을 설정한다.
	 */
	public void setOrgnztNm(String orgnztNm) {
		this.orgnztNm = orgnztNm;
	}

	/**
	 * frstRegisterPnttm attribute 를 리턴한다.
	 * @return the String
	 */
	public String getFrstRegisterPnttm() {
		return frstRegisterPnttm;
	}

	/**
	 * frstRegisterPnttm attribute 값을 설정한다.
	 */
	public void setFrstRegisterPnttm(String frstRegisterPnttm) {
		this.frstRegisterPnttm = frstRegisterPnttm;
	}

	/**
	 * frstRegisterId attribute 를 리턴한다.
	 * @return the String
	 */
	public String getFrstRegisterId() {
		return frstRegisterId;
	}

	/**
	 * frstRegisterId attribute 값을 설정한다.
	 */
	public void setFrstRegisterId(String frstRegisterId) {
		this.frstRegisterId = frstRegisterId;
	}

	/**
	 * lastUpdusrPnttm attribute 를 리턴한다.
	 * @return the String
	 */
	public String getLastUpdusrPnttm() {
		return lastUpdusrPnttm;
	}

	/**
	 * lastUpdusrPnttm attribute 값을 설정한다.
	 */
	public void setLastUpdusrPnttm(String lastUpdusrPnttm) {
		this.lastUpdusrPnttm = lastUpdusrPnttm;
	}

	/**
	 * lastUpdusrId attribute 를 리턴한다.
	 * @return the String
	 */
	public String getLastUpdusrId() {
		return lastUpdusrId;
	}

	/**
	 * lastUpdusrId attribute 값을 설정한다.
	 */
	public void setLastUpdusrId(String lastUpdusrId) {
		this.lastUpdusrId = lastUpdusrId;
	}

}
