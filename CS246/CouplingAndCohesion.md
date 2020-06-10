### Coupling and Cohesion

#### Introduction
* Previously we have introduced the concept of Coupling
* Recall: the less coupled two modules are, the more you can change one module without affect the other
* We can always achieve perfect coupling, if everything was in a single module
* Cohesion is how closely elements of a module are related to each other
* Low cohesion could be an arbitrary grouping of unrelated elements (e.g. `<utility>`)
* Higher cohesion can include modules that share a common theme (`<algorithm>`), or better,
* We can achieve perfect cohesion by putting every function in its own module
* Good software design maximizes coupling and cohesion at the same time

#### Decoupling interfaces
Suppose we have the following class

```c++
class Chessboard {
  ...
  std::cout << "Your move: " << std::endl;
  ...
}
```

A class that uses stdout may be considered less extensible, because the code is no longer reusable in instances where we do not wish to print to stdout

A possible solution to this is to give a stream as a member

```C++
class Chessboard {
  istream &in
  ostream &out
  ...
}
```

If we wanted to use a game that has a graphical display, instead of a text display, this code is again not reusable. In order to extend this class to a graphical program, we need to change `Chessboard` class. This leads to the idea of a concept known as the single responsibility principle.

#### Single Responsibility Principle
We can start to decouple a module or class by assigning some roles. The chess "speaks" either through IO or graphics through the `Chessboard` class, and also handles the game logic. We can phrase the Single Responsibility Principle as

<blockquote style="text-align: center;"> "A class should only have one reason to change" </blockquote>

Where gameplay and communication are two separate reasons. Should we wish to change the gameplay or communication i.e. IO to Graphics, and not the other, we would still need to change code for both.

At this point we need to consider, how can we handle communication, if we don't want to do it through the `Chessboard` class?

#### Model View Controller
One architecture we can choose to use is called Model View Controller, or MVC.

In MVC we have at least 3 classes, in which we handle the state, our data in the "Model" classes, sequences of changes to data in "Controller", and communication through "View"

The classes can interact with each other, but we ensure that each class has one responsibility


### Exception safety
There is a difference between writing code, and writing robust code. Consider the following code

```C++
class MyClass {
  ...
}

void f() {
  MyClass* p = new MyClass();
  g();
  delete p;
}
```

Naively, we can suggest that this piece of code does not leak memory, and at first glance we might say this is true, but consider the case where our function call `g()` throws. Our program would leak memory

In order to try to fix this, we could suggest using a `try/catch` block

```C++
class MyClass {
  ...
}

void f() {
  MyClass* p = new MyClass();
  try {
    g();
  } catch (Exception e) {
    delete p;
    throw e;
  }
  delete p;
}
```

This code seems to provide a "no-leak" guarantee, at the cost of horribly violating anyone who reads this code.

In some languages, we are given a try/catch/finally structure, which allows you to clean up your allocated resources in the finally structure, but C++ does not support this.

Some other ways to fix this is to consider avoiding heap allocation in the first place. In our original piece of code, the simplest way is to just use the stack for `p`. When heap allocation is absolutely necessary, we have an idiom called RAII

#### rEsOUrcE acQuSitIOn iS IniTiAliZaTiON
* goodmeme.jpg

In order to explain what RAII is, lets look at filestreams in C++

```C++
{
  ifstream f {"file"}
}
```

At the end of this program, no matter how it has exited either naturally, via exception or other, the destructor is called on f. This is an example of RAII. Pointer to heap allocated resources are wrapped in a stack object, whose only job is to call the destructor when the stack pointer goes out of scope. The destructor will always be called

We can build this sort of functionality with a class

```C++
class RAII<T> {
  T* t;

  ...

  ~RAII() {
    delete t;
  }
}
```

But C++ already has a class for this, called `unique_ptr`, which acts like a pointer but uses the RAII idiom.

```C++
void f() {
  MyClass mc;
  std::unique_ptr<MyClass> p {new MyClass};
  g();
}
```

OR

```C++
void f() {
  MyClass mc;
  auto p = std::make_unique<MyClass>();
  g();
}
```

Note: suppose you have the following code
```C++
class MyClass {
  mc(int a, int b);
}

class OtherClass {

}

void f() {
  std::unique_ptr<MyClass> p {new MyClass(new OtherClass, new OtherClass)};
}
```

What happens when the second `new OtherClass` throws?

#### `unique_ptr`
`unique_ptr` and `make_unique` allows us to use RAII, and never use the `delete` keyword, and possibly even `new`.
`unique_ptr` emulates pointers by defining `operator*` and `operator->`.
However, we **cannot** use `unique_ptr` to give two pointers to an object


```C++

class C {...}

{
  auto p = make_unique<C>();
  unique_ptr<C> q = p;
}

```

When q and p go out of scope, this code causes a double free. In fact, C++ does not allow you to call a copy constructor on `unique_ptr` which is why it is named as such. The line assigning `q = p` is an error. If you want to have more than one copy of a pointer and use RAII, C++ provides a class called `shared_ptr`.

`unique_ptr` and `shared_ptr` actually belong to a family of classes called smart pointers

#### Implementing `unique_ptr`
We can produce a simple implementation of `unique_ptr` to see how RAII works

```C++
template<typename T> class unique_ptr {
  T *ptr;
public:
  explicit unique_ptr(T *p) : ptr{p} {}
  ~unique_ptr() {delete ptr;}
  unique_ptr(const unique_ptr<T> &other) = delete;
  unique_ptr &operator= (const unique_ptr<T> &other) = delete;

  unique_ptr(const unique_ptr<T> &&other) : ptr{other.ptr} {
    other.ptr = nullptr;
  }

  unique_ptr &operator= (const unique_ptr<T> &&other) {
    std::swap(ptr, other.ptr);
    return *this;
  }

  T &operator*() {return *ptr;}
}

```

#### Ownership
`unique_ptr` implies ownership
Ownership implies the responsibility of deleting the allocated resources
If you own a resource, use `unique_ptr`, if you don't, use a raw pointer

It is possible that you are not the sole owner of a resource, in which case you should use `shared_ptr`
