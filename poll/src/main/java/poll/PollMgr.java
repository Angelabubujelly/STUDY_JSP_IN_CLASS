package poll;

import java.sql.*;
import java.util.*;

public class PollMgr {
	private DBConnectionMgr pool;
	
	public PollMgr() {
		try {
			pool = DBConnectionMgr.getInstance();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public int getMaxNum() {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = null;
		int maxNum = 0;
	try {
		con = pool.getConnection();
		sql = "select max(num) from polllist";
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
		if(rs.next())
			maxNum = rs.getInt(1);
	} catch(Exception e) {
		e.printStackTrace();
	} finally {
		pool.freeConnection(con,pstmt, rs);
	} return maxNum;
}
	// 질문 입력
	public boolean insertPoll(PollListBean plBean, PollItemBean piBean) {
		Connection con = null;
		PreparedStatement pstmt = null;
		boolean flag = false;
		String sql = null;
		try {
			con = pool.getConnection();
			sql = "insert into polllist(num, question, sdate, edate, wdate, type)"+ " values(POLLLIST_SEQ.NEXTVAL, ?, ?, ?, SYSDATE, ?)";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, plBean.getQuestion());
			pstmt.setString(2, plBean.getSdate());
			pstmt.setString(3,plBean.getEdate());
			pstmt.setInt(4, plBean.getType());
			int result = pstmt.executeUpdate();
			int result2 = 0;
			if(result == 1) {
				sql = "insert into pollitem values(POLLLIST_SEQ.CURRVAL, ?, ?, ?)";
				pstmt = con.prepareStatement(sql);
				String item[] = piBean.getItem();
			for(int i=0; i<item.length; i++) {
				if(item[i] == null || item[i].equals(""))
					break;
				pstmt.setInt(1, i);
				pstmt.setString(2, item[i]);
				pstmt.setInt(3,0);
				result2 = pstmt.executeUpdate();
			}
			if(result2 ==1)
				flag = true;
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con,pstmt);
		} return flag;
	}
// 폼 리스트 목록 가져오기. 벡터에 넣어서 리스트목록으로 반환.
	public Vector<PollListBean> getAllList(){
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs =null;
		String sql = null;
//		vector로 반환할 것
		Vector<PollListBean> vlist = new Vector<PollListBean>();
		try {
			con = pool.getConnection();
			sql = "select * from polllist order by num desc";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				PollListBean plBean = new PollListBean();
				plBean.setNum(rs.getInt("num"));
				plBean.setQuestion(rs.getString("question"));
				plBean.setSdate(rs.getString("sdate"));
				plBean.setEdate(rs.getString("edate"));
				vlist.add(plBean);
			
			}
	}catch(Exception e) {
		e.printStackTrace();
	} finally {
		pool.freeConnection(con,pstmt, rs);
	} return vlist;
}
	
//	응 num값 넘겨줄게. num에 해당하는 리스트 질문과 타입등을 가져오기
	public PollListBean getList(int num) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs =null;
		String sql = null;
		PollListBean plBean = new PollListBean();
	try {
		con = pool.getConnection();
		if(num ==0)
			sql = "select * from polllist order by num desc";
//		그렇지 않으면 순서대로... 쮹
		else
			sql = "select * from polllist where num =" + num;
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
		if(rs.next()) {
			plBean.setQuestion(rs.getString("question"));
			plBean.setType(rs.getInt("type"));
			plBean.setActive(rs.getInt("active"));
		}
}catch(Exception e) {
	e.printStackTrace();
} finally {
	pool.freeConnection(con,pstmt, rs);
} return plBean ;
}
	
//	num에 해당하는 아이템목록 가져오기...
	public Vector<String> getItem(int num) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs =null;
		String sql = null;
		Vector<String> vlist = new Vector<String>();
	try {
		con = pool.getConnection();
		if(num==0)
			num = getMaxNum();
//		항목만 가져와야해!!!! 모든걸 가져오면 안 됩니다... 번호를 가져와버리게돼요...
			sql = "select item from pollitem where listnum =" + num;
		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while(rs.next()) {
			vlist.add(rs.getString(1));
		}
}catch(Exception e) {
	e.printStackTrace();
} finally {
	pool.freeConnection(con,pstmt, rs);
} return vlist;
}
	public boolean updatePoll (int num, String[] itemnum) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs =null;
		String sql = null;
		boolean flag = false;
		try
		{
			con = pool.getConnection();
//																					=다음에는 띄어쓰기 해두 되구,, 안 해도 되
			sql = "update pollitem set count = count+1 where listnum=? and itemnum=?";
			pstmt = con.prepareStatement(sql);
			if(num==0)
				num = getMaxNum();
			for(int i=0; i<itemnum.length; i++) {
				if(itemnum[i]==null || itemnum[i].equals(""))
					break;
				pstmt.setInt(1, num);
				pstmt.setInt(2, Integer.parseInt(itemnum[i]));
//				플러그에 넣ㄱㅣ 위해 변수로
				int j = pstmt.executeUpdate();
				if(j>0)
					flag = true;
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		} finally {
			pool.freeConnection(con,pstmt, rs);
		} return flag;
		}
		
}