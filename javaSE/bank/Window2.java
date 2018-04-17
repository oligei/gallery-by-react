package bank2;

import java.util.ArrayList;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class Window2<E> {
	ArrayBlockingQueue<E> queue = null;
	Lock lock = null;
	Flag flag = null;
	static int length = 0;
	String name;
	Condition cond; 
	private static int INDEX = -1;
	public int getIndex() {
		return INDEX;
	}

	public void setIndex(int index) {
		INDEX = index;
	}

	Window2(String name,ArrayBlockingQueue<E> queue,Lock lock ,Condition cond,Flag flag){
		this.queue = queue;
		this.flag = flag;
		this.name = name;//窗口名字
		this.lock = lock;
		this.cond= cond;

	}
	
	public static int getLength() {
		return length;
	}

	public static void setLength(int length) {
		Window2.length = length;
	}

	public Integer size(){
		return queue.size();
	}
	public void remove(int in){
		/*i=for循环中的i，目的是为了检查时方便
		 * true:取号器没有取号，没有人来，可以减队列
		 * false:取号器要添加新号码，不能减，也不能再加了
		 */
//		System.out.println("删除 begin...");

				lock.lock();
				try {
					if(flag.isFlag()){
						System.out.println("WaitBegin"+in +" "+name+" size="+queue.size());
						cond.await();
						System.out.println("WaitEnd:"+in +" "+name+" size="+queue.size()+" in="+in);
						
					}
					
						System.out.println("DelBegin:"+in +" "+name+" size="+queue.size());
						if(!queue.isEmpty()){
							queue.take();
							setLength(queue.size());
							System.out.println("DelEnd"+in +" "+name+" size="+queue.size());
						}
						else
						{
							System.out.println("队列空了  :size=" +queue.size()+name+" in="+in);
	
						}	
					
					
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}finally{
					lock.unlock();
				}
		
	}

	public void  add(E element,ArrayList<Window2<E>> win){
		//每次添加遍历一次窗口数组中的队列，看一下那个最短，如果满了
		//等待，否则添加
		int x = 0,index=0;
		Integer i=0,y = win.get(0).size();
		int winSum = win.size();
		lock.lock();
		try{
		 if(flag.isFlag()){
			for(;i<winSum-1;i++){
				if(y > (x=win.get(i+1).size()) ){
					y = x;
					index = i+1;
				}
			}
			setIndex(index);//数组下标
//			System.out.println("index="+index);
			System.out.println("addBegin "+" 数组["+getIndex()+"]size=:"+win.get(index).queue.size());
			
			try {
				int len=0;
				win.get(index).queue.put(element);
				setLength(len = win.get(index).queue.size());
				System.out.println("addEnd 数组["+getIndex()+"]size=:"+len);
				flag.setFlag(false);//添加完毕，可以删除了！
				cond.signalAll();
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

//			win.get(index).add(element, index);
		 }
		}finally{

			lock.unlock();
			System.out.println("Add unlock!");
		}

			

	}
	public  void add(E element,int index){
		System.out.println("...");
//		try {
			/*
			 * true:取号器没有取号，没有人来，可以减队列;或者要添加到本队列了
			 * false:取号器要添加新号码，不能减，也不能再加了
			 */

//				
//					
//					
//					
//			} catch (InterruptedException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}finally{
//				
//			}

	}
//	public void waitThread(){//只有减需要wait，因为是1：n<=>排号器：减队列的关系
//		System.out.println("add Thread2");
//
//		
//		try{
//			lock.lock();
//			System.out.println("add Thread3");
//
//			cond.await();
//			System.out.println("add Thread4");
//			
//		}catch (InterruptedException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}finally{
//			lock.unlock();
//		}
//	}
//	
//	public void notifyThread(){
//		 
//			lock.lock();
//			cond.signalAll();
//			lock.unlock();
//	}
}
