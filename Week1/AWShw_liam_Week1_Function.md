AppWorks School iOS Class Week1
---
#### Function
##### 1.
```swift=
func greet(person: String) -> String{
    var message = ""
    if person == "Luke" {
        message = "Hello, Luke"
    }else{
        message = " :< you are not Luke"
    }
    return message
}
```
##### 2. 
```swift=
func multiply(a:Int , b:Int = 10){
    print(a*b)
}
```
```swift=
for i in 0 ..< lottoBumbers.endIndex where i % 2 == 0{
    print(lottoBumbers[i])
}
```
##### 3.
argument label : 參數外部名稱    
parameter name : 參數內部名稱    
在func中呼叫的是參數內部名稱，在這個func之外就是使用參數外部名稱。
##### 4.
birthday()返回的是String，字串。    
payment()返回的是Double，浮點數。