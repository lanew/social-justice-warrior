# Social Justice Warrior



## Scraper - (not sure about his right now; maybe down the road iteration)

### Twitter
* Go to Twitter.com
* match .MomentCapsuleSummary.MomentCapsuleSummary--card .MomentCapsuleDetails-category
* match .MomentCapsuleSummary.MomentCapsuleSummary--card .MomentCapsuleDetails-title
* match .MomentCapsuleSummary.MomentCapsuleSummary--card .MomentCapsuleDetails-titleLink

attr
$(".MomentCapsuleSummary.MomentCapsuleSummary--card .MomentCapsuleDetails-titleLink").map(function() {return 'https://twitter.com'+$(this).attr("href")})

Hmtl
$(".MomentCapsuleSummary.MomentCapsuleSummary--card .MomentCapsuleDetails-category").map(function() {return $(this).html()})

$(".MomentCapsuleSummary.MomentCapsuleSummary--card .MomentCapsuleDetails-title").map(function() {return $(this).html()})

NoKogiri 
.css(".MomentCapsuleSummary.MomentCapsuleSummary--card .MomentCapsuleDetails-category")
use openURI to get html from twitter.com and apply to new object in database



### Gallup
http://www.gallup.com/topic/category_social_issues.aspx


### Global Issues 
http://www.globalissues.org/


## Roles
* activist
* teams
* admin
* team membership


