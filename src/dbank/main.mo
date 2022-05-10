
import Debug  "mo:base/Debug";
import Time "mo:base/Time";
import Float "mo:base/Float";
actor DBank {
  stable var currentValue: Float= 300;
  
 currentValue := 300;
stable var startTime = Time.now();
Debug.print(debug_show(startTime));


 let id = 23892381345;
 Debug.print(debug_show(id));
 //Debug.print(debug_show(currentValue));


 public func topUp(amount: Float) {

   
   currentValue += amount;
   Debug.print(debug_show(currentValue));
   
 };



 // Allow users to withdrwal an amount from the current value
 // Decrease the currentValue by the internet

public func withdrwal(amount : Float) {
let tempValue: Float = currentValue - amount;
  if(tempValue >= 0) {
  currentValue -= amount;
  Debug.print(debug_show(currentValue));
  }
  else {
    Debug.print("Amount is large, currentValue is less than Zero.");
  }
};

public query func checkBalance(): async Float {

return currentValue;
};
public func compound() {
  let currentTime = Time.now();
  let timeElapsedNS = currentTime - startTime;
  let timeElapsedS = timeElapsedNS / 1000000000;
currentValue := currentValue * (1.01 ** Float.fromInt(timeElapsedS));
startTime := currentTime;


};





 //topUp();
}








