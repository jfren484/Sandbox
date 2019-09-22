import java.util.ArrayList;

public class ArrayListIter<T> implements Iter<T> {
	private ArrayList<T> theList;
	private int index;
	
	public ArrayListIter(ArrayList<T> _theList) {
		theList = _theList;
		index = 0;
	}
	
	public ArrayListIter(ArrayList<T> _theList, int _index) {
		theList = _theList;
		index = _index;
	}
	
	public ArrayListIter(ArrayListIter<T> toCopy) {
		theList = toCopy.theList;
		index = toCopy.index;
	}
	
	public void next() { ++index; }
	public T get() { return theList.get(index); }
	public void set(T value) { theList.set(index, value); }
	public Iter<T> copy() { return new ArrayListIter<T>(this, index); }

	public boolean isEqualTo(Iter<T> other) { 
		if (other instanceof ArrayListIter) {
			try {
				ArrayListIter<T> _other = (ArrayListIter<T>) other;
				return (theList == _other.theList && index == _other.index);
			} catch (ClassCastException cce) { return false; }
		} else { return false; }
	}
}
