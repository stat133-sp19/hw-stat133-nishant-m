workout01-nishant-mishra
================
Nishant Mishra
12/03/2019

##### Effective Shooting % By Player (2PT %)

| Name           | Total | Made | % Made |
|----------------|-------|------|--------|
| Andre Iguodala | 210   | 134  | 63.81  |
| Kevin Durant   | 643   | 390  | 60.65  |
| Stephen Curry  | 563   | 304  | 54.00  |
| Klay Thompson  | 640   | 329  | 51.41  |
| Draymond Green | 346   | 171  | 49.42  |

##### Effective Shooting % By Player (3PT %)

| Name           | Total | Made | % Made |
|----------------|-------|------|--------|
| Klay Thompson  | 580   | 246  | 42.41  |
| Stephen Curry  | 687   | 280  | 40.76  |
| Kevin Durant   | 272   | 105  | 38.60  |
| Andre Iguodala | 161   | 58   | 36.02  |
| Draymond Green | 232   | 74   | 32.00  |

##### Effective Shooting % By Player (Total)

| Name           | Total | Made | % Made |
|----------------|-------|------|--------|
| Draymond Green | 578   | 333  | 57.61  |
| Kevin Durant   | 915   | 495  | 54.10  |
| Andre Iguodala | 371   | 192  | 51.75  |
| Klay Thompson  | 1220  | 575  | 47.13  |
| Stephen Curry  | 1250  | 584  | 46.72  |

The Tendencies of the All-Time-Great Golden State Warriors of 2016
==================================================================

It is easy to look at the numbers behind the five starters of the Golden State Warriors and arrive at a simplistic conclusion regarding their greatness on offense. With two (if we are being conservative and not including Durant) of the best three-point shooters of all time on the team, their shooting, undoubtedly, plays a key role in their success. But what about everything else? What are the other tendencies of the players on the Warriors on offense? What do they do tend to do? If we were to gameplan to play against the Warriors, what should we look out for? The purpsoe of this article is exactly that - to look at the tendencies of each of the players on the starting five of the Golden State Warriors, and ultimately, to gameplan for how a team of pickup players could possibly stop this offensive juggernaut the likes of which we have never seen and will likely never see again.

### Draymond Green

![](http://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/6589.png&w=350&h=254)

A veteran of 6 years, Green is without a doubt the heart and soul of this Warriors team. He consistently plays at a Defensive Player of the Year level, and the team undoubtedbly runs through him. But how good is he on offense? Below, we can take a look at his shot chart.

![](https://github.com/nishant-m/workout01/blob/master/workout01/images/draymond-green-shot-chart.png?raw=true)

##### Green Shot Tendencies

``` r
summarise(green, 
          Jump_Shots = nrow(filter(green, action_type == "Jump Shot")),
          Layup_Shots = nrow(filter(green, action_type == "Layup Shot")),
          Pullup_Jump_Shots = nrow(filter(green, action_type == "Pullup Jump shot")),
          Tip_Layup_Shots = nrow(filter(green, action_type == "Tip Layup Shot")),
          Cutting_Dunk_Shot = nrow(filter(green, action_type == "Cutting Dunk Shot")))
```

    ##   Jump_Shots Layup_Shots Pullup_Jump_Shots Tip_Layup_Shots
    ## 1        240          59                44              26
    ##   Cutting_Dunk_Shot
    ## 1                22

Here, analysis of our data shows the five most common tendencies of Green on offense. He takes a significant amount of jump shots. His low number of layup shots, pullup jump shots, and other shot attempts near the basket suggest that his role on offense is that of a fourth or fifth man. This makes sense with offensive powerhouses on the team like Durant, Curry, and Thompson. While we cannot ascertain this from the data, it is likely that, due to the gravity of these other players on the Warriors, Green often finds himself open on the floor with a clear jump shot, suggesting a possible reason for his very high number of attempted jumpshots.

### Kevin Durant

![](http://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/3202.png&w=350&h=254)

In his 11th year in the League, Kevin Durant is one of the best offensive players of all time. The skills he posses are unprecedented - basketball has never seen a 7 footer that can dribble and move like a guard in the way that Durant can. To add to that, his shooting is not only servicable, it is absolutely **elite**. While the numbers at first glance may not seem otherworldly, his being the focal point on offense a lot of time makes every shot he takes tough. Below, we can look at his shot chart and his top shot tendencies.

![](https://github.com/nishant-m/workout01/blob/master/workout01/images/kevin-durant-shot-chart.png?raw=true)

##### Durant Shot Tendencies

``` r
summarise(durant, 
          Jump_Shots = nrow(filter(durant, action_type == "Jump Shot")),
          Pullup_Jump_Shots = nrow(filter(durant, action_type == "Pullup Jump shot")),
          Fadeaway_Jump_Shot = nrow(filter(durant, action_type == "Fadeaway Jump Shot")),
          Layup_Shots = nrow(filter(durant, action_type == "Layup Shot")),
          Driving_Layup_Shot = nrow(filter(durant, action_type == "Driving Layup Shot")),
          Running_Layup_Shot = nrow(filter(durant, action_type == "Running Layup Shot")))
```

    ##   Jump_Shots Pullup_Jump_Shots Fadeaway_Jump_Shot Layup_Shots
    ## 1        348               114                 48          35
    ##   Driving_Layup_Shot Running_Layup_Shot
    ## 1                 34                 30

Here, analysis of Durant's tendencies only continues to support our ideas that he is an all-time-great. Like Draymond, he takes a very large amount of jump shots, which we can most likely attribute to being the way the offense of Golden State runs as well as a benefit of having so many offensive superstars on one team. The rest of his tendencies, however, are where we can recognize his greatness. With a very large number of pull up jump shots, Durant still manages to shoot 60.65% from 2 pointers and 38.60% from 3 - both incredible numbers for the volume and difficulty of the shots he takes. Considering the numbers of his fadeaway jump shots, driving layup shots, and running layup shots, his tendencies can be observed to be similar to that of a guard, and something that defenders must remain wary of.

### Andre Iguodala

![](http://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/2386.png&w=350&h=254)

One of the league's oldest veterans and a former superstar on the Philadelphia 76ers, Andre Iguodala has figured out his role on the Warriors as one of their key wing defenders as well as one of their athletic scoring threats when all other options fail. It is worth noting that Iguodala has by far the smallest load on the offensive end due to his role primarily being that of a defender and playmaker. Below, we take a look at his shot chart as well as his shot tendencies.

![](https://github.com/nishant-m/workout01/blob/master/workout01/images/andre-iguodala-shot-chart.png?raw=true)

``` r
summarise(iguodala, 
          Jump_Shots = nrow(filter(iguodala, action_type == "Jump Shot")),
          Pullup_Jump_Shots = nrow(filter(iguodala, action_type == "Pullup Jump shot")),
          Running_Layup_Shot = nrow(filter(iguodala, action_type == "Running Layup Shot")),
          Running_Dunk_Shot = nrow(filter(iguodala, action_type == "Running Dunk Shot")),
          Layup_Shots = nrow(filter(iguodala, action_type == "Layup Shot")),
          Cutting_Dunk_Shots = nrow(filter(iguodala, action_type == "Cutting Dunk Shot")))
```

    ##   Jump_Shots Pullup_Jump_Shots Running_Layup_Shot Running_Dunk_Shot
    ## 1        179                34                 19                18
    ##   Layup_Shots Cutting_Dunk_Shots
    ## 1          17                 16

Looking at Iguodala's tendencies, his position as a role player becomes clear. Once again, the Warriors are a great jump shooting team, and Iguodala's large volume of jump shots most likely occurs, once again, as a result of him being open and a capable jump shooter. His effective 2PT shooting percentage of 63.81% suggests that the shots he takes are often relatively easier shots as well as the fact that he is able to convert on a significant amount of his attempts. Looking at the number of attempts of all his other attempts (all below 35), it becomes clear that Iguodala truly is a role player on offense that focuses on cutting, mainly through backdoor cuts and movements of the offense that allow him to get high percentage shots or dish out to an open teammate.

### Klay Thompson

![](http://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/6475.png&w=350&h=254)

A 7 year veteran in the NBA, Klay Thompson is one of the best three point shooters to ever play the game of basketball. Interestingly, he is likely only eclipsed by his superstar teammate that we consider right after this, Stephen Curry. His 3PT % for the volume at which he takes 3's is ridiculous - 42.41% with a 580 attempts on the season is unprecedented, and his ability beyond the arc has quite literally caused NBA teams to change their entire game plans. Klay isn't a one trick pony, however, as he often has the task of guarding the opposing team's best player, due to his ability as a wing defender and his stamina that allows him to remain a threat on offense even after such tiring assignments. Klay has the ability to go nuclear, and holds the record for points in a quarter - 37. Below, we consider his shot chart as well as his shot tendencies.

![](https://github.com/nishant-m/workout01/blob/master/workout01/images/klay-thompson-shot-chart.png?raw=true)

``` r
summarise(thompson, 
          Jump_Shots = nrow(filter(thompson, action_type == "Jump Shot")),
          Pullup_Jump_Shots = nrow(filter(thompson, action_type == "Pullup Jump shot")),
          Cutting_Layup_Shot = nrow(filter(thompson, action_type == "Cutting Layup Shot")),
          Layup_Shots = nrow(filter(thompson, action_type == "Layup Shot")),
          Step_Back_Jump_Shot = nrow(filter(thompson, action_type == "Step Back Jump shot")),
          Driving_Layup_Shot = nrow(filter(thompson, action_type == "Driving Layup Shot")))
```

    ##   Jump_Shots Pullup_Jump_Shots Cutting_Layup_Shot Layup_Shots
    ## 1        688               171                 48          44
    ##   Step_Back_Jump_Shot Driving_Layup_Shot
    ## 1                  34                 33

A look at Thompson's tendencies help us unpack his offensive prowess. He takes a significant amount of jump shots - 688 standing and 171 pullups - on the season, which is substantially more than any other type of shot he takes. He cuts and drives to the basket occasionally for layups, but the vast majority of his points come from his ability on the perimeter, something defenders have to remain cautious of. It is also worth noting he takes more step back jump shots than driving layup shots, suggesting when he does hesitation dribble moves, defenders should fan out to the wings and contest the shots rather than stay back, assuming there is a help defender under the basket to help them out.

### Stephen Curry

![](http://a.espncdn.com/combiner/i?img=/i/headshots/nba/players/full/3975.png&w=350&h=254)

A 9 year veteran in the league, Stephen Curry is one of the all time NBA greats. The first unanimous MVP ever, he has proven all doubters wrong. Entering the league, he was often shunned for being too small, too slow, not strong enough of a ball handler, too short, and too injury prone. While ankle injuries certainly plagued him for the first few years of his career, he has undoubtedly proven every one of his naysayers wrong and has risen to the ranks of the best ever. He absolutely smashed the 3 point record in an NBA season and he is the reason Golden State has been amazing in recent years. From breaking the single season win record to currently being on the path to a three-peat, Curry runs the offense of the Warriors with his insane gravity - defenders absolutely cannot ignore him due to his deadly three point shooting (which, in turn, leads to even deadlier finishing at the rim), ball handling ability, and vision as a playmaker. Let us consider his shot chart and his top shooting tendencies.

![](https://github.com/nishant-m/workout01/blob/master/workout01/images/stephen-curry-shot-chart.png?raw=true)

``` r
summarise(curry, 
          Jump_Shots = nrow(filter(curry, action_type == "Jump Shot")),
          Pullup_Jump_Shots = nrow(filter(curry, action_type == "Pullup Jump shot")),
          Step_Back_Jump_Shot = nrow(filter(curry, action_type == "Step Back Jump shot")),
          Layup_Shots = nrow(filter(curry, action_type == "Layup Shot")),
          Driving_Layup_Shot = nrow(filter(curry, action_type == "Driving Layup Shot")),
          Floating_Jump_Shot = nrow(filter(curry, action_type == "Floating Jump shot")))
```

    ##   Jump_Shots Pullup_Jump_Shots Step_Back_Jump_Shot Layup_Shots
    ## 1        596               158                  75          60
    ##   Driving_Layup_Shot Floating_Jump_Shot
    ## 1                 58                 36

While Curry's versatility as a playmaker stems from his jump shooting ability, there is little that can be done about that. He takes a significant amount more jump shots than anything else, even more so than Klay - 596 jumpers, 158 pullups, and 75 step backs - on the season. His layup arsenal, too, is dangerous - from normal layups to attacking drives to floaters, he can hit defenders in a number of ways to render their defense useless, raising questions as to how we could possibly stop him.

### How Do We Stop Them?

In short, we almost definitely could not. If the best players in the NBA can't stop the Warriors' starting five, it is unlikely that a pickup team at the RSF would be able to. But, with some smart game planning, we could, hopefully, and with a good amount of luck, slow them down. Going in order, we can look at their shot tendencies and what we should do to attack them on defense to hinder their ability to amass points in seconds.

First, with Draymond, defenders have to make sure they do not help off of him. While he certainly isn't an offensive powerhouse on the team, his ability to convert on open jump shots as well as his high 2PT % suggest that he is often left open, and opponents often pay for this. Instead, a pickup strategy should be to let the stars get theirs, because they are almost impossible to slow down, and attack the role players on defense to hinder their performances.

Next, Kevin Durant is basically unstoppable. A pickup team should definitely put their best tall defender on him. While quickness and physicality can prove a problem for Durant, his height allows him to just rise over defenders, hence our use of a tall defender. Knowing that he tends to pull up for jumpers and hit fadeaways, defenders should try to stay attached to his hip at all times and let help defenders look out for when he attacks the basket.

Third, Andre Iguodala is a roleplayer that thrives in the system of the Warriors. He takes very few shots, but the shots that he does take suggests that they are open and easy for him to score, evident in his effective shooting % of 51.75%. As such, defenders should limit sagging off of him in order to force Durant, Curry, and Thompson to carry the offensive load and to get fatigued over time.

Klay Thompson is an exceptional three point shooter, and this should be a point that defenders keep in mind fully. He should not be left open beyond the arc ever, and help defenders inside the arc should be wary of his cutting ability and pull up jumpers.

Lastly, Curry is an offensive mammoth that will be tough to contain. He has proven that he cannot perform exceptionally well against taller, stronger defenders, so that should be what pickup players emphasize. Additionally, his reliance on jump shots in a manner similar to klay means that defenders should also stay attached to his body to hinder his pullups and step backs which he seems to rely a lot on.

In conclusion, the Warriors are near-impossible to stop. If a pickup team had to, however, a look at the starting five's shot tendencies sheds some light onto how they **could** be slowed down, at least.

### Sources

<http://www.espn.com/nba/player/_/id/6589/draymond-green>

<http://www.espn.com/nba/player/_/id/3202/kevin-durant>

<http://www.espn.com/nba/player/_/id/2386/andre-iguodala>

<http://www.espn.com/nba/player/_/id/6475/klay-thompson>

<http://www.espn.com/nba/player/_/id/3975/stephen-curry>
