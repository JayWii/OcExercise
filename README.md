# OcExercise
============
Oc编程练习,包含4个练习,分别是：类与对象，内存管理，继承，动态绑定作业 
-----------------------------------
#####By. `B13041328` `JasonFeng` `NJUPT`
###1.类对象作业
1.写一个分数类（ Fraction），编写一个方法计算分数相加，并返回该类的对象。(1/2 + 1/4 = 6/8)

2.写一个名为Complex的新类，它处理虚数的复数，添加一个名为add:的方法，它可以用来使两个复数相加
只需将实部和虚部相加即可：如下

  (2+3i) + (5+1i) = 7 + 4i;

根据以下方法声明，使得 add:方法存储并返回一个新的  Complex值。
```objective-C
- (Complex*)add:(Complex*)complex;
```
注意：一定要解决测试程序的额内存泄漏问题。

###2.内存管理作业
1.编写一个程序，测试添加和移除数组中对象，看看被添加和移除的对象的引用
计数有什么影响。

2.你认为 NSArray的 replaceObjectAtIndex:withObject: 方法对数组中被替换的对象的
引用计数有什么影响？对放置到数组中的对象有什么影响？编写一个程序进行测试，
然后检验你的结果。


###3.继承作业
1.添加一个名为ClassC的新类，它是ClassB的子类，创建一个initVar方法，它
将实例变量 x 的值设置为300.编写一个测试代码，它声明对象ClassA 、ClassB、
及 ClassC,并且调用相应的 initVar 方法。


2.为Rectangle 类编写一个名为draw的方法，此方法使用虚线与垂直的条形字符绘制矩形，以下代码
```objective-C
        Rectangle *myRect = [[Rectangle alloc]init];
        [myRect setWidth:10 height:3];
        [myRect draw];
```
将产生如下效果:

    ----------
    |         |
    |         |
    |         |
    ----------

提示：使用printf 绘制字符，因为每次调用NSLog时都会换行


###4.多态，动态类型和动态绑定作业

1.定义id变量dataValue分配给Rectangle对象，是否可以？即表达式
```objective-C
    dataValue  =  [ [Rectangle alloc]init];
```
是否合法？为什么？

2.给 XYPoint类中添加一个print方法，让它以格式(x,y)显示一个点，修改后
创建一个 XYPoint 对象，设置其值，这这个值分配给id变量dataValue，最后显示
它的值。

3.根据类  Fraction和Complex定义
```objective-C
    Fraction *fraction  = [[Fraction alloc]init];
    Complex  *complex  = [[Complex alloc]init];
    id  number = [Complex alloc]init]; 
```
确定以下消息表达式的返回值，然后将它们键入一个程序，验证结果。
