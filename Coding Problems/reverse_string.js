//method - 1 builtin function

function reversestring(text){
    text_array = text.split("")

    rev_array = text_array.reverse()

    arr_string = rev_array.join("")

    return arr_string
}

console.log(reversestring("javascript"))

//method-2 using for loop 

function reverseString(text1){
    newstring = " "
    for(let i = text1.length -1; i >=0 ; i--){
        newstring += text1[i]   
    }
    return newstring
    
}
input_text = "fullstack"
result = reverseString(input_text)
console.log(`The Reversed text is ${result}`)