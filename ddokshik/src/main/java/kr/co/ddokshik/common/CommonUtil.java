package kr.co.ddokshik.common;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class CommonUtil {
	public static String strToSHA256(String strToSHA256) {
		MessageDigest sh1 = null;
		try {
			sh1 = MessageDigest.getInstance("SHA-256");
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
			return "";
		}
		sh1.update(strToSHA256.getBytes());
		byte byteData1[] = sh1.digest();
		StringBuffer sb1 = new StringBuffer();
		for (int i = 0; i < byteData1.length; i++) {
			sb1.append(Integer.toString((byteData1[i] & 0xff) + 0x100, 16).substring(1));
		}
		String strBySHA256 = sb1.toString();
		return strBySHA256;
	}
}
