//What it does:
//    Requires processing.js library.
//    Hold down the mouse button to "roll" a pair of dice.
//    Results are tabulated and summed, sum distributions are graphed.
//Revisions:
//    5-27-2015 converted to arrays
//    5-25-2015 original

void setup() {
    
    size(400,400);
    frameRate(15);
    
    background(150, 200, 200);
    text("Click mouse to begin", 130, 280);
    
    // initial variable declarations
    var d1number = 0;
    var d1integer = 0;
    var d1ones = 0;
    var d1twos = 0;
    var d1threes = 0;
    var d1fours = 0;
    var d1fives = 0;
    var d1sixes = 0;
    var d2number = 0;
    var d2integer = 0;
    var d2ones = 0;
    var d2twos = 0;
    var d2threes = 0;
    var d2fours = 0;
    var d2fives = 0;
    var d2sixes = 0;
    var d1RowYa = 60;
    var d2RowYa = 150;

    var sumTwo = 0;
    var sumThree = 0;
    var sumFour = 0;
    var sumFive = 0;
    var sumSix = 0;
    var sumSeven = 0;
    var sumEight = 0;
    var sumNine = 0;
    var sumTen = 0;
    var sumEleven = 0;
    var sumTwelve = 0;
    var rollNumber = 1;

    // labels array
    var labels = ["Ones", "Twos", "Threes", "Fours", "Fives", "Sixes"];
    for (var i = 0; i < labels.length; i++) {
        fill(0, 0, 0);
        textSize(15);
        text(labels[i], 10 + 70 * i, d1RowYa);
        text(labels[i], 10 + 70 * i, d2RowYa);
    }

    // initial counter conditions arrays
    var d1Counters = [d1ones, d1twos, d1threes, d1fours, d1fives, d1sixes];
    for (var d1Ctr = 0; d1Ctr < d1Counters.length; d1Ctr++) {
        fill(0, 0, 0);
        textSize(15);
        text(d1Counters[d1Ctr], 10 + 70 * d1Ctr, d1RowYa + 25);
    }

    var d2Counters = [d2ones, d2twos, d2threes, d2fours, d2fives, d2sixes];
    for (var d2Ctr = 0; d2Ctr < d2Counters.length; d2Ctr++) {
        fill(0, 0, 0);
        textSize(15);
        text(d2Counters[d2Ctr], 10 + 70 * d2Ctr, d2RowYa + 25);
    }

    //looooop!
    draw = function() {
        if (mousePressed === true) {

        background(150, 200, 200);
        fill(0, 0, 0);
        textSize(20);

        // Generate a random number between 1 and 6 when mouse is clicked
        // Using 'floor' instead of 'round' so all results are equally probable

        d1number = random(1, 7);  // DIE ONE 
        d1integer = floor(d1number);

        d2number = random(1, 7);  // DIE TWO
        d2integer = floor(d2number);

        // D1 Results
        text("D1 Roll = " + d1integer, 150, d1RowYa - 20);

        if (d1integer < 2) {
            d1ones += 1;
        } 
        else if (d1integer < 3) {
            d1twos += 1;
        }
        else if (d1integer < 4) {
            d1threes += 1;
        }
        else if (d1integer < 5) {
            d1fours += 1;
        }
        else if (d1integer < 6) {
            d1fives += 1;
        }
        else {
            d1sixes += 1;
        }

        // D2 Results
        text("D2 Roll = " + d2integer, 150, d2RowYa - 20);

        if (d2integer < 2) {
            d2ones += 1;
        } 
        else if (d2integer < 3) {
            d2twos += 1;
        }
        else if (d2integer < 4) {
            d2threes += 1;
        }
        else if (d2integer < 5) {
            d2fours += 1;
        }
        else if (d2integer < 6) {
            d2fives += 1;
        }
        else {
            d2sixes += 1;
        }

        // increment text counters

        // labels array
            var labels = ["Ones", "Twos", "Threes", "Fours", "Fives", "Sixes"];
            for (var i = 0; i < labels.length; i++) {
            fill(0, 0, 0);
            textSize(15);
            text(labels[i], 10 + 70 * i, d1RowYa);
            text(labels[i], 10 + 70 * i, d2RowYa);
        }

        // counter arrays
        var d1Counters = [d1ones, d1twos, d1threes, d1fours, d1fives, d1sixes];
        for (var d1Ctr = 0; d1Ctr < d1Counters.length; d1Ctr++) {
            fill(0, 0, 0);
            textSize(15);
            text(d1Counters[d1Ctr], 10 + 70 * d1Ctr, d1RowYa + 25);
        }

        var d2Counters = [d2ones, d2twos, d2threes, d2fours, d2fives, d2sixes];
        for (var d2Ctr = 0; d2Ctr < d2Counters.length; d2Ctr++) {
            fill(0, 0, 0);
            textSize(15);
            text(d2Counters[d2Ctr], 10 + 70 * d2Ctr, d2RowYa + 25);
        }

        // Roll counter
        textSize(20);
        text("Roll number: " + rollNumber, 200, 230);
        rollNumber += 1;

        // Roll sum
        textSize(20);
        text("Sum: " + (d1integer + d2integer), 60, 230);

        // Sum counters
        if (d1integer + d2integer < 3) {
            sumTwo += 1;
        }
        else if (d1integer + d2integer < 4) {
            sumThree += 1;
        }
        else if (d1integer + d2integer < 5) {
            sumFour += 1;
        }
        else if (d1integer + d2integer < 6) {
            sumFive += 1;
        }
        else if (d1integer + d2integer < 7) {
            sumSix += 1;
        }
        else if (d1integer + d2integer < 8) {
            sumSeven += 1;
        }
        else if (d1integer + d2integer < 9) {
            sumEight += 1;
        }
        else if (d1integer + d2integer < 10) {
            sumNine += 1;
        }
        else if (d1integer + d2integer < 11) {
            sumTen += 1;
        }
        else if (d1integer + d2integer < 12) {
            sumEleven += 1;
        }
        else {
            sumTwelve += 1;
        }

        // Sum graphics

        var sumNumber = [sumTwo, sumThree, sumFour, sumFive, sumSix, 
            sumSeven, sumEight, sumNine, sumTen, sumEleven, sumTwelve];
        var sumLabel = [" 2", " 3", " 4", " 5", " 6", " 7",
            " 8", " 9", "10", "11", "12"];

        for (var g = 0; g < sumNumber.length; g++) {
            textSize(10);
            fill(0, 0, 0);
            text(sumLabel[g], 6, 249 + g * 15);
            text(sumNumber[g], sumNumber[g] + 25, 249 + g * 15);
            fill(250, 248, 177);
            rect(20, 239 + g * 15, sumNumber[g], 10);
            }

        }
    };
    
}