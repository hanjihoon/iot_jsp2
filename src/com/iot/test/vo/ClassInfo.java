package com.iot.test.vo;

public class ClassInfo {
	private int ciNo;
	private String ciName;
	private String ciDesc;
	public int getCino() {
		return ciNo;
	}
	public void setCiNo(int cino) {
		this.ciNo = cino;
	}
	public int getCiNo() {
		return ciNo;
	}
	public String getCiName() {
		return ciName;
	}
	
	public void setCiName(String ciName) {
		this.ciName = ciName;
	}
	public String getCiDesc() {
		return ciDesc;
	}
	public void setCiDesc(String ciDesc) {
		this.ciDesc = ciDesc;
	}
	@Override
	public String toString() {
		return "ClassInfo [cino=" + ciNo + ", ciName=" + ciName + ", ciDesc=" + ciDesc + "]";
	}
}
