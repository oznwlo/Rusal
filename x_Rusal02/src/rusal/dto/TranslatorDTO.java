package rusal.dto;

public class TranslatorDTO {
	int userNo;
	String variables;
	String methods;
	public int getClassNo() {
		return userNo;
	}
	public void setClassNo(int classNo) {
		this.userNo = classNo;
	}
	public String getVariables() {
		return variables;
	}
	public void setVariables(String variables) {
		this.variables = variables;
	}
	public String getMethods() {
		return methods;
	}
	public void setMethods(String methods) {
		this.methods = methods;
	}
	
	
}
