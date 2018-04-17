package bank2;

import java.util.ArrayList;
import java.util.Random;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

import bank.Window;

public class DelThread2<E> extends Thread{
	private Window2<E> win = null;
//	int length = 0;//可变数组长度
//	int index;
	DelThread2(String name,Window2<E> win){//index代表传入的
		//Window2在数组中的对应的下标
		super(name);
//		this.index = index;
		this.win = win;
		
	}
//	public void remove(){
//
//			Random random = new Random();
//			int index=random.nextInt(length);
////			System.out.println("删除数组下标："+index);
//			win[index].remove();
//
//		
//	} 

	public void run(){


		for(int i=0;i<1000;i++){
//			System.out.println(getName()+"删除"+i+"...");
			if(i!=3){
				win.remove(i);

			}
		}
			
	}
}
