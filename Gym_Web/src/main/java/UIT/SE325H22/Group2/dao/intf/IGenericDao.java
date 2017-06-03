package UIT.SE325H22.Group2.dao.intf;

import java.util.List;

public interface IGenericDao<E,I> {
	public Integer insert(E entity) ;
    public void update(E entity) ;
    public void delete(I id);
    public E getById(I id);
    public List<E> getAll() ;
}
