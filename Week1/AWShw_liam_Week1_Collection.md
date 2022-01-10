AppWorks School iOS Class Week1
---
#### Collection
##### 1.
```swift=
var myFriends:[String] = []
```
##### 2. 
```swift=
myFriends += ["Ian","Bomi","Kevin"]
```
##### 3.  
```swift=
myFriends.append("Michael")
```
##### 4.
```swift=
myFriends.remove(at: 2)
myFriends.insert("Kevin", at: 0)
```
##### 5. 
```swift=
for i in 0..<myFriends.count {
    print(myFriends[i])
}
```
###### 6. 
```swift=
myFriends[5]
```
Fatal error: Index out of range    
原因是myFriends這個Array的Index只有0,1,2,3,4，所以Index 5是不在此Array裡。

###### 7. 
```swift=
myFriends[0]
```    
###### 8. 
```swift=
myFriends.last
```  
###### 9. 
 ```swift=
var myCountryNumber:[String:Int] = [:]
``` 
###### 10. 
 ```swift=
myCountryNumber["US"] = 1
myCountryNumber["GB"] = 44
myCountryNumber["JP"] = 81
``` 
##### 11.
```swift=
myCountryNumber["GB"] = 0
```
##### 12.
 ```swift=
var myCountryNumber:[String:Int] = [:]
``` 
##### 13.
```swift=
myCountryNumber["GB"] = nil
```
