interface Iter<T> {
  public boolean isEqualTo(Iter<T> other);
  public T get();
  public void set(T value);
  public void next();
  public Iter<T> copy();
}
