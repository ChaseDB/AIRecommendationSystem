# AIRecommendationSystem
CS 470 Project


Project Description: A psychological analysis tool for providing suggestions for movies, food, games, and more using elicitation techniques such as games, personality quizzes, and situational problem solving to name a few. A recommendation system.

Details: Utilizes a knowledgebase formed by Prolog facts and inferences to provide personal selections. The facts are generated about the person during an inference phase that follows the elicitation phase. The system runs on a server, and will run with Node.js or PHP for temporary storage of user provided data. The results are served to the user after the inference phase via html, css, and javascript presentation artifacts. 

Stat Points - Stats are raised or lowered based on the answers provided by the user during the elicitation phase. These stats are used to programatically introduce facts to the knowledgebase during the inference phase that are then used to build more facts via inference rules that preexist. A (mongodb? may need document orientation due to large number of records) database of movies, games, food, and more runs on the back end and queries are run based on the knowledgebase state following the inference phase.

Stats:
Aggression, thrill-seeker
Calm, relaxed
Quiet
Adamant
Hasty, impatient

Characteristic Stats - stats that define cultural, religious, or other features about an individual that are instantiated when answered.

Language/Country of Interest
-example: when asked about Don Quixote, if the answer is correct, we might award 2 points, but if incorrect, we might award only 0.5 points. Awarding points to topics they are wrong on might suggest recommendations for topics the user is unfamiliar with and will thus be new to them.
Religion
Food Type
-example: when picking lasagna over fruit, we would award LikesCheese and LikesPasta, and LikesMeat 2 points each
...more…


After about 20-30(subject to change) questions, the user will be allowed to stop the elicitation and continue to view results. They will be informed at all times of the percentage complete regarding the entire elicitation phase. If they stop at 20-30, the inference phase will begin. However, continuing will build a better profile of the individual. They may stop at any point after 20-30 or continue until all elicitation artifacts have been completed. The inference phase might work like so:
Convert regular stat points into facts:
if aggression >= SUFFICIENTSTAT then user(aggressive). or aggressive(user).
Convert characteristic stats into facts:
If LikesMeat >= SUFFICIENTCHARSTAT then LikesMeat(user). or user(LikesMeat).
Attempt to use rules to deduce more facts:
LikesSourCandy(User) :- LikesGreenApple(User), LikesCandy(User),
Utilize facts to connect to database of food, games, and movies and more to build profile. One way to do this would be to use facts to build a word cloud that could be used to query, or even scrape the web:
Sample Word Cloud:

Word clouds may prove useful in picking out words the user actively uses that might be used as keywords in searching for movie, game, or food recommendations. In other words, we focus on the frequency of words.


Other options: Look into similarity learning which has been used for recommendation systems in the past: https://en.wikipedia.org/wiki/Similarity_learning 
See https://en.wikipedia.org/wiki/Knowledge-based_recommender_system
Our system initially uses something like decision tree learning to then build facts during the inference phase. More information: https://en.wikipedia.org/wiki/Decision_tree_learning
More on recommendation systems: http://infolab.stanford.edu/~ullman/mmds/ch9.pdf



See updated version 
