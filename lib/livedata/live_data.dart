// Generic LiveData class which doesn't allow changing the value. To be used for exposing MutableLiveData outside of a ViewModel
class LiveData<T> {
  T currentValue;  // Lookup Generics
  void Function(T newValue)? onChange;  

  LiveData({required this.currentValue});

  T get value {
    return currentValue;
  }

  void observe(void Function(T newValue) onChange) {
    this.onChange = onChange;
  }
}
