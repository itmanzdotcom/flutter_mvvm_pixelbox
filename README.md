# PixelBox | Flutter MVVM Clean Architecture

App architecture: MVVM in Flutter using Dart Streams

## Getting Started

![alt text](https://github.com/pixelboxx/fmvvm_pixelbox/blob/master/screenshots/mvvm_pattern.png)

```
A common problem while developing apps is that you end up with over-complicated classes containing View logic as well as business logic.
Both are so intertwined that it’s impossible to test them independently. Code-readability suffers and future code changes are hard to implement.
Since there are almost no constraints to your architecture in Flutter, it’s fairly easy to run into this problem.
Some developers write all of their code in the Widget until they realize the mess they produced.
Reusing code in other Projects seems impossible and in the end, you write most of your code twice.
MVVM tries to solve that by splitting up business logic and view details.

In this article, we show you how MVVM with Flutter could look like.
We’ll create a functional reactive ViewModel using Darts Stream API.
```

### MVVM | What is that?

```
MVVM stands for Model View View-model it provides the separation of development of the graphical user interface(GUI) from the business logic or back-end logic (or data model).
The view model of MVVM is a converter that converts the data from the model in such a way that it can be managed and presented with great ease.
So we could say that the view model is more model rather than a view as it handles most of the view's logic and it even makes the code very readable.
In Flutter, the Widget represents the View of MVVM.
The business logic sits in a separate ViewModel-class.
The ViewModel is totally platform-independent.
It contains no dependencies to Flutter and can, therefore, be easily reused e.g. in a web project.
That is one of MVVM’s biggest powers. We can create a Mobile App and a website that both share the same ViewModel.
You don’t need to reinvent and write the logic twice.
```

### Looking other good boys to help me bring more Flutter MVVM value to Flutter Lovers.

```
Touch me: 
- Mail: vult.pnv@gmail.com
- skype: vult.pnv
```

### How about Flutter?

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
