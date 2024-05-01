
<h3 align="center">1. Buttons </h3>

###

<h1 align="left"></h1>

###

<div align="center">
  <img height="550" src="https://github.com/YashuPatel1724/timer_daily_task/assets/148859965/283f19cf-c7b4-492d-ad67-fec180d171f6"  />
</div>


<h1 align="center"> 5.2 Asynchronous Programming </h1>

# 1.What is  Asynchronous Programming?

Ans-> Asynchronous programming is a programming paradigm that allows
tasks or operations to run independently and concurrently, without
waiting for ecah other to complete before moving on to the next task.
#

# 2.What is Future Class ?

Ans-> Future represents a future result of an asynchronous computation. 
this result will eventually appear in the Future after the processing is complete.
#



# 3. What is Duration class & Future.delayed() constructor with Example ?

Ans-> delayed Flutter is a constructor that creates a future which runs its computation after a delay.


## Future.delayed() constructor with Example ?

```
  void main()
async{
  print('yashu');


  await Future.delayed(Duration(seconds: 2),
  () {
    print('hello dart');
  },
 );



  Future(() => print('hello world'));
  print('hello flutter');
}
```


# 4. What is the Use of the async & await keyword?

Ans-> In Flutter, async and await are used to perform asynchronous operations in a more readable and structured manner. They are part of the Dart language, on which Flutter is built.

-> The async keyword is used to mark a function as asynchronous.

-> The await keyword is used to pause the execution of an asynchronous function until a particular asynchronous operation is completed.

# 5. What is Recursion ? With Example. 

Ans-> Recursion is the process of breaking down an expression into smaller and smaller expressions until you're able to use the same algorithm to solve each expression.
##  Recursion Example.

```
import 'dart:async';

void main()
// async
{
  Timer.periodic(Duration(seconds: 2), (timer) { print("hello Phython");});
}
```

# 6. What is Timer class with example ?

Ans-> A countdown timer that can be configured to fire once or repeatedly.
##  Timer class example ?

```
  import 'dart:async';

void main()
// async
{
  Timer(Duration(seconds: 1), () {
  print('hello PHP');
    });
}
```

# 7. What is Timer.periodic and use with Example?

Ans-> Periodic timers stay alive until they are manually canceled. Flutter has a different factory method, named periodic , to create such a timer.##  Timer.periodic Example?

```
  import 'dart:async';

void main()
// async
{
  Timer.periodic(Duration(seconds: 2), (timer) { print("hello Phython");});
}
```



