package ch7.demo1.dao.test ;
import java.util.* ;
import ch7.demo1.factory.DAOFactory ;
import ch7.demo1.vo.* ;
public class TestDAOSelect{
	public static void main(String args[]) throws Exception{
		List<Emp> all = DAOFactory.getIEmpDAOInstance().findAll("") ;
		Iterator<Emp> iter = all.iterator() ;
		while(iter.hasNext()){
			Emp emp = iter.next() ;
			System.out.println(emp.getEmpno() + "¡¢" + emp.getEname() + " --> " + emp.getJob()) ;
		}
	}
}