public class ArrayIter<T> implements Iter<T> {
	private T [] theList;
	private int index;
	
	public ArrayIter(T[] _theList) {
		theList = _theList;
		index = 0;
	}
	
	public ArrayIter(T[] _theList, int _index) {
		theList = _theList;
		index = _index;
	}
	
	public ArrayIter(ArrayIter<T> toCopy) {
		theList = toCopy.theList;
		index = toCopy.index;
	}
	
	public void next() { ++index; }
	public T get() { return theList[index]; }
	public void set(T value) { theList[index] = value; }
	public Iter<T> copy() { return new ArrayIter<T>(this, index); }
   
   public boolean isEqualTo(Iter<T> other) { 
   	if (other instanceof ArrayIter) {
   		// wrapping the test in a try/catch since I am a Java newbie
   		try {
   			ArrayIter<T> _other = (ArrayIter<T>) other;
   			//System.out.println("The indices are " + index + " and " + _other.index);
   			return (theList == _other.theList && index == _other.index);
   		} catch (ClassCastException cce) { return false; }
   	} else { return false; }
   }
}