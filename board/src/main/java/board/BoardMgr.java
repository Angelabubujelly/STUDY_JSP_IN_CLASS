package board;

import java.io.*;
import java.sql.*;
import java.util.*;

import javax.servlet.http.*;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class BoardMgr {
//Db와 연동할 모든 프로그램 다 붙여잍 .. DBconnection pool사용도 하고요,,,
//	 보통 변수는 private 선언해주는데 안 써줘도 default 값 붙긴 하구욤
		private DBConnectionMgr pool;
//		static은 클래스가 올라올 때 메서드에 생성
		private static final String SAVEFOLDER = "D:/KJK/JJSSPPWORKIT/board/src/main/webapp/fileupload";
		private static final String ENCTYPE = "UTF-8";
		private static final int MAXSIZE = 5*1024*1024;
		
		public BoardMgr() {
			try {
				pool = DBConnectionMgr.getInstance()	;
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		public void insertBoard(HttpServletRequest req) {
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = null;
			MultipartRequest multi = null;
			int filesize = 0;
			String filename = null;
			try {
				con = pool.getConnection();
				sql = "select max(num) from tblboard";
				pstmt = con.prepareStatement(sql);
				rs = pstmt.executeQuery();
				int ref = 1;
				if(rs.next()) {
					ref = rs.getInt(1)+1;
				}
				File file = new File(SAVEFOLDER);
				if(!file.exists()) {
					file.mkdirs();
				}
//																																덮어쓰기 방지하는 객체
				multi = new MultipartRequest(req, SAVEFOLDER, MAXSIZE, ENCTYPE, new DefaultFileRenamePolicy());
				if(multi.getFilesystemName("filename") != null) {
//					file name을 얻어와서 filename에 넣어주굥
					filename = multi.getFilesystemName("filename");
//					String type이기에 강제 형변환 함
					filesize = (int)multi.getFile("filename").length();
				}
//			DB의 column순서대로..	(블라,name,블라,pos(답글다는거아니면 pos는 무조건 0,ref,디비?0,오눌널짜,pwd,ip,
//										카운트 맨처음이니 무조건 0,파일사이즈?
				sql = "insert into tblboard values(?,?,?,?,0,?,0,SYSDATE,?,?,0,?,?)";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, ref);
				pstmt.setString(2, multi.getParameter("name"));
				pstmt.setString(3, multi.getParameter("subject"));
				pstmt.setString(4, multi.getParameter("content"));
				pstmt.setInt(5, ref);
				pstmt.setString(6, multi.getParameter("pass"));
				pstmt.setString(7, multi.getParameter("ip"));
				pstmt.setString(8, filename);
				pstmt.setInt(9, filesize);
				pstmt.executeUpdate();
			} catch(Exception e) {
				e.printStackTrace();
			}finally {
				pool.freeConnection(con, pstmt, rs);
			}
		}
		//게시물의 총 갯수
		public int getTotalCount(String keyField, String keyWord) {
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = null;
			int totalCount = 0;
			try {
				con = pool.getConnection();
				if(keyWord.equals("null") || keyWord.equals("")) {
					sql ="select count(num) from tblboard";
					pstmt = con.prepareStatement(sql);
				} else {
					sql = "select count(num) from tblboard where "+keyField + "  like ?";
					pstmt = con.prepareStatement(sql);
					pstmt.setString(1, "%"+keyWord+"%");
					
				//	글자 중 길이 들어간 모든 것... → %길%
				}
//			Query문을 시행해서 결과를 가져 오 시 오 yeah
				rs = pstmt.executeQuery();
			//즉 결과가 있을 때에만
				if(rs.next()) {
					//카운트의 갯수만 ., 가져온 것을 넣어 주소. 없으면 덮어쓰기 안 되니까 그냥 0임.
					totalCount = rs.getInt(1);
				}
				
			}catch(Exception e) {
			
				e.printStackTrace();
			}finally {
				pool.freeConnection(con, pstmt, rs);
			} return totalCount;
		}

		
		//게시판 리스트
		public Vector<BoardBean> getBoardList(String keyField, String keyWord, int start, int end){
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql = null;
			Vector<BoardBean> vlist = new Vector<BoardBean>();
			try {
				con = pool.getConnection();
				if(keyWord.equals("null") || keyWord.equals("")) {
//																이미 안에 있는 ROWNUM, Db는 띄어쓰기 중요함! where 뒤에 한 칸 띄우고 이런거//
					sql = "select * from (select * from tblboard order by ref desc, pos)"
							+ " where ROWNUM >= ? AND ROWNUM <= ?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, start);
				pstmt.setInt(2, end);
				}else {
					sql = "select * from(select * from tblboard where "+ keyField + " like ? order by ref desc, pos ) where ROWNUM >= ? AND ROWNUM <= ?";
					pstmt = con.prepareStatement(sql);
					pstmt.setString(1, "%"+keyWord+"%");
					pstmt.setInt(2, start);
					pstmt.setInt(3, end);
				}
				rs = pstmt.executeQuery();
				while(rs.next()) {
					BoardBean bean = new BoardBean();
					bean.setNum(rs.getInt("num"));
					bean.setName(rs.getString("name"));
					bean.setSubject(rs.getString("subject"));
					bean.setPos(rs.getInt("pos"));
					bean.setRef(rs.getInt("ref"));
					bean.setDepth(rs.getInt("depth"));
					bean.setRegdate(rs.getString("regdate"));
					bean.setCount(rs.getInt("count"));
					vlist.add(bean);
					
				}
				
			}catch(Exception e) {
			
				e.printStackTrace();
			}finally {
				pool.freeConnection(con, pstmt, rs);
			} return vlist;
		
			
		}
}

