import { dbank } from "../../declarations/dbank";
window,addEventListener("load", async function() {
 // console.log("Finished Loading");


 const currentAmount = await dbank.checkBalance();
 document.getElementById("value").innerText = Math.round(currentAmount * 100) / 100;


});

document.querySelector("form").addEventListener("submit", async function(event) {
  event.preventDefault();
console.log("submitted.");

const inputAmount = parseFloat(document.getElementById("input-amount").value);
const outputAmount = parseFloat(document.getElementById("withdrawal-amount").value);
await dbank.topUp(inputAmount);
const currentAmount = await dbank.checkBalance();
document.getElementById("value").innerText = Math.round(currentAmount * 100) / 100;

});