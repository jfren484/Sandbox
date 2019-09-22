public class TestMerge {
	public static void printArray(Integer [] array, int len) {
		for (int pos=0; pos < len; ++pos) {
			System.out.print(" " + array[pos]);
		}
		System.out.println();
	}
	
	public static void main(String[] args) {
		Integer [] vals = { 20, 17, 14, 11, 8, 5, 2, 1, 4, 7, 10, 13, 16, 19, 0, 3, 6, 9, 12, 15, 18};
		Integer [] hold = {  0,  0,  0,  0, 0, 0, 0, 0, 0, 0,  0,  0,  0,  0, 0, 0, 0, 0,  0,  0,  0};
		ArrayIter<Integer> valsBegin = new ArrayIter<Integer>(vals);
		ArrayIter<Integer> tempStorage = new ArrayIter<Integer>(hold);
		int N;
		
		// test length 1
		N = 1;
		System.out.println("Test case length=1");
		Mergesort.sort(valsBegin, new ArrayIter<Integer>(vals,N), tempStorage, (a,b)-> (a < b));
		printArray(vals, N);
		
		// test length 2
		N = 2;
		System.out.println("Test case length=2");
		Mergesort.sort(valsBegin, new ArrayIter<Integer>(vals,N), tempStorage, (a,b)-> (a < b));
		printArray(vals, N);
		
		// test length 3
		N = 3;
		System.out.println("Test case length=3");
		Mergesort.sort(valsBegin, new ArrayIter<Integer>(vals,N), tempStorage, (a,b)-> (a < b));
		printArray(vals, N);
		
		// test length 4
		N = 21;
		System.out.println("Test case length=21");
		Mergesort.sort(valsBegin, new ArrayIter<Integer>(vals,N), tempStorage, (a,b)-> (a < b));
		printArray(vals, N);
	}
}