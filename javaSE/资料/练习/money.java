package abcc;

public class Customer {
/*
 * 3.写一个测试程序。
（1）	创建一个Customer ，名字叫 Jane Smith, 他有一个账号为1000，余额为2000元，年利率为 1.23％ 的账户。
（2）	对Jane Smith操作。
存入 100 元，再取出960元。再取出2000元。
打印出Jane Smith 的基本信息
 */
	String name;
	int account ;
	double balance ;
	double rate;
	public Customer(String name,int account ,
			double balance,double rate){
		this.name = name;
		this.account = account;
		this.balance = balance;
		this.rate = rate;
	}
	void in(double money){
		this.balance += money;
		System.out.println("balance="+this.balance);
	}
	boolean out(double money){
		if(balance > money || balance == money){
			balance = balance - money;
			System.out.println("取钱成功：balance="+this.balance+" 取钱："+money);
			return true;
		}
		else{
			System.out.println("取钱失败：balance="+this.balance+" 取钱："+money);

			return false;
		}
			
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Customer cust = new Customer(
				"Jane Smith",
				1000,
				2000d,
				0.0123d
				);
		cust.in(20);
		cust.out(2000);
		cust.out(30);
	}

}
