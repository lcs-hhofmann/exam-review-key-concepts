//: [Previous](@previous) / [Next](@next)
//: # Exercise - Sequence
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 ## Exercise

 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image (the underlying image, not the planning grid):
 
 ![tjamc](tjamc.png "The Jesus and Mary Chain")
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 
 You can use the **Digital Color Meter** app (already installed on your Mac) to find specific colours as RGB (red-green-blue) codes.
 
 You [can use this site](http://www.workwithcolor.com/color-converter-01.htm) to convert colours to HSB to use with the Canvas class.
 
 */
// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

// HINT: Remember that all shapes have a fill and a border.
//       You can turn off the fill or border if desired.

//draw the background
canvas.fillColor = Color.init(hue: 210, saturation: 1, brightness: 82, alpha: 100)
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 400, height: 600)

// circle loop
canvas.drawShapesWithFill = false
for x in stride(from: 200, through: 350, by: 150) {

//    if statement to make the first circle red and the second blue

    if x < 300 {

        canvas.borderColor = Color.init(hue: 355, saturation: 100, brightness: 99, alpha: 80)

    } else if x > 300 {

        canvas.borderColor = Color.init(hue: 206, saturation: 82, brightness: 79, alpha: 75)
    }

//    draw the circles with a large border width

    canvas.drawEllipse(centreX: x, centreY: 200, width: 275, height: 275, borderWidth: 100)
    
}

//draw jesus title

    canvas.drawText(message: "the jesus", size: 40, x: 10, y: 440, kerning: -0.5)
    canvas.drawText(message: "and mary chain", size: 40, x: 10, y: 400, kerning: -0.5)

// date text

    canvas.drawText(message: "friday", size: 11, x: 10, y: 570, kerning: -0.5)
    canvas.drawText(message: "december 4 1987", size: 11, x: 10, y: 555, kerning: -0.5)
    canvas.drawText(message: "8 pm show", size: 11, x: 10, y: 540, kerning: -0.5)

// who's playing text

    canvas.drawText(message: "with", size: 11, x: 120, y: 570, kerning: -0.5)
    canvas.drawText(message: "social distortion", size: 11, x: 120, y: 555, kerning: -0.5)
    canvas.drawText(message: "and opal", size: 11, x: 120, y: 540, kerning: -0.5)

// where it is
    canvas.drawText(message: "hollywood palladium", size: 11, x: 270, y: 570, kerning: -0.5)
    canvas.drawText(message: "6215 sunset blvd.", size: 11, x: 270, y: 555, kerning: -0.5)
    canvas.drawText(message: "los angeles, california", size: 11, x: 270, y: 540, kerning: -0.5)



/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
