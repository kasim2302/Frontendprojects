
function reversestring(text){
    var original_text = text

    var text_array = text.split("")

    var rev_array = text_array.reverse()

    var arr_string = rev_array.join("")

    if(original_text === arr_string){
        return "This is Palindrome"
    }
    else{
        return "Not palindrome"
    }
}

console.log(reversestring("mam"))