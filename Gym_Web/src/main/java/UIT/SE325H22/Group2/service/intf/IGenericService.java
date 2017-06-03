package UIT.SE325H22.Group2.service.intf;

import java.util.List;

public interface IGenericService <E, I> {
    public List<E> getAll();
    public E get(I id);
    public void insert(E entity);
    public void update(E entity);
    public void delete(I id);
}
