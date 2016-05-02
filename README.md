# dice-roll

**What is this?**

This is a simple application using the processing.js library to simulate rolling two 6-sided dice.  It counts the results, sums them results, tabulates everything, and graphs the cumulative sums.  No surprise, the distribution takes the shape of a bell curve if you feed it enough dice rolls.

This was one of the first individual projects I made after completing Khan Academy's introductory javascript course.  Something they don't tell you is that they're really teaching you _processing.js_.

**Instructions**

Click and hold on the canvas.  That's it.

**Why does this create a bell curve?**

Given two size-sided dice, the sums of any roll have an expected likelihood.  For example:

1.  There is exactly 1 way to sum to 2 (D1=1 & D2=1)
2.  There are 2 ways to sum to 3 (D1=1 & D2=2, or D1=2 & D2=1)
3.  There are 3 ways to sum to 4 (D1=1 & D2=3, or D1=3 & D2=1, or D1=2 & D2=2)
4.  There are 4 ways to sum to 5 (D1=1 & D2=4, or D1=4 & D2=1, or D1=2 & D2=3, D1=3 & D2=2)
5.  There are 5 ways to sum to 6 (D1=1 & D2=5, or D1=5 & D2=1, or D1=2 & D2=4, D1=4 & D2=2, or D1=3 & D2=3)

... and so on.  The "more ways" to achieve any given sum, to more likely that sum will appear.  It doesn't take a lot of rolls to see that sum=7 wins the race.  After sum=7, there are fewer and fewer ways to achieve higher sums.
