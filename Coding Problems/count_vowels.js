function vowel_count(str){
    let vowels = "aeiouAEIOU"
    let count = 0
    for(let char of str){
        if(vowels.includes(char)){
            count += 1
        }
    }
    return count
}

result = vowel_count("javascript")
console.log(`The Vowel count is:  ${result}`)