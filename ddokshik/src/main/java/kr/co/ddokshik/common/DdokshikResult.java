package kr.co.ddokshik.common;

public class DdokshikResult {
	Integer resultCode = 200;
	String ResultMsg = "";
	Object ResultData = null;
	public Integer getResultCode() {
		return resultCode;
	}
	public void setResultCode(Integer resultCode) {
		this.resultCode = resultCode;
	}
	public String getResultMsg() {
		return ResultMsg;
	}
	public void setResultMsg(String resultMsg) {
		ResultMsg = resultMsg;
	}
	public Object getResultData() {
		return ResultData;
	}
	public void setResultData(Object resultData) {
		ResultData = resultData;
	}
}