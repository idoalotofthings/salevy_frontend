class LiveData<T> {
  T currentValue;
  void Function(T newValue)? onChange;

  LiveData({required this.currentValue});

  T get value {
    return currentValue;
  }

  void observe(void Function(T newValue) onChange) {
    this.onChange = onChange;
  }
}
