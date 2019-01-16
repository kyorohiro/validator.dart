part of validator;

// Helper functions for validator and sanitizer.

_shift(List l) {
  if (l.length >= 1) {
    var first = l.first;
    l.removeAt(0);
    return first;
  }
  return null;
}

Map _merge(Map<dynamic,dynamic> obj, defaults) {
  if (obj == null) {
    obj = new Map();
  }

  defaults.forEach((key, val) {
    if(!obj.containsKey(key)) {
      obj[key] = val;
    }
    // obj.putIfAbsent(key, () => val);
  });
  return obj;
}