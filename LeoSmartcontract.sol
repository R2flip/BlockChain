pragma solidity ^0.4.18;

contract leoSmartcontract { string public name = hex"e98099e698afe4b880e5808be6b8ace8a9a6";   

// hex 這是一個測試

function nameBytes() constant public returns (bytes) { 
    return bytes(name);
    } 
    
function nameLength() constant public returns (uint) { 
    return bytes(name).length; 
    } 
    
}

pragma solidity ^0.4.0;

contract HexLiteral{
    function test() returns (string){
      var a = hex"e98099e698afe4b880e5808be6b8ace8a9a6";
      //var a = hex" 這是一個測試";
      return a;
  }
}

