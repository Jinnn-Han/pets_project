package egovframework.example.admin;

public class SearchVo  {

	int PAGE = 0;

	int LIMIT = 9999;
	int OFFSET = 0;

	int ITEM_COUNT = 10;

	int ITEM_TOTAL_COUNT;
	int ITEM_PAGE;
	int ITEM_PAGE_START;
	int ITEM_PAGE_END;
	int ITEM_TOTAL_PAGE;

	String SEARCH_TEXT = "";
	String SEARCH_TYPE = "";

	String START_TM = "";
	String END_TM = "";
	String SEARCH_YN = "";

	String FILE_CHANGE1;
	String FILE_CHANGE2;
	String FILE_CHANGE3;

	boolean itempagenext = true;

	public int getPAGE() {
		return PAGE;
	}

	public void setPAGE(int pAGE) {
		PAGE = pAGE;
	}

	public int getOFFSET() {
		return OFFSET;
	}

	public void setOFFSET(int oFFSET) {
		OFFSET = oFFSET;
	}

	public int getLIMIT() {
		return LIMIT;
	}

	public void setLIMIT(int lIMIT) {
		LIMIT = lIMIT;
	}

	public String getSEARCH_TEXT() {
		return SEARCH_TEXT;
	}

	public void setSEARCH_TEXT(String sEARCH_TEXT) {
		SEARCH_TEXT = sEARCH_TEXT;
	}

	public String getSEARCH_TYPE() {
		return SEARCH_TYPE;
	}

	public void setSEARCH_TYPE(String sEARCH_TYPE) {
		SEARCH_TYPE = sEARCH_TYPE;
	}

	public String getSTART_TM() {
		return START_TM;
	}

	public void setSTART_TM(String sTART_TM) {
		START_TM = sTART_TM;
	}

	public String getEND_TM() {
		return END_TM;
	}

	public void setEND_TM(String eND_TM) {
		END_TM = eND_TM;
	}

	public int getITEM_COUNT() {
		return ITEM_COUNT;
	}

	public void setITEM_COUNT(int iTEM_COUNT) {
		ITEM_COUNT = iTEM_COUNT;
		OFFSET = OFFSET * (PAGE * ITEM_COUNT);
	}

	public int getITEM_TOTAL_COUNT() {
		return ITEM_TOTAL_COUNT;
	}

	public void setITEM_TOTAL_COUNT(int iTEM_TOTAL_COUNT) {
		ITEM_TOTAL_COUNT = iTEM_TOTAL_COUNT;

		ITEM_PAGE_END = ITEM_TOTAL_COUNT / ITEM_COUNT;

		if(ITEM_TOTAL_COUNT % ITEM_COUNT == 0)
		{
			ITEM_PAGE_END--;
		}
		if(PAGE < 0)
		{
			PAGE = 0;
		}


		ITEM_TOTAL_PAGE = ITEM_TOTAL_COUNT / ITEM_COUNT;

		if(ITEM_TOTAL_COUNT % ITEM_COUNT != 0 || ITEM_COUNT == 0)
		{
			ITEM_TOTAL_PAGE++;
		}


		ITEM_PAGE = PAGE;
		if(ITEM_PAGE_END < ITEM_PAGE)
		{
			ITEM_PAGE = ITEM_PAGE_END;
		}

		ITEM_PAGE_START = (ITEM_PAGE / ITEM_COUNT) * ITEM_COUNT;

		int send = ITEM_PAGE_START + 9;

		if(send < ITEM_PAGE_END)
		{
			ITEM_PAGE_END = send;
		}else
		{
			itempagenext = false;
		}
	}

	public int getITEM_PAGE() {
		return ITEM_PAGE;
	}

	public void setITEM_PAGE(int iTEM_PAGE) {
		ITEM_PAGE = iTEM_PAGE;
	}

	public int getITEM_PAGE_START() {
		return ITEM_PAGE_START;
	}

	public void setITEM_PAGE_START(int iTEM_PAGE_START) {
		ITEM_PAGE_START = iTEM_PAGE_START;
	}

	public int getITEM_PAGE_END() {
		return ITEM_PAGE_END;
	}

	public void setITEM_PAGE_END(int iTEM_PAGE_END) {
		ITEM_PAGE_END = iTEM_PAGE_END;
	}

	public int getITEM_TOTAL_PAGE() {
		return ITEM_TOTAL_PAGE;
	}

	public void setITEM_TOTAL_PAGE(int iTEM_TOTAL_PAGE) {
		ITEM_TOTAL_PAGE = iTEM_TOTAL_PAGE;
	}

	public boolean isItempagenext() {
		return itempagenext;
	}

	public void setItempagenext(boolean itempagenext) {
		this.itempagenext = itempagenext;
	}

	public String getSEARCH_YN() {
		return SEARCH_YN;
	}

	public void setSEARCH_YN(String sEARCH_YN) {
		SEARCH_YN = sEARCH_YN;
	}

	public String getFILE_CHANGE1() {
		return FILE_CHANGE1;
	}

	public String getFILE_CHANGE2() {
		return FILE_CHANGE2;
	}

	public String getFILE_CHANGE3() {
		return FILE_CHANGE3;
	}

	public void setFILE_CHANGE1(String fILE_CHANGE1) {
		FILE_CHANGE1 = fILE_CHANGE1;
	}

	public void setFILE_CHANGE2(String fILE_CHANGE2) {
		FILE_CHANGE2 = fILE_CHANGE2;
	}

	public void setFILE_CHANGE3(String fILE_CHANGE3) {
		FILE_CHANGE3 = fILE_CHANGE3;
	}

}
