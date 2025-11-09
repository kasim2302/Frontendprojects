//method-1

const num = [23,24,65,34,29]

let large_num = num[0]
for(let i =1 ; i<num.length ; i++){
    if(num[i] > large_num){
        large_num = num[i]
    }
}
console.log(`The Largest Number is : ${large_num}`)



//method -2
const num1 = [283,204,615,334,104]

const max_num = Math.max(...num1)

console.log(`The Largest Number is : ${max_num}`)
