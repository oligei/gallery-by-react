public class Myarray {
	static int[] arr={9,10,100,99,8,7,3};
	     void remove(int index){   //����������ɾ��һ��ֵ
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

             void add(int position,int value){ //��ָ��λ�ò���һ����ֵ
		     int[] arrFront;
		   if(position+1>arr.length)return;
		   if(position<0)return;
		   arrFront=new int[arr.length+1];
		   //��������ȡpositionǰ�������
	             for(int i=0;i<position;i++){
			arrFront[i] = arr[i];
		     }
	             for(int i=position;i<arr.length;i++){
			arrFront[i+1] = arr[i];
		     }
		     arrFront[position]=value;
		     arr=arrFront;
	     }
             void set(int position,int value){ //�޸�ĳ��λ�õ���ֵ
		  for(int i=0;i<=position;i++){
			if(i==position){
			   arr[i] = value;
			}
		  }
	     }

	     void add(int value){  //׷��һ��ֵ
		  int[] arr2;
		  int var_length=arr.length;
		  arr2=new int[var_length+1];	
		  for(int i=0;i<var_length;i++){
			arr2[i] = arr[i];
		  }
		  arr2[var_length]=value;
		  arr = arr2;
		
	     }
	    //�������飬���Ҵ�ӡ	
 		public    String toString(){
		String result="";	
		for(int i=0;i<arr.length;i++){
			result+=arr[i]+" ";
		}
		return result;
	     }
             //int get(int index); //�������������Ԫ����ֵ
	int get(int index){
		if(index > arr.length|| index<0)return -1;
		else
		for(int i=0;i<=index-1;i++){
			return arr[index];
		}	
		return -1;
	}
             //int size();  //��ö�̬������Ԫ�صĸ�����
	public int size(){
		return  arr.length;
	}
	public static void main(String[] args){
		Myarray a = new Myarray();
		int result = a.get(2);
		if(result==-1) 
			System.out.println("index�������!");
		else
			System.out.println("Got it!result="+result);
		System.out.println("����ĳ���Ϊ��"+a.size());
		a.add(123);
		System.out.println(a);
		System.out.println("����ĳ���Ϊ��"+a.size());
		a.set(1,9099);
		System.out.println(a);
		a.add(3,888);
		System.out.println(a);
		a.remove(3);
		System.out.println(a);
	