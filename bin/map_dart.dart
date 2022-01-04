//Map
//Map is a collection of key/value pairs, from which you retrieve a value using its associated key.
//KEY has to be unique.
//VALUE can be duplicate.

//*************************************************************************************************************************
//                                           Constructors

//Map()
void main() {
  Map<String, String> fruits = Map();
  fruits["apple"] = "red";
  print(fruits["apple"]);

//Map.from()     #Map.from(Map other)

  Map<String, String> map1 = {
    'apple': 'red',
    'banana': 'yellow',
    'orange': 'orange',
  };
  Map map2 = Map.from(map1);
  print(map2);

//Map.fromEntries()     #Map.fromEntries(Iterable<MapEntry<K, V>> entries)
       //Creates a new map and adds all entries.
  Iterable<int> someInts = [
    2,
    7,
    9,
    4,
    17,
    15,
  ];
  var squareMap = Map.fromEntries(someInts.map((n) => MapEntry(n, n * n)));
  print(squareMap[9]);
  var map8 = Map.fromEntries(someInts.map((e) => MapEntry(e, e * 2)));
  print(map8);
//Map.fromIterable()    #Map.fromIterable(Iterable iterable, {K key(dynamic element), V value(dynamic element)})
  //Creates a Map instance in which the keys and values are computed from the iterable.

  List<int> number = [1, 2, 3];
  Map<String, int> map3 = Map.fromIterable(
    number,
    key: (k) => 'double' + k.toString(),
    value: (v) => v * 2,
  );
  print(map3);

//Map.fromIterables()    #Map.fromIterables(Iterable<K> keys, Iterable<V> values)
  //Creates a Map instance associating the given keys to values.

  List<String> letters = ['I', 'V', 'X'];
  List<int> numbers = [1, 5, 10];
  Map<String, int> collide = Map.fromIterables(letters, numbers);
  print(collide);

//Map.of()      #Map.of(Map<K, V> other)
  //Creates a Map with the same keys and values as other.
  //It is like Map.from(),But error in this occur during Compilation.
  //Map<String, String> map1 = Map.from(map); // runtime error
  //Map<String, String> map2 = Map.of(map);   // compilation error

  Map<String, String> newmap = {
    'apple': 'red',
    'banana': 'yellow',
    'orange': 'orange',
  };
  Map newmap1 = Map.from(newmap);
  print(newmap1);

//Map.unmodifiable()    #Map.unmodifiable(Map other)
  //Creates an unmodifiable hash based map containing the entries of other.
  //The resulting map behaves like the result of Map.from, except that the map returned by this constructor is not modifiable.

  Map<String, int> mod = {
    "cat": 6,
    "dog": 10,
    "rat": 21,
  };
  Map mod1 = Map.unmodifiable(mod);
  print(mod1);

//Map.identity()
  //Creates an identity map with the default implementation.
  //The returned map allows null as a key. It iterates in key insertion order.

//**********************************************************************************************

//                                        Properties

//entries → Iterable<MapEntry<K, V>>

  Iterable<int> someInt = [
    2,
    7,
    9,
    4,
    17,
    15,
  ];
  var map0 = Map.fromEntries(someInts.map((e) => MapEntry(e, e * 2)));
  print(map0.entries);

//keys          #keys → Iterable<K>
  //Returns an iterable object representing keys.
  var details = {'Usrname': 'tom', 'Password': 'pass@123'};
  print(details.keys);

//values       #values → Iterable<V>
  //Returns an iterable object representing values in the Map.
  var detail = {'name': 'job', 'age': '12'};
  print(detail.values);

//length
  //Returns the size of the Map.
  var player = {'barca': 'messi', 'juv': 'Rono', 'psg': 'neymar'};
  print(player.length);

//isEmpty        #isEmpty → bool
  //Returns true if there is no key/value pair in the map.
  var play = {'barca': 'messi', 'juv': 'Rono', 'psg': 'neymar'};
  print(play.isEmpty);
  var plays = {};
  print(plays.isEmpty);

//isNotEmpty       #isNotEmpty → bool
  //Returns true if there is at least one key/value pair in the map
  var game = {'football': 'ball', 'cricket': 'bat', 'Tennis': 'bat'};
  print(game.isNotEmpty);
  var games = {};
  print(games.isNotEmpty);

//hashCode         #hashCode → int
  //A hash code is a single integer which represents the state of the object that affects operator == comparisons.
  print(game.hashCode);

//runtimeType         #runtimeType → Type
  //A representation of the runtime type of the object.
  print(game.runtimeType);

//****************************************************************************************************

//                               Methods

//addAll()          #addAll(Map<K, V> other) → void
  //Adds all key/value pairs of other to this map.
  //If a key of other is already in this map, its value is overwritten.

  Map note = {'Rakesh': 'Forward'};
  print('Map :${note}');
  note.addAll({'adhi': 'Mid'});
  print('Map after using addAll() method  :${note}');

//clear()               #clear() → void
  //Removes all pairs from the map.
  note.clear();
  print(note);

//containsKey()         #containsKey(Object? key) → bool
  //Returns true if any of the keys in the map are equal to key according to the equality used by the map.

  Map<String, int> vehicle = {'car': 4, 'bus': 6, 'bike': 2};
  print(vehicle.containsKey('car'));

//containsValue()         #containsValue(Object? value) → bool
  //Returns true if this map contains the given value.

  print(vehicle.containsValue(7));

//forEach()      #forEach(void f(K key, V value)) → void
  //Applies f to each key/value pair of the map.
  //Calling f must not add or remove keys from the map.

  var usrMap = {"name": "Tom", 'Email': 'tom@xyz.com'};
  usrMap.forEach((k, v) => print('${k}: ${v}'));

//putIfAbsent()         #putIfAbsent(K key, V ifAbsent()) → V
  //Look up the value of key, or add a new value if it isn't there.

  Map<String, int> scores = {'Bob': 36};
  for (var key in ['Bob', 'Rohan', 'Sophena']) {
    scores.putIfAbsent(key, () => key.length);
  }
  print(scores['Bob']); // 36
  print(scores['Rohan']);
  print(scores['Sophena']);

//remove()               #remove(Object? key) → V?
  //Removes key and its associated value, if present, from the map.
  var point = {'Ram': 34, 'John': 56, 'Ali': 45, 'jame': 67};
  point.remove('Ram');
  print(point);

//removeWhere()            #removeWhere(bool predicate(K key, V value)) → void
  //Removes the key/value pair if the given condition is true

  point.removeWhere((key, value) => key == 'Ali');
  print(point);

//update()      #update(K key, V update(V value), {V ifAbsent()}) → V
  //Returns the new value of the key.

  point.update('John', (value) => 45);
  print(point);

//toString()        #toString() → String
  //Returns a string representation of this object.

  point.toString();
  print(point);

//noSuchMethod(Invocation invocation) → dynamic
       //Invoked when a non-existent method or property is accessed. 

//Updates all values.
  //Iterates over all entries in the map and updates them with the result of invoking update.

//map<K2, V2>()              #map<K2, V2>(MapEntry<K2, V2> f(K key, V value)) → Map<K2, V2>
  //Returns a new map where all entries of this map are transformed by the given f function.

//addEntries()       #addEntries(Iterable<MapEntry<K, V>> newEntries) → void
  //Adds all key/value pairs of newEntries to this map.

//cast<RK, RV>() → Map<RK, RV>
}
