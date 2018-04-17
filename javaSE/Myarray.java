public class Myarray {
	static int[] arr={9,10,100,99,8,7,3};
	     void remove(int index){   //根据索引，删除一个值
		   int arr_temp[];
		   if(index+1>arr.length)return;
		   if(index<0)return;
		   arr_temp=new int[arr.length-1];
		   for(int i=0;i<index;i++){
			arr_temp[i]=arr[i];
		   }
		   for(int i=index+1;i<arr.length;i++){
			arr_temp[i-1]=arr[i];
		   }
		  	arr = arr_temp;
		   
	     }

             void add(int position,int value){ //在指定位置插入一个数值
		     int[] arrFront;
		   if(position+1>arr.length)return;
		   if(position<0)return;
		   arrFront=new int[arr.length+1];
		   //遍历数组取position前面的数组
	             for(int i=0;i<position;i++){
			arrFront[i] = arr[i];
		     }
	             for(int i=position;i<arr.length;i++){
			arrFront[i+1] = arr[i];
		     }
		     arrFront[position]=value;
		     arr=arrFront;
	     }
             void set(int position,int value){ //修改某个位置的数值
		  for(int i=0;i<=position;i++){
			if(i==position){
			   arr[i] = value;
			}
		  }
	     }

	     void add(int value){  //追加一个值
		  int[] arr2;
		  int var_length=arr.length;
		  arr2=new int[var_length+1];	
		  for(int i=0;i<var_length;i++){
			arr2[i] = arr[i];
		  }
		  arr2[var_length]=value;
		  arr = arr2;
		
	     }
	    //遍历数组，并且打印	
 		public    String toString(){
		String result="";	
		for(int i=0;i<arr.length;i++){
			result+=arr[i]+" ";
		}
		return result;
	     }
             //int get(int index); //根据索引，获得元数的值
	int get(int index){
		if(index > arr.length|| index<0)return -1;
		else
		for(int i=0;i<=index-1;i++){
			return arr[index];
		}	
		return -1;
	}
             //int size();  //获得动态数组中元素的个数；
	public int size(){
		return  arr.length;
	}
	public static void main(String[] args){
		Myarray a = new Myarray();
		int result = a.get(2);
		if(result==-1) 
			System.out.println("index输入错误!");
		else
			System.out.println("Got it!result="+result);
		System.out.println("数组的长度为："+a.size());
		a.add(123);
		System.out.println(a);
		System.out.println("数组的长度为："+a.size());
		a.set(1,9099);
		System.out.println(a);
		a.add(3,888);
		System.out.println(a);
		a.remove(3);
		System.out.println(a);
	