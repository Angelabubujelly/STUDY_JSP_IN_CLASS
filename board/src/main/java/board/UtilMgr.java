package board;

import java.io.*;

public class UtilMgr {
//	static으로 만들어서 BoardMgr에서 호출할 때 객체 생성할 필요 X
	public static String con(String s) {
		String str = null;
		try {
			str = new String(s.getBytes("8859_1"),"ksc5601");
		}catch(Exception e){
			e.printStackTrace();
		}
		return str;
	}
	public static void delete(String s) {
		File file = new File(s);
		if(file.isFile()) {
			file.delete();
		}
	}
}
