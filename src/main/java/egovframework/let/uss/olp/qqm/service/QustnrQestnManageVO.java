package egovframework.let.uss.olp.qqm.service;

import java.io.Serializable;

import org.apache.commons.lang3.builder.ToStringBuilder;
/**
 * 설문문항 VO Class 구현 
 * @author 공통서비스 장동한
 * @since 2009.03.20
 * @version 1.0
 * @see
 *
 * "<pre>
 * << 개정이력(Modification Information) >>
 *   
 *   수정일      수정자           수정내용
 *  -------    --------    ---------------------------
 *   2009.03.20  장동한          최초 생성
 *
 * </pre>"
 */
public class QustnrQestnManageVO implements Serializable {
	
	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = 1L;

	/** 설문제목 */
	private String qestnrSj = "";
	
	/** 설문문항 ID */
	private String qestnrQesitmId = "";
	
	/** 설문지 ID */
	private String qestnrId = "";
	
	/** 질문순번 */
	private String qestnSn = "";
	
	/** 질문유형코드 */
	private String qestnTyCode = "";
	
	/** 질문내용 */
	private String qestnCn = "";
	
	/** 초대선택건수 */
	private String mxmmChoiseCo = "";
	
	/** 템플릿 ID */
	private String qestnrTmplatId = "";
	
	/** 최초등록자아이디 */
	private String frstRegisterPnttm = "";
	
	/** 최초등록시점  */
	private String frstRegisterId = "";
	
	/** 최종수정시점 */
	private String lastUpdusrPnttm = "";
	
	/** 최종수정시점아이디  */
	private String lastUpdusrId = "";

	/** 검색모드설정  */
	private String searchMode = "";

	/**
	 * qestnrSj attribute 를 리턴한다.
	 * @return the String
	 */
	public String getQestnrSj() {
		return qestnrSj;
	}

	/**
	 * qestnrSj attribute 값을 설정한다.
	 */
	public void setQestnrSj(String qestnrSj) {
		this.qestnrSj = qestnrSj;
	}

	/**
	 * qestnrQesitmId attribute 를 리턴한다.
	 * @return the String
	 */
	public String getQestnrQesitmId() {
		return qestnrQesitmId;
	}

	/**
	 * qestnrQesitmId attribute 값을 설정한다.
	 */
	public void setQestnrQesitmId(String qestnrQesitmId) {
		this.qestnrQesitmId = qestnrQesitmId;
	}

	/**
	 * qestnrId attribute 를 리턴한다.
	 * @return the String
	 */
	public String getQestnrId() {
		return qestnrId;
	}

	/**
	 * qestnrId attribute 값을 설정한다.
	 */
	public void setQestnrId(String qestnrId) {
		this.qestnrId = qestnrId;
	}

	/**
	 * qestnSn attribute 를 리턴한다.
	 * @return the String
	 */
	public String getQestnSn() {
		return qestnSn;
	}

	/**
	 * qestnSn attribute 값을 설정한다.
	 */
	public void setQestnSn(String qestnSn) {
		this.qestnSn = qestnSn;
	}

	/**
	 * qestnTyCode attribute 를 리턴한다.
	 * @return the String
	 */
	public String getQestnTyCode() {
		return qestnTyCode;
	}

	/**
	 * qestnTyCode attribute 값을 설정한다.
	 */
	public void setQestnTyCode(String qestnTyCode) {
		this.qestnTyCode = qestnTyCode;
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
	 * mxmmChoiseCo attribute 를 리턴한다.
	 * @return the String
	 */
	public String getMxmmChoiseCo() {
		return mxmmChoiseCo;
	}

	/**
	 * mxmmChoiseCo attribute 값을 설정한다.
	 */
	public void setMxmmChoiseCo(String mxmmChoiseCo) {
		this.mxmmChoiseCo = mxmmChoiseCo;
	}

	/**
	 * qestnrTmplatId attribute 를 리턴한다.
	 * @return the String
	 */
	public String getQestnrTmplatId() {
		return qestnrTmplatId;
	}

	/**
	 * qestnrTmplatId attribute 값을 설정한다.
	 */
	public void setQestnrTmplatId(String qestnrTmplatId) {
		this.qestnrTmplatId = qestnrTmplatId;
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

	/**
	 * searchMode attribute 를 리턴한다.
	 * @return the String
	 */
	public String getSearchMode() {
		return searchMode;
	}

	/**
	 * searchMode attribute 값을 설정한다.
	 */
	public void setSearchMode(String searchMode) {
		this.searchMode = searchMode;
	}

	/**
     * toString 메소드를 대치한다.
     */
    public String toString() {
    	return ToStringBuilder.reflectionToString(this);
    }

}
