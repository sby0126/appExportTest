package sql;

import java.util.HashMap;

public class ContentLoader {
	private HashMap<String, String> qlList;
	
	public ContentLoader() {
		qlList = new HashMap<String, String>(); 
		
		initWithSQL();
	}
	
	public void initWithSQL() {
		
		qlList.put("전체 데이터 검색", "SELECT DISTINCT b.pageType, b.genderType, b.shopType, b.shopName, b.contentUrl, a.imgId, b.*"
						+ " FROM tblimagehash a, tblproduct b"
						+ " WHERE a.pageType = ? AND"
						+ " a.genderType = ? AND"
						+ " a.shopType = ? AND"
						+ " a.imgUrl = b.contentUrl");
		
		qlList.put("나이 및 카테고리로 찾기", "SELECT DISTINCT b.pageType, b.genderType, b.shopType, b.shopName, b.contentUrl, a.imgId, b.*"
					+ " FROM tblimagehash a, tblproduct b"
					+ " WHERE a.pageType = ? AND"
					+ " a.genderType = ? AND"
					+ " a.shopType = ? AND"
					+ " a.imgUrl = b.contentUrl AND"
					+ " texts LIKE ? AND"
					+ " texts LIKE ?"
				);
		
		qlList.put("나이 또는 카테고리 검색", "SELECT DISTINCT b.pageType, b.genderType, b.shopType, b.shopName, b.contentUrl, a.imgId, b.*"
				+ " FROM tblimagehash a, tblproduct b"
				+ " WHERE a.pageType = ? AND"
				+ " a.genderType = ? AND"
				+ " a.shopType = ? AND"
				+ " a.imgUrl = b.contentUrl AND"
				+ " texts LIKE ?"
			);	
		
	}
	
	public String get(String command) {
		return qlList.get(command);
	}
}
