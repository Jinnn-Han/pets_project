package egovframework.example.daily.model;

import java.util.ArrayList;
import java.util.List;

import egovframework.example.admin.SearchModel;
import egovframework.example.admin.SearchVo;

public class DailyVO extends SearchModel {
	
	int IDX;
	String MEMBER_ID;
	String PET_NAME;
	int WEIGHT;
	int HOS_VISIT;
	String TITLE;
	String CONTENT;
	String MEMO;
	int STATUS;
	String CREATE_TM;
	String UPDATE_TM;
	String FILE;
	
	public int getIDX() {
		return IDX;
	}
	public void setIDX(int iDX) {
		IDX = iDX;
	}
	public String getMEMBER_ID() {
		return MEMBER_ID;
	}
	public void setMEMBER_ID(String mEMBER_ID) {
		MEMBER_ID = mEMBER_ID;
	}
	public String getPET_NAME() {
		return PET_NAME;
	}
	public void setPET_NAME(String pET_NAME) {
		PET_NAME = pET_NAME;
	}
	public int getWEIGHT() {
		return WEIGHT;
	}
	public void setWEIGHT(int wEIGHT) {
		WEIGHT = wEIGHT;
	}
	public int getHOS_VISIT() {
		return HOS_VISIT;
	}
	public void setHOS_VISIT(int hOS_VISIT) {
		HOS_VISIT = hOS_VISIT;
	}
	public String getTITLE() {
		return TITLE;
	}
	public void setTITLE(String tITLE) {
		TITLE = tITLE;
	}
	public String getCONTENT() {
		return CONTENT;
	}
	public void setCONTENT(String cONTENT) {
		CONTENT = cONTENT;
	}
	public String getMEMO() {
		return MEMO;
	}
	public void setMEMO(String mEMO) {
		MEMO = mEMO;
	}
	public int getSTATUS() {
		return STATUS;
	}
	public void setSTATUS(int sTATUS) {
		STATUS = sTATUS;
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
	public String getFILE() {
		return FILE;
	}
	public void setFILE(String fILE) {
		FILE = fILE;
	}
}
