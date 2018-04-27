pragma solidity ^0.4.18;

contract leoSmartcontract { string public name = "這是一個測試"; 

function nameBytes() constant public returns (bytes) { 
    return bytes(name);
    } 
    
function nameLength() constant public returns (uint) { 
    return bytes(name).length; 
    } 
    
}

