### Foundations of NetLogo Homework
In this homework, you will be developing an agent-based modeling that explores how different
types of individuals explore their social networks in the context of job loss. This model is similar
to the model that was used for the following academic paper:
Smith, E. B., & Rand, W. (2017). Simulating macro-level effects from micro-level observations.
Management Science. https://pubsonline.informs.org/doi/abs/10.1287/mnsc.2017.2877
We will be building this model in steps. You will be able to find one solution to each step on
Complexity Explorer. However, there are many ways to solve this problem, so the solution that
is their is just one potential solution.
1. Create Workers Who Earn Wealth - Create a set of workers in your model that have
wealth and have jobs and earn wealth over time. Jobs mean that the workers have
some sort of earning rate, where the amount of a Worker’s increases each time step
based on the earning rate. Don’t forget to modify the GO procedure so the Workers earn
money. The initial wealth and earning-rates should be random. Of course, don’t forget
your SETUP and GO buttons as well. You might add a parameters for the number of
Workers, and potentially for the wealth and earning rate distribution.
2. Create a Social Network - Create a social network between these workers, so that each
worker is connected to a subset of the other workers. You might want to set up the world
so links do not wrap around the edges.
3. Create Unemployment and Job Seeking - Create a procedure where each turn some of
the Workers become unemployed and then have to find a new job. This new job will alter
the structure of the social network, because the Worker will create a link to the employer.
Essentially being unemployed means that the Worker’s earning rate becomes 0. Job
seeking means that the Worker get a new earning rate from one of the other Workers.
4. Create different ways of finding jobs - Set it up so that Workers who have a high relative
wealth to the other Workers look at the friends of their friends for a new job and take the
best paying one (i.e., copy the earning rate), Workers who have a low relative wealth just
copy the earning rate of a random one of their friends. Remember that when you
construct the turtle-sets that the Workers are searching over that you do not include the
focal Worker
5. Graph the Results - Create a histogram of the Distribution of Wealth in your model.
Don’t forget to make sure that the histogram axes are set so that you can see the whole
histogram.
These Bonus steps include commands and concepts we did not talk about in the tutorial.
<br>
BONUS 1: Make it so every turn the Workers talk to one of their neighbors, then change it so
the worker’s with below average wealth ask the people that they talk to the most for a job.
BONUS 2: Chan
