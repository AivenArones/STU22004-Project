Graphical Representations can be found within the report.pdf file.

**Question 2:**

Let 𝑥 be a simulated uniform random number, where, 0  ≤ 𝑥 ≤ 1 and 𝑛 be the number of uniform
random numbers simulated in a given game. For any given game,
Let 1
𝑛
be the lower bound and 1  −
1
𝑛
be the upper bound for the range determining a “win”.
A game would be considered a “win” if all the values of 𝑥 simulated are within the bounds of 1
𝑛
< 𝑥 <
1  −
1
𝑛
. If there exists a simulated number 𝑥 outside this range, the game is considered a “loss”.
A win gives a profit of €10, and a loss gives a profit of €−1 .

My methodology:

Three individual monte carlo experiments were conducted for differing values of 𝑛 , where 𝑛 =  10 ,
𝑛 =  100 and 𝑛 =  1000 . For each experiment the 𝑛𝑜. 𝑆𝑖𝑚𝑢𝑙𝑎𝑡𝑖𝑜𝑛𝑠 = 100000. A game was
considered a success if the simulated game resulted in a “win”, so the no. Successes = no. Wins.
Relative Frequency =
𝑛𝑜. 𝑊𝑖𝑛𝑠
𝑛𝑜. 𝑆𝑖𝑚𝑢𝑙𝑎𝑡𝑖𝑜𝑛𝑠
No. Losses = 𝑁𝑜. 𝑆𝑖𝑚𝑢𝑙𝑎𝑡𝑖𝑜𝑛𝑠 − 𝑁𝑜. 𝑊𝑖𝑛𝑠
Expected Net Payoff (After 100000 games) = (𝑁𝑜. 𝑊𝑖𝑛𝑠 × €10) − (𝑁𝑜. 𝐿𝑜𝑠𝑠𝑒𝑠 × €1)

Conclusion:

After simulating 100000 games for each proposed value of 𝑛 , I have determined that Expected Net
Payoff grows exponentially as the value of 𝑛 increases, this growth with 𝑛 begins to plateau for 𝑛 =
100 but nonetheless increases with 𝑛 . To answer the question, for the proposed values I have found
that 𝑛 =  1000 has the highest Expected Net Payoff.

**Question 4:**

Using R, a simulated deck of cards with 𝒙 values of 1 to 100 was shuffled using the “sample()”
function, a vector of values 1 to 100 was used to represent the shuffled deck. Let 𝒊 be a counter used
in a for loop going from 1 to 100, if 𝒊= 𝒊
th card in the deck then it was considered a “hit”.
Interquartile Range = Quartile 3 – Quartile 1

My Methodology:

Let the results of the Monte Carlo Experiment be represented as a frequency table, with the score of
the table being x. (no. Hits in a game) and f being the frequency of a specific value of x. The built-in
R statistical functions were used to obtain the Standard Deviation, Variance and Quartile-Ranges.
The median and mode were manually calculated. The no. Simulations = 10000.

Conclusion:

The expected no. hits in a game is 1, this is also the median and mode value. But it should be noted
that while 37% of games had 1 hit, 36% of games had 0 hits. A variation of 1.0104 was obtained, with
a standard deviation of 1.0052. From the frequency curve graph, we see a right skewed distribution.
Since the graph is positively skewed, we see the line quickly fall as it reaches a no. hits of 7 which is
the max no. hits after 10000 simulations.

