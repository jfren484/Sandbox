public class Mergesort {
	public static <T> void print(String caption, Iter<T> begin, Iter<T> end) {
      // Make copies of all iterators whose next method will be called
		Iter<T> pos = begin.copy();
		System.out.println(caption + ": ");
		for (; !pos.isEqualTo(end); pos.next()) {
			System.out.print(" " + pos.get());
		}
		System.out.println("");
	}
	
	
	public static <T> void swap(Iter<T> a, Iter<T> b) {
		T c = a.get();
		a.set(b.get());
		b.set(c);
	}
	
	public static <T> Iter<T> append(Iter<T> resultHold, Iter<T> begin, Iter<T> end) {
      // Make copies of all iterators whose next method will be called
		Iter<T> pos = begin.copy();
		Iter<T> result = resultHold.copy();
		
		for (; !pos.isEqualTo(end); result.next(), pos.next()) {
			result.set(pos.get());
		}
		return result;
	}
	
	public static <T> void merge(Iter<T> begin1, Iter<T> end1, Iter<T> begin2, Iter<T> end2, Iter<T> result, 
		Iter<T> beginHold, Compare<T> cmp) {
      	
		// Make copies of all iterators whose next method will be called
		Iter<T> pos = beginHold.copy();
		Iter<T> iter1 = begin1.copy();
		Iter<T> iter2 = begin2.copy();
      
		// Debugging information
		System.out.println("merging");
		print("list 1", iter1, end1);
		print("list 2", iter2, end2);

		while (!iter1.isEqualTo(end1) && !iter2.isEqualTo(end2)) {
			if (cmp.precedes(iter2.get(), iter1.get())) {
				// the iter2's value is used next
				pos.set(iter2.get());
				pos.next();
				iter2.next();
			} else {
				// the iter1's value is used next
				pos.set(iter1.get());
				pos.next();
				iter1.next();
			}
		}
    
		pos = append(pos, iter1, end1);
		pos = append(pos, iter2, end2);
		Iter<T> resultEnd = append(result, beginHold, pos); // used for debugging
		print("merged list", result, resultEnd);
	}
	
	public static <T> void sort(Iter<T> begin, Iter<T> end, Iter<T> hold, Compare<T> cmp) {
      // Make copies of all iterators whose next method will be called
		Iter<T> pos = begin.copy();
		Iter<T> mid = begin.copy();
		
		System.out.println("Inside sort");
		
		int size = 0;
		// count the items in the list and find the middle of the list
		for (; !pos.isEqualTo(end); pos.next(), ++size) {
			System.out.print(" " + pos.get());
			if (0 == size % 2) { mid.next(); } // increment mid every other time
		}	
		System.out.println("; Found middle; size=" + size);
		
		if (size <= 2) { 
			if (2 == size && cmp.precedes(mid.get(),begin.get())) {
				swap(begin, mid);
			}
			return;
		}
		
		sort(begin, mid, hold, cmp);
		sort(mid, end, hold, cmp);
		merge(begin, mid, mid, end, begin, hold, cmp);
	}
}
