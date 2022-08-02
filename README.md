# 📝 TodoList-ios-practice

<!-- ! gif 스크린샷 -->

<img height="350" alt="스크린샷" src="https://user-images.githubusercontent.com/28912774/149730022-4731699a-334b-4130-b802-e5333f5d824f.gif">

## 📌 Main Features

- To practice MVVM architecture

- Save CRUD data through USerDefaults

- ViewModel with @EnvironmentObject

- iPad, LandScape and dark mode supports

<!-- ## 👉 Pod library -->

<!-- ### 🔷  -->

<!-- >  -->

<!-- #### 설치

`pod init`

```ruby

```

`pod install`
 -->

<!-- ## 📌 Project Setup -->

## 🔑 Check Point !

### 🔷 UI Structure

<!-- ! ppt UI structure -->

![슬라이드1](https://user-images.githubusercontent.com/28912774/149744574-8738adbf-f2d4-4cb6-bdcc-7f3ac66e6512.jpeg)
![슬라이드2](https://user-images.githubusercontent.com/28912774/149744593-09b01626-035f-4893-9046-d14c43e98bc0.jpeg)

### 🔷 Model

```swift
//  ItemModel.swift
//  TodoList

import Foundation

// Immutable Struct
struct ItemModel: Identifiable {
	let id: String
	let title: String
	let isCompleted: Bool

	init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
		self.id = id
		self.title = title
		self.isCompleted = isCompleted
	}

	// model 이 immutable struct 이기 때문에 isCompleted 을 바꾸기 위해서 func 를
	func updateCompletion() -> ItemModel {
		return ItemModel(id: id, title: title, isCompleted: !isCompleted)
	}
}

// ItemModel 에 자동완성으로 2개가 생성 id 가 자동 생성하는거 1개, UUID() 로 자동 완성되는거 1개
// ItemModel(id: <#T##String#>, title: <#T##String#>, isCompleted: <#T##Bool#>)
// ItemModel(title: <#T##String#>, isCompleted: <#T##Bool#>)

```

### 🔷 Check core codes in details

#### 👉 [1.Create a list of Todo items](https://github.com/jacobkosmart/todoListwithMVVM-ios-practice/blob/main/MD/1.CreateList.md)

#### 👉 [2.Custom data model for Todo items](https://github.com/jacobkosmart/todoListwithMVVM-ios-practice/blob/main/MD/2.DataModel.md)

#### 👉 [3.Add a ViewModel with Environment Object](https://github.com/jacobkosmart/todoListwithMVVM-ios-practice/blob/main/MD/3.CreateViewModel.md)

#### 👉 [4.Save and persist data with UserDefaults](https://github.com/jacobkosmart/todoListwithMVVM-ios-practice/blob/main/MD/4.SaveDataWithUserDefaults.md)

#### 👉 [5.User experience and animations](https://github.com/jacobkosmart/todoListwithMVVM-ios-practice/blob/main/MD/5.UXandAnimation.md)

#### 👉 [6.iPad, Landscape and Dark mode](https://github.com/jacobkosmart/todoListwithMVVM-ios-practice/blob/main/MD/6.iPad_Landscape_Darkmode.md)

#### 👉 [7.Add and App Icon and Launch screen](https://github.com/jacobkosmart/todoListwithMVVM-ios-practice/blob/main/MD/7.AppIcon_LaunchScreen.md)

<!-- #### 👉 -->

<!-- > Describing check point in details in Jacob's DevLog - https://jacobko.info/firebaseios/ios-firebase-03/ -->

<!-- ## ❌ Error Check Point

### 🔶 -->

<!-- xcode Mark template -->

<!--
// MARK: IBOutlet
// MARK: LifeCycle
// MARK: Actions
// MARK: Methods
// MARK: Extensions
-->

<!-- <img height="350" alt="스크린샷" src=""> -->

<!-- README 한 줄에 여러 screenshoot 놓기 예제 -->
<!-- <p>
    <img alt="Clear Spaces demo" src="../assets/demo-clear-spaces.gif" height=400px>
    <img alt="QR code scanner demo" src="../assets/demo-qr-code.gif" height=400px>
    <img alt="Example preview demo" src="../assets/demo-example.gif" height=400px>
</p> -->

---

<!-- 🔶 🔷 📌 🔑 👉 -->

## 🗃 Reference

Build Todo List in SwiftUI with MVVM architecture - [https://www.youtube.com/watch?v=wEf1YS4vyW8&list=PLwvDm4VfkdpheGqemblOIA7v3oq0MS30i&index=1](https://www.youtube.com/watch?v=wEf1YS4vyW8&list=PLwvDm4VfkdpheGqemblOIA7v3oq0MS30i&index=1)
