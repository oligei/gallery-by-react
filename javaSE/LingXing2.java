public class LingXing2{
	public static void main(String[] args){
		//空心菱形：
		int lines = 11;//行数
		int mid = 11/2+1;//中间行数=中间列数
		for(int i=1;i<=mid;i++){//i=行数
			for(int j=1;j<=mid-i;j++){//j列数，mid-i是空格数量
				System.out.print(" ");	
			}
			if(i != 1)
			System.out.print("*");//空格打完后紧接着打印一个星号
			for(int k=1;k<=2*(i-2)+1;k++){// k是第一个星号右侧的空格数量
				System.out.print(" ");	
/* 
//6行，11列 mid=6
     *
    * *
   *   *
  *     *
 *       *
*         *
	举例说明：
	行数	空格数
	2	1
	3	3
	4	5
	5	7
总结规律：
	空格数=2*(行数-2)+1
空格数=j
行数=i
   i-2 = (j-1)/2 
第3行：j=1 i=3
第4行：j=2 i=4
第5行：j=3 i=5

*/
			}
	//		if(i != 1)//防止第一行多打*号
				System.out.println("*");
//			else
	//			System.out.println();
			
			
		}
//空心菱形下三角形状
/*
//5行 9列
  *       *
   *     *
    *   *
     * *
      * 
	//规律：
左边的*	空格数	行数
         1	1
	 2	2
右边的*	空格数	行数
	 7	1
	 5	2
	 3	3
	 1	4
*/
		for(int i=1;i<mid;i++){//下三角i=行数
			for(int j=1;j<=i;j++){
				System.out.print(" ");
			}
				System.out.print("*");
			for(int k=mid;k>2*(i-2)+1 ;k--){
				System.out.print(" ");
			}		
			if(i!=mid-1)
				System.out.println("*");
			else
				System.out.println();
		}
	}
}

