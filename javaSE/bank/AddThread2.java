package bank2;

import java.util.ArrayList;


public class AddThread2<E> extends Thread {
	ArrayList<Window2<E>> win = null;
	Integer winSum;//总窗口的长度
	static int ing = 0;//当前号码
	Integer sum;//3个窗口队列总长度
	Integer minlength;//最小的队列数，发号到这里
	Integer index = 0;//找到最小队列的数组下标
	Integer max = 0;//排号器一天发放总量
	E element;
	Flag flag;
	E in = null;//步进
	AddThread2(String name,E element,ArrayList<Window2<E>> win,Flag flag){
		super(name);
//		ArrayList<Window2<Integer>> winList = new ArrayList<>();
		this.flag = flag;
		this.win = win;
		this.element = element;
		this.winSum = win.size();
	}
//	public void waitThreadAll(){
//		for(Window2<E> element : win){
//			element.waitThread();
//		}
//	}
//	public void notifyAllThread(){
//		for(Window2<E> element : win){
//			element.notifyThread();
//		}
//	}
//	public void  add(E element){
//		//每次添加遍历一次窗口数组中的队列，看一下那个最短，如果满了
//		//等待，否则添加
//		int x = 0,index=0;
//		Integer i=0,y = win.get(0).size();
//		System.out.println("add Thread1");
//
//		win.get(0).waitThread();
//
//			for(;i<winSum-1;i++){
//				if(y > (x=win.get(i+1).size()) ){
//					y = x;
//					index = i+1;
//				}
//			}
//		win.get(index).add(element);
//		ing++;
//		win.get(0).notifyThread();
//	}
	public void run(){
		try {
			sleep(1);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		for(int i=0;i<1000;i++){
			
			flag.setFlag(true);//true代表我要添加了，减的操作暂停！
			
			win.get(1).add(element,win);

		}
	}
}
