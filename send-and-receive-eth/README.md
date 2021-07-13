# Trading ethereum with smart contraacts.

In this particular example we are sending and receiving ethereums from smart contract. 

First of all we need to know some keywords. Following keywords provides you to send ethereum
to smart contract.

 - # Payable
 - This keyword allows a function to receive ether while being called. With a function without a payable keyword, the transaction will be rejected.

 - # fallback () external payable {}
 - Each function with the payable modifier can receive funds. But what if funds are sent to your contract to a non payable function?
 - For this the fallback payable function was defined, which can receive funds in any case funds are sent to the contract. 

I wrote this contract in Remix so I'll explain how to run this in remix.

 - # Deposit

 - So open remix and delete all the files inside the workspace. Then create a file named ``` payable.sol ``` and paste the code in there.
Compile that file with ```Solidity Compile```. After that go to tab ```DEPLOY & RUN TRANSACTIONS``` and deploy the contract.

 - You are ready. Notice that there is a tab named ```Deployed Contracts```. Expand that and you will see some buttons named with our functions.

 - You have some accounts up there. Select one of them. Then notice the ```Value``` and select ether and enter some value in there. And press the deposit button.

 - That will send the ether to the contract. You can see the accounts balance in the contract with ```balanceOf``` button/function. And also you can see the 
contracts' balance with pressing ```getBalance```.


 - # Withdraw
 
 - If you press ```withdrawBack``` that will pay back its' balance to account.

 - If you press ```withdrawAllToOneAccount``` that will pay all the contracts' balance to the account which selected in ```ACCOUNT +``` tab up there. And than
it will reset all the other accounts balances who send ether to the contract. 
 
 
