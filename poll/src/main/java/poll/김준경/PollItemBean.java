package poll;

public class PollItemBean {
private String []  item;
public String[] getItem() {
	return item;
}
public void setItem(String[] item) {
	this.item = item;
}
public int getListnum() {
	return listnum;
}
public void setListnum(int listnum) {
	this.listnum = listnum;
}
public int getItemnum() {
	return itemnum;
}
public void setItemnum(int itemnum) {
	this.itemnum = itemnum;
}
public int getCount() {
	return count;
}
public void setCount(int count) {
	this.count = count;
}
private int listnum, itemnum, count;
}
