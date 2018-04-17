package bank2;

import java.util.ArrayList;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

import bank.Window;

public class TestWindow2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		Lock lockAdd= new ReentrantLock();
		Lock lockDel= new ReentrantLock();
		Condition cond = lockDel.newCondition();
		Flag flag = new Flag();
//		Window2(String name,ArrayBlockingQueue<E> queue,Lock lock ,Condition cond){

		ArrayBlockingQueue<Integer> queue1 = new ArrayBlockingQueue<>(10);
		Window2<Integer> win1 = new Window2<>("数组[0]",queue1,lockDel,cond,flag);
		
		ArrayBlockingQueue<Integer> queue2 = new ArrayBlockingQueue<>(10);
		Window2<Integer> win2 = new Window2<>("数组[1]",queue2,lockDel,cond,flag);

		ArrayBlockingQueue<Integer> queue3 = new ArrayBlockingQueue<>(10);
		Window2<Integer> win3 = new Window2<>("数组[2]",queue3,lockDel,cond,flag);
		
//		AddThread2(E element,Window2<E>[]win){
		ArrayList<Window2<Integer>> winList = new ArrayList<>();
		winList.add(win1);
		winList.add(win2);
		winList.add(win3);
		AddThread2<Integer> addThread = new AddThread2<>("排号器",1,winList,flag);
//		DelThread2(String name,Window<E> ...win){

		DelThread2<Integer> minusThread1 = new DelThread2<>("<减号1>",win1);
		DelThread2<Integer> minusThread2 = new DelThread2<>("<减号2>",win2);
		DelThread2<Integer> minusThread3 = new DelThread2<>("<减号3>",win3);
		addThread.start();
		minusThread1.start();
		minusThread2.start();
		minusThread3.start();

	}

}
