package com.spring.board.dto;


public class BoardDto {


	int ingredient_no;
	String ingredient_category;
	String ingredient_name;
	String ingredient_detail;
	int cal;


	public int getingredient_no() {
		return ingredient_no;
	}

	public void setingredient_no(int ingredient_no) {
		this.ingredient_no =ingredient_no;
	}


	public String getingredient_category() {
		return ingredient_category;
	}

	public void setingredient_category(String ingredient_category) {
		this.ingredient_category = ingredient_category;
	}
	

	public String getingredient_name() {
		return ingredient_name;
	}

	public void setingredient_name(String ingredient_name) {
		this.ingredient_name = ingredient_name;
	}

	public String getingredient_detail() {
		return ingredient_detail;
	}

	public void setingredient_detail(String ingredient_detail) {
		this.ingredient_detail = ingredient_detail;
	}

	
	
	public int getcal() {
		return cal;
	}

	public void setcal(int cal) {
		this.cal = cal;
	}

}
