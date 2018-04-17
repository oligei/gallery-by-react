package bank2;
/*
 * true:取号器没有取号，没有人来，可以减队列
 * false:取号器要添加新号码，不能减，也不能再加了
 */
public class Flag {
	boolean flag = false;

	public boolean isFlag() {
		return flag;
	}
	
	public void setFlag(boolean flag) {
		this.flag = flag;
	}
	
}
