package com.spring.board.form;


public class BoardForm {


	int board_seq;
	int ingredient_no;
	String ingredient_category;
	String ingredient_name;
	String ingredient_detail;
	int cal;
	
	public int getIngredient_no() {
		return ingredient_no;
	}
	public void setIngredient_no(int ingredient_no) {
		this.ingredient_no = ingredient_no;
	}
	public String getIngredient_category() {
		return ingredient_category;
	}
	public void setIngredient_category(String ingredient_category) {
		this.ingredient_category = ingredient_category;
	}
	
	public String getIngredient_name() {
		return ingredient_name;
	}
	public void setIngredient_name(String ingredient_name) {
		this.ingredient_name = ingredient_name;
	}
	public String getIngredient_detail() {
		return ingredient_detail;
	}
	public void setIngredient_detail(String ingredient_detail) {
		this.ingredient_detail = ingredient_detail;
	}
	public int getCal() {
		return cal;
	}
	public void setCal(int cal) {
		this.cal = cal;
	}
	public int getBoard_seq() {
		return board_seq;
	}

	public void setBoard_seq(int board_seq) {
		this.board_seq = board_seq;
	}
}
