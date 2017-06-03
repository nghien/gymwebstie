/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package UIT.SE325H22.Group2.viewmodel;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.TreeMap;

/**
 *
 * @author hung
 */
public class Mapper {
    private static Map<String, Field> analyze(Object object) {
        if (object == null) throw new NullPointerException();

        Map<String, Field> map = new TreeMap<String, Field>();

        Class<?> current = object.getClass();
        while (current != Object.class) {
            for (Field field : current.getDeclaredFields()) {
                if (!Modifier.isStatic(field.getModifiers())) {
                    if (!map.containsKey(field.getName())) {
                        map.put(field.getName(), field);
                    }
                }
            }
            current = current.getSuperclass();
        }
        return map;
    }
    
    static void copy(final Object to, final Object from) {
        Map<String, Field> fromFields = analyze(from);
        Map<String, Field> toFields = analyze(to);
        fromFields.keySet().retainAll(toFields.keySet());
        for (Entry<String, Field> fromFieldEntry : fromFields.entrySet()) {
            final String name = fromFieldEntry.getKey();
            final Field sourceField = fromFieldEntry.getValue();
            final Field targetField = toFields.get(name);
            if (targetField.getType().isAssignableFrom(sourceField.getType())) {
                sourceField.setAccessible(true);
                if (Modifier.isFinal(targetField.getModifiers())) continue;
                targetField.setAccessible(true);
                try {
                    targetField.set(to, sourceField.get(from));
                } catch (IllegalAccessException e) {
                    throw new IllegalStateException("Can't access field!");
                }
            }
        }
    }
    
     static public<D extends Object,S extends Object> D copy(S source, Class<D> dClazz,IOnMapper onMapper) throws InstantiationException, IllegalAccessException{
        D desc = dClazz.newInstance();
        copy(desc,source);
        if(onMapper!=null){
            onMapper.onMapperItem(desc, source);
        }
        return desc;
    }
    
     static public<D extends Object,S extends Object> ArrayList<D>  copy(ArrayList<S> sources, Class<D> dClazz,IOnMapper onMapper) throws InstantiationException, IllegalAccessException {
        ArrayList<D> descs = new ArrayList<>();
        Class c;
        for(S item : sources)
        {
            D desc = dClazz.newInstance();
            desc = copy(item,dClazz, onMapper);
            descs.add(desc);
        }
        return descs;
    }
     
     
     static public<D extends Object,S extends Object> List<D>  copyList(List<S> sources, Class<D> dClazz,IOnMapper onMapper) throws InstantiationException, IllegalAccessException {
         List<D> descs = new ArrayList<>();
         Class c;
         for(S item : sources)
         {
             D desc = dClazz.newInstance();
             desc = copy(item,dClazz, onMapper);
             descs.add(desc);
         }
         return descs;
     }
}
