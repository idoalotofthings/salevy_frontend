import 'live_data.dart';

// Generic MutableLiveData class which inherits from LiveData, allows changing the value.
class MutableLiveData<T> extends LiveData<T> {
  MutableLiveData({required super.currentValue});

  set value(T newValue) {
    if ((newValue != currentValue) && (onChange != null)) {
      onChange!(newValue);
    }

    currentValue = newValue;
  }
}
