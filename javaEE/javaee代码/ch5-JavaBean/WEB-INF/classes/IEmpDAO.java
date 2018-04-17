package ch7.demo1.dao ;
import java.util.* ;
import ch7.demo1.vo.* ;
public interface IEmpDAO {
	public boolean doCreate(Emp emp) throws Exception ;
	public List<Emp> findAll(String keyWord) throws Exception ;
	public Emp findById(int empno) throws Exception ;
}