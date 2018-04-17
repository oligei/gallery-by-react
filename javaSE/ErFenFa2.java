public class ErFenFa2{
//error
	
public static int two(int[] tmp,int in){

		int begin = 0;

		int end   = tmp.length - 1;

		int mid ;

		for(int i=0;i<tmp.length/2;i++){

			mid = (end + begin)/2;
	
		System.out.println("mid="+mid);
	
		if(in > tmp[mid]){
	
			begin = mid+1;
	
			System.out.println("begin="+begin);

		}else if( in < tmp[mid]){

				end = mid-1;
	
				System.out.println("end="+end);
	
		}else{

				return mid;

			}

		}

		return -2;

	}

	public static void main(String[] args){
	
	int[] arr = {0,3,5,7,8,9,11,14};		
	//二分法查找9，用最少的次数
//
	int[] tmp = arr;

		for(int i=0;i<arr.length;i++){

			System.out.println("arr's index="+two(arr,arr[i]));

		}
			//System.out.println("arr's index="+two(arr,8));
	}
}

