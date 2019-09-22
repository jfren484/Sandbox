@FunctionalInterface
interface Compare<T> {
	public boolean precedes(T a, T b);
}
