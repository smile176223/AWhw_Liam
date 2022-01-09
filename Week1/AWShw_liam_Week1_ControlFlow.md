AppWorks School iOS Class Week1
---
#### Control Flow
##### 1.
```swift=
for i in lottoBumbers.endIndex - 3 ..< lottoBumbers.endIndex{
    print(lottoBumbers[i])
}
```
##### 2. 
```swift=
for i in lottoBumbers.reversed() {
    print(i)
}
```
```swift=
for i in 0 ..< lottoBumbers.endIndex where i % 2 == 0{
    print(lottoBumbers[i])
}
```
##### 3.
```swift=
var i = lottoBumbers.count
while i ! 0 {
    print(lottoBumbers[i - 1])
    i -= 1
}
```
```swift=
var j = 0
while j < lottoBumbers.count  {
    if j % 2 == 0 {
        print(lottoBumbers[j])
        j += 1
    } else {
        j += 1
    }
}
```
##### 4.
```swift=
var i = lottoBumbers.count
repeat {
    print(lottoBumbers[i - 1])
    i -= 1
}while i != 0
```
```swift=
var j = 0
repeat {
    if j % 2 == 0{
        print (lottoBumbers[j])
        j += 1
    }else{
        j += 1
    }
}while j < lottoBumbers.count
```
###### 5. 
 while迴圈與repeat-while迴圈的差別為：    
 while迴圈：在程式運行前進行檢查，判斷式在前面。    
 repeat-while迴圈：在程式運行後進行檢查，判斷式在後面，所以迴圈內程式碼至少會執行一次。

###### 6. 
```swift=
let isRaining = ["raining","sunny"]
for weather in isRaining {
    if weather == "raining" {
        print("It's raining. I don't want to work today.")
    }else {
        print("Although it's sunny. I still don't want to work today")
    }
}
```    
###### 7. 
```swift=
var jobLevel = 5
switch jobLevel{
case 1 :
    print("Member")
case 2 :
    print("Team Leader")
case 3 :
    print("Manager")
case 4 :
    print("Director")
default :
    print("We don't have this job")
}

```  
