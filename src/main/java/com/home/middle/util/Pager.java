package com.home.middle.util;

import java.util.List;

public class Pager {
	
	private Long productNum;
	private String id;
	private String name;
	private String[] roleName;
	
	

	//검색
	private String kind;
	private String search;
	
	private Long perPage;
	private Long perBlock;
	private Long totalPage;
	
	private Long page;
	
	private Long startRow;
	private Long lastRow;
	
	private Long startNum;
	private Long lastNum;
	
	private boolean before;
	private boolean after;

	//startNum, lastNum
		public void makeNum(Long totalCount) {
			
			
			Long totalPage = totalCount/this.getPerPage();
			if(totalCount%this.getPerPage() !=0) {
				//totalPage = totalPage + 1;
				totalPage++;
			}
			
			if(this.getPage() > totalPage) {
				this.setPage(totalPage);
			}
			
		
			Long perBlock = 5L;
			
			Long totalBlock = totalPage/ perBlock;
			if(totalPage % perBlock !=0) {
				totalBlock ++;
			}
			
			
			Long curBlock = this.getPage() / perBlock;
			if(this.getPage() % perBlock !=0) {
				curBlock++;
			}
			
			
			
			this.startNum = (curBlock-1) * perBlock + 1;
			this.lastNum = curBlock * perBlock;
			
			this.after= true;
			
			if(curBlock == totalBlock) {
				lastNum = totalPage;
				this.after = false;
			}
			
			if(curBlock == 1) {
				this.before= true;
			}
		}
		
//		public Long getTotalCount() {
//			return totalCount;
//		}
//		public void setTotalCount(Long totalCount) {
//			this.totalCount = totalCount;
//		}
		public Pager() {
			this.perPage = 10L;
		}
		//startRow, lastRow ��� �ϴ� �޼���
		public void makeRow() {
			this.startRow = (this.getPage()-1) * this.getPerPage() + 1;
			this.lastRow = this.getPage() * this.getPerPage();
		}
		
		
		public Long getProductNum() {
			return productNum;
		}

		public void setProductNum(Long productNum) {
			this.productNum = productNum;
		}

	
		public Long getPerBlock() {
			return perBlock;
		}

		public void setPerBlock(Long perBlock) {
			this.perBlock = perBlock;
		}

		public Long getTotalPage() {
			return totalPage;
		}

		public void setTotalPage(Long totalPage) {
			this.totalPage = totalPage;
		}

		public String getKind() {
			return kind;
		}

		public void setKind(String kind) {
			this.kind = kind;
		}

		public String getSearch() {
			if(search == null) {
				search = "";
			}
			return search;
		}

		public void setSearch(String search) {
			this.search = search;
		}

		public boolean isBefore() {
			return before;
		}

		public void setBefore(boolean before) {
			this.before = before;
		}

		public boolean isAfter() {
			return after;
		}

		public void setAfter(boolean after) {
			this.after = after;
		}

		public Long getStartRow() {
			if(this.perPage == null || this.perPage == 0) {
				this.perPage = 10L;
			}
			return startRow;
		}
		public void setStartRow(Long startRow) {
			this.startRow = startRow;
		}
		public Long getLastRow() {
			return lastRow;
		}
		public void setLastRow(Long lastRow) {
			this.lastRow = lastRow;
		}
		public Long getPerPage() {
			return perPage;
		}
		public void setPerPage(Long perPage) {
			this.perPage = perPage;
		}
		public Long getPage() {
			if(this.page == null || this.page <1) {
				this.page=1L;
			}
			return page;
		}
		public void setPage(Long page) {
			this.page = page;
		}

		public Long getStartNum() {
			return startNum;
		}

		public void setStartNum(Long startNum) {
			this.startNum = startNum;
		}

		public Long getLastNum() {
			return lastNum;
		}

		public void setLastNum(Long lastNum) {
			this.lastNum = lastNum;
		}

		public String getId() {
			return id;
		}

		public void setId(String id) {
			this.id = id;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String[] getRoleName() {
			return roleName;
		}

		public void setRoleName(String[] roleName) {
			this.roleName = roleName;
		}

		

		
	
		
		
	
}
