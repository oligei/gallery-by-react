public class LingXing2{
	public static void main(String[] args){
		//�������Σ�
		int lines = 11;//����
		int mid = 11/2+1;//�м�����=�м�����
		for(int i=1;i<=mid;i++){//i=����
			for(int j=1;j<=mid-i;j++){//j������mid-i�ǿո�����
				System.out.print(" ");	
			}
			if(i != 1)
			System.out.print("*");//�ո���������Ŵ�ӡһ���Ǻ�
			for(int k=1;k<=2*(i-2)+1;k++){// k�ǵ�һ���Ǻ��Ҳ�Ŀո�����
				System.out.print(" ");	
/* 
//6�У�11�� mid=6
     *
    * *
   *   *
  *     *
 *       *
*         *
	����˵����
	����	�ո���
	2	1
	3	3
	4	5
	5	7
�ܽ���ɣ�
	�ո���=2*(����-2)+1
�ո���=j
����=i
   i-2 = (j-1)/2 
��3�У�j=1 i=3
��4�У�j=2 i=4
��5�У�j=3 i=5

*/
			}
	//		if(i != 1)//��ֹ��һ�ж��*��
				System.out.println("*");
//			else
	//			System.out.println();
			
			
		}
//����������������״
/*
//5�� 9��
  *       *
   *     *
    *   *
     * *
      * 
	//���ɣ�
��ߵ�*	�ո���	����
         1	1
	 2	2
�ұߵ�*	�ո���	����
	 7	1
	 5	2
	 3	3
	 1	4
*/
		for(int i=1;i<mid;i++){//������i=����
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

