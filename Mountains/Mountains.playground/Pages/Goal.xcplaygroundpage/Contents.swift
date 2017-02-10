//: # Your goal
//: ![goal](scenario-three.png "Your goal")
/*:
 ## Notes:
 * the image is exactly 300 pixels wide by 300 pixels high
 */
//: ## Template code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
//: ## Reminder
//: To see the visual output, be sure to show the Assistant Editor and choose the Timeline option.
//:
//: ![assistanteditor](timeline.png "Timeline")
//: ## Your code starts here
// Create a new canvas
let canvas = Canvas(width: 300, height: 300)

// Draw the dots
for y in stride(from: 300, through: 150, by: -25) {
    for x in stride (from: 0, through: 300, by: 25) {
        canvas.drawEllipse(centreX: x, centreY: y, width: 3, height: 3)
        
    }
}


//Black Rectangle
canvas.fillColor = Color(hue: 150, saturation: 0, brightness: 45, alpha: 100)
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 300, height: 75)


//Grey Rectangle
canvas.fillColor = Color(hue: 150, saturation: 0, brightness: 80, alpha: 100)
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY:75 , width: 300, height: 75)


//Dark Mountains
for i in stride (from: 0, through: 25, by: 1){

    // downward Slope
    canvas.drawLine(fromX: i, fromY: 75, toX: i, toY: 100-i)
    canvas.drawLine(fromX: i+50, fromY: 75, toX: i+50, toY: 100-i)
    canvas.drawLine(fromX: i+100, fromY: 75, toX: i+100, toY: 100-i)
    canvas.drawLine(fromX: i+150, fromY: 75, toX: i+150, toY: 100-i)
    canvas.drawLine(fromX: i+200, fromY: 75, toX: i+200, toY: 100-i)
    canvas.drawLine(fromX: i+250, fromY: 75, toX: i+250, toY: 100-i)
    
    // Upward Slope
    canvas.drawLine(fromX: i+25, fromY: 75, toX: i+25, toY: 75+i)
    canvas.drawLine(fromX: i+75, fromY: 75, toX: i+75, toY: 75+i)
    canvas.drawLine(fromX: i+125, fromY: 75, toX: i+125, toY: 75+i)
    canvas.drawLine(fromX: i+175, fromY: 75, toX: i+175, toY: 75+i)
    canvas.drawLine(fromX: i+225, fromY: 75, toX: i+225, toY: 75+i)
    canvas.drawLine(fromX: i+275, fromY: 75, toX: i+275, toY: 75+i)
}

//Bright Mountains 
for j in stride(from: 0, through: 50, by: 1){
    
    //Downward Slope
    canvas.drawLine(fromX: j, fromY: 150, toX: j, toY: 200-j)
    canvas.drawLine(fromX: j+100, fromY: 150, toX: j+100, toY: 200-j)
    canvas.drawLine(fromX: j+200, fromY: 150, toX: j+200, toY: 200-j)
    canvas.drawLine(fromX: j+300, fromY: 150, toX: j+300, toY: 200-j)

    // Upwar Slope
    canvas.drawLine(fromX: j+50, fromY: 150, toX: j+50, toY: 150+j)
    canvas.drawLine(fromX: j+150, fromY: 150, toX: j+150, toY: 150+j)
    canvas.drawLine(fromX: j+250, fromY: 150, toX: j+250, toY: 150+j)


    
}




//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView
