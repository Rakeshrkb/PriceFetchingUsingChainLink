
 // SPDX-License-Identifier: MIT
 pragma solidity  ^0.8.20;

 import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

 contract PriceFetchContract {
    //0x694AA1769357215DE4FAC081bf1f309aDC325306

    AggregatorV3Interface internal priceFeed;
    constructor(){
        priceFeed= AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
    }
    
    function fetchPrice() public view returns (int){
   (,int price,,,) = priceFeed.latestRoundData();
    return price;
    }
 }



