

function primeNumber(number){
    if(number < 2){
        return " It's Not a Prime number"
    }
    if(number === 2){
        return "It's a prime number"
    }
    if(number % 2 === 0){
        return "It's not a prime number"
    }

    for(let i = 3 ; i < Math.sqrt(number); i += 2){
        if(number % i === 0){
            return "It's not a prime number"
        }
    }
    return "Its a prime number"
   
}
let result = primeNumber(12)

console.log(result)