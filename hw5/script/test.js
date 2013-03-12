function enterNumber_prompt() {
    document.writeln("<h1>PL Homework 5</h1>")
    var number = prompt("Please enter a number between 2 and 10:", "")


    if (number < 2 || number > 10) {
        document.writeln("<h2>Your input is " + number + ". The valid input number is between 2 and 10. Please reload this page and try again.")
    }
    else {
        document.writeln("<h2>Your input number is " + number + " </h2>")
        var time = 0
        var result = number
        while (result > 0.000001) {
            result /= 2
            time += 1
        }
        document.writeln("<h2>The number of times to divide the number " + number + " by 2 to get a value less than one millionth is " + time + "</h2>")

        var star = "<div>"
        var lineNumber = number
        for (var i = 0; i < lineNumber; i++) {
            for (var j = lineNumber-i; j > 0; j--) {
                star += "*"

            }
            
            star += "<br>"
        }
        document.writeln(star + "</div>")


    }
}