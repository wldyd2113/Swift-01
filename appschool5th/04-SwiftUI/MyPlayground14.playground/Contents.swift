
//var treeArray: [String] = ["Pine", "Oak", "Yew"]
var treeArray = ["Pine", "Oak", "Yew"] //타입 추론으로 생략

var priceArray = [Float]() //Empty Array

var nameArray = [String](repeating: "MyString", count: 10)

let firstArray = ["Red", "Green", "Blue"]
let secondArray = ["Indigo", "Violet"]

let thirArray = firstArray + secondArray

print(thirArray.count) //배열의 요소 개수

print(treeArray.isEmpty)//Empty Array인지 확인

print(treeArray[2]) //배열 요소 접근

//요소 추가
//treeArray[1] = "Redwood"
treeArray.append("Redwood")
//treeArray += ["Redwood"]

//treeArray = treeArray + ["Maple", "Birch"]
treeArray += ["Maple", "Birch"]


treeArray.shuffle()

print(treeArray)

print(treeArray.randomElement() ?? "") //배열 random함수

