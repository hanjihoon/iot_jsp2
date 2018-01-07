package com.iot.test.vo;

public class ClassInfo {
	private int cino;
	private String ciName;
	private String ciDesc;
	public int getCino() {
		return cino;
	}
	public void setCiNo(int cino) {
		this.cino = cino;
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
		return "ClassInfo [cino=" + cino + ", ciName=" + ciName + ", ciDesc=" + ciDesc + "]";
	}
}
