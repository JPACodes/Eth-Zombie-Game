pragma solidity >=0.5.0 <0.6.0;

contract ZombieFactory {
    uint dnaDigits = 16;
    //unit means unsigned intergers and can be any positive interger. if you use unit16 it will limit it to a 16-bit unsigned integer
    uint dnaModulus = 10 ** dnaDigits;
    //We are rasing 10 the 16 so that later we can use the modulus function "%" to make sure dnaDigits only has 16 numbers.
    
struct Zombie {
    uint dna;
    string name;
    //structs are a way to make more complex data types. Our zombie has multiple properties (age and name)
    }

Zombie[] public zombies;
    //here we created a public array for the zombies to be stored on the blockchain AND to be publicly viewed. because it's open brackets[] this means it is a dynamic array and can be added to it.

function _createZombie (string memory _name, uint _dna) private {
    zombies.push(Zombie(_name, _dna));
    //This is the function that will create our zombie. Interestingly enough we made it a private function so that only other functions without our contact can call it. By convention we add an underscore _ to state this is a private function in our contact full of public functions.
}
    
function _generateRandomDna (string memory _str) private view returns (uint) {
    
}
}