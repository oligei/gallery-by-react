package ch7.demo1.factory ;
import ch7.demo1.dao.IEmpDAO ;
import ch7.demo1.dao.proxy.EmpDAOProxy ;
public class DAOFactory {
	public static IEmpDAO getIEmpDAOInstance() throws Exception{
		return new EmpDAOProxy() ;
	}
}