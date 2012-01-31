package org.txxfu.sqltool;

import java.util.ArrayList;
import java.util.List;

public class Menu {

	private String id;

	private String name;

	private String sort;

	private String actionUrl;
	
	private String actionType;

	// sql col
	
	private String sqlId;
	
	private String privId;

	private List<Menu> menus = new ArrayList<Menu>();
	
	private Menu parentMenu;

	public void addSubMenu(Menu menu) {
		menu.setParentMenu(this);
		menus.add(menu);
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

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public String getActionUrl() {
		return actionUrl;
	}

	public void setActionUrl(String actionUrl) {
		this.actionUrl = actionUrl;
	}

	public String getSqlId() {
		return sqlId;
	}

	public void setSqlId(String sqlId) {
		this.sqlId = sqlId;
	}

	public List<Menu> getMenus() {
		return menus;
	}

	public void setMenus(List<Menu> menus) {
		this.menus = menus;
	}
	
	public String getPrivId() {
		return privId;
	}

	public void setPrivId(String privId) {
		this.privId = privId;
	}
	
	
	public Menu getParentMenu() {
		return parentMenu;
	}

	public void setParentMenu(Menu parentMenu) {
		this.parentMenu = parentMenu;
	}
	
	public String getActionType() {
		return actionType;
	}

	public void setActionType(String actionType) {
		this.actionType = actionType;
	}

	@Override
	public String toString() {
		return "Menu [id=" + id + ", name=" + name + ", sort=" + sort
				+ ", actionUrl=" + actionUrl + ", actionType=" + actionType
				+ ", sqlId=" + sqlId + ", privId=" + privId + "]";
	}



}
