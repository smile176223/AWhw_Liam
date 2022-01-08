AppWorks School iOS Class Week1
---
#### Basic
##### 1.
```swift=
let Pi = Double.pi
```
##### 2. 
```swift=
let x:Int = 3
let y:Int = 4
let average = (x + y)/2
```
##### 3.  
```swift=
let x:Double = 3
let y:Double = 4
let average = (x + y)/2
```
* (10/3)是Int型別無小數點位數的數字字元，
(10.0/3.0)則是Double或是Float型別的有小數點數字字元。

##### 4.
```swift=
var flag:Bool = true
var inputString:String = "Hello world."
let bitsInBite:Int = 8
let averageScore:Double = 86.8
```
##### 5. 
```swift=
var salary = 22000
salary += 28000
```
###### 6. 
Equality:```==```

###### 7. 
```swift=
let c = 10
let d = 3
let remainder = c % d
```    
###### 8. 
let 是用來宣告不會改變的數值，常數(Constants)，無法在後續透過加減等計算改變
var 是宣告一個可以改變的數值，變數(Variables)，可以透過後續的加減等計算改變。

###### 9. 
開頭小寫開始，之後每個單字開頭為大寫，
 ```swift=
var currentValue = 0
var targetValue = 0
func showAlert()
func sliderMoved
``` 
###### 10. 
Type Inference在Swift中是一個自動的型別推斷，
本來一個變數宣告需要提供該變數的型別，
 ```swift=
var x:Int = 0
``` 
先宣告一個變數x是Int型別，然後再給予數值，但在Swift中可以自動型別推斷，
```swift=
var x = 0
```
在這之中Swift判斷出後續給予的數值0為Int，故自動給予該變數x為Int型別。
    
##### 11.  
phoneNumber是Int型別的變數，無法給予String型別"Hello   world."的值

