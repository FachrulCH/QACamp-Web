# Ruby for Tester

Dalam tutorial ini kita akan menggunakan bahasa pemrograman Ruby, bahasa pemrograman yang mudah untuk dipelajari bagi pemula, dan memiliki ekosistem library pengujian yang sangat baik
Kita akan mempelajari dasar pemrograman ruby bagi seorang penguji (tester), tidak perlu mendalam pembahasan OOP nya tapi langsung ke praktik bagian yang sangat penting untuk dikuasai

Akan sangat baik jika kamu mengikuti tutorial interaktif di https://www.codecademy.com/courses/learn-ruby/

## Class / object

```rb
class Indomie
   def dimakan
      puts "Sedang  memakan indomie!"
   end
end

# cara penggunaan
kari_ayam = Indomie.new
kari_ayam.dimakan
```

## Method

Mirip seperti bahasa pemrograman lain, dalam ruby sebuah function atau block pemrograman disebut method, dnegan nama terdiri dari huruf kecil, bisa juga dua kata digabung dengan underscore. Harap jangan mengunakan penamaan variabel dengan/diawali huruf besar, karena bisa jadi ruby program akan mengira bahwa itu adalah konstanta

```rb
def fill_form(name, locator = default)
   kode blok disini...
end

# cara penggunaan
fill_form 27, 'form[0]'
```

## Variable

Variabel adalah alokasi memori, yang mana menampung data dari program ruby, ada beberapa tipe dari variabel diantaranya:

### Local variable

Adalah variabel yang di deklarasikan di dalam blok method, dimana variabel ini tidak akan bisa diakses dari luar method, local variable dibuat dengan mengawali nama variable dengan _ atau huruf kecil
```rb
def show
  some_data = 'local variable'
  puts some_data
end
puts some_data # => NameError: undefined local variable or method `some_data' for main:Object

```

### Instance variable

Adalah variabel yang bisa diakses dari berbagai method dalam satu instance/object. itu berarti isi dari variabel bisa di ganti oleh berbagai method dalam satu instance, Instance variable dibuat dengan mengawali nama variabel dengan simbol @ lalu nama variabel nya

```rb
class Customer
   def initialize(id, name, addr)
      @cust_id = id
      @cust_name = name
      @cust_addr = addr
   end
   def display_details()
      puts "Customer id #@cust_id"
      puts "Customer name #@cust_name"
      puts "Customer address #@cust_addr"
   end
end
```

### Class variable

Adalah variabel yang bisa diakses oleh objek/instance yang berbeda tetapi dari class yang sama, class variable dibuat dengan mengawali nama variable dengan simbol @@ lalu diikuti dengan nama variabelnya

```rb
class Customer
   @@no_of_customers = 0
   def initialize(id, name, addr)
      @cust_id = id
      @cust_name = name
      @cust_addr = addr
   end
   def display_details()
      puts "Customer id #@cust_id"
      puts "Customer name #@cust_name"
      puts "Customer address #@cust_addr"
   end
   def total_no_of_customers()
      @@no_of_customers += 1
      puts "Total number of customers: #@@no_of_customers"
   end
end
```

### Global variable

Adalah variabel yang bisa diakses oleh class manapun, secara unik, global variabel diawali oleh tanda dolar $

```rb
$global_variable = 10
class Class1
   def print_global
      puts "Global variable in Class1 is #$global_variable"
   end
end
```

### Constants

```rb
class Example
   VAR1 = 100
   VAR2 = 200
   def show
      puts "Value of first Constant is #{VAR1}"
      puts "Value of second Constant is #{VAR2}"
   end
end
```

### Array

Adalah seri dari object data yang dipisahkan oleh koma dan dalam kurung siku.

```rb
ary = [  "fred", 10, 3.14, "This is a string", "last element", ]
ary.each do |i|
   puts i
end
```

### Hashes

Adalah object yang dibuat dengan rangkaian key/value dalam kurung kurawal

```rb
hsh = colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }
hsh.each do |key, value|
   print key, " is ", value, "\n"
end
```

## Operator

Operator dalam ruby ada banyak, umumnya seperti bahasa pemrograman lain, tapi yang unik adalah simbol operator bisa jadi adalah sebuah method dari instance juga

### Operator aritmatik
| Simbol | Arti |
|---|---|
|+   | pertambahan |
|-   | pengurangan |
|*   | perkalian|
|/   | pembagian|
|%   | modulus|
|**  | exponen/pangkat|

### Operator komparasi
| Simbol | Arti |
|---|---|
|==  | persamaan, mengevaluasi kesamaan nilai|
|!=  | pertidak samaan|
|>   | lebih besar|
|<   | lebih kecil|
|>=  | lebih besar sama dengan|
|<=  | lebih kecil sama dengan|
|<=> | kombinasi persamaan, mengembalikan 0 jika yang argumen pertama sama dengan yang kedua, mengembalikan 1 jika pertama lebih besar, mengembalikan -1 jika yang pertama lebih kecil |
|===     | persamaan level|
|.eql?   | persamaan sampai level data tipe|
|equal?  | persamaan sampai level object id|

### Parallel assignment

```rb
a = 10
b = 20
c = 30
# sama dengan
a, b, c = 10, 20, 30
```

### Logical

and (&&)  : jika dan hanya jika
or (||)   : jika atau hanya jika
not (!)   : negasi
?:        : jika false maka

## Loops

```rb
$i = 0
$num = 5

while $i < $num  do
   puts("Inside the loop i = #$i" )
   $i +=1
end

begin
   puts("Inside the loop i = #$i" )
   $i +=1
end while $i < $num

until $i > $num  do
   puts("Inside the loop i = #$i" )
   $i +=1;
end

begin
   puts("Inside the loop i = #$i" )
   $i +=1;
end until $i > $num

for i in 0..5
   puts "Value of local variable is #{i}"
end

(0..5).each do |i|
   puts "Value of local variable is #{i}"
end

# break akan mengakhiri looping
for i in 0..5
   if i > 2 then
      break
   end
   puts "Value of local variable is #{i}"
end

# next akan melompati looping (skip)
for i in 0..5
   if i < 2 then
      next
   end
   puts "Value of local variable is #{i}"
end

begin
   do_something # exception raised
rescue
   # handles error
   retry  # restart from beginning
end

```

## Hash