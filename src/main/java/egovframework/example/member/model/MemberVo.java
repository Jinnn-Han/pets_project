package egovframework.example.member.model;

import com.system.util.SearchVo;

public class MemberVo extends SearchVo{

	String MEMBER_ID;
	String PASSWORD;
	String NAME;
	String NICK_NAME;
	String PET_NAME;
	String EMAIL;
	String LEVEL;
	String CREATE_TM;
	String UPDATE_TM;
	String DELETE_TM;
	String DELETE_KEY;
	
	String SEARCH_TYPE = "";
	String SEARCH_TEXT = "";
	
	int LIMIT;
	int OFFSET;
	
	public String getMEMBER_ID() {
		return MEMBER_ID;
	}
	public void setMEMBER_ID(String mEMBER_ID) {
		MEMBER_ID = mEMBER_ID;
	}
	public String getPASSWORD() {
		return PASSWORD;
	}
	public void setPASSWORD(String pASSWORD) {
		PASSWORD = pASSWORD;
	}
	public String getNAME() {
		return NAME;
	}
	public void setNAME(String nAME) {
		NAME = nAME;
	}
	public String getNICK_NAME() {
		return NICK_NAME;
	}
	public void setNICK_NAME(String nICK_NAME) {
		NICK_NAME = nICK_NAME;
	}
	public String getPET_NAME() {
		return PET_NAME;
	}
	public void setPET_NAME(String pET_NAME) {
		PET_NAME = pET_NAME;
	}
	public String getEMAIL() {
		return EMAIL;
	}
	public void setEMAIL(String eMAIL) {
		EMAIL = eMAIL;
	}
	public String getLEVEL() {
		return LEVEL;
	}
	public void setLEVEL(String lEVEL) {
		LEVEL = lEVEL;
	}
	public String getCREATE_TM() {
		return CREATE_TM;
	}
	public void setCREATE_TM(String cREATE_TM) {
		CREATE_TM = cREATE_TM;
	}
	public String getUPDATE_TM() {
		return UPDATE_TM;
	}
	public void setUPDATE_TM(String uPDATE_TM) {
		UPDATE_TM = uPDATE_TM;
	}
	public String getDELETE_TM() {
		return DELETE_TM;
	}
	public void setDELETE_TM(String dELETE_TM) {
		DELETE_TM = dELETE_TM;
	}
	public String getDELETE_KEY() {
		return DELETE_KEY;
	}
	public void setDELETE_KEY(String dELETE_KEY) {
		DELETE_KEY = dELETE_KEY;
	}
	public String getSEARCH_TYPE() {
		return SEARCH_TYPE;
	}
	public void setSEARCH_TYPE(String sEARCH_TYPE) {
		SEARCH_TYPE = sEARCH_TYPE;
	}
	public String getSEARCH_TEXT() {
		return SEARCH_TEXT;
	}
	public void setSEARCH_TEXT(String sEARCH_TEXT) {
		SEARCH_TEXT = sEARCH_TEXT;
	}
	public int getLIMIT() {
		return LIMIT;
	}
	public void setLIMIT(int lIMIT) {
		LIMIT = lIMIT;
	}
	public int getOFFSET() {
		return OFFSET;
	}
	public void setOFFSET(int oFFSET) {
		OFFSET = oFFSET;
	}
	
}
