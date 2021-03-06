survey <- read.csv(choose.files())


dim(survey)
install.packages("summarytools")
library("summarytools")
summary(survey$How.often.do.you.use.conditioner.)
descr(survey$How.often.do.you.use.conditioner.)
hist(survey$How.often.do.you.use.conditioner.)

useConditioner <- subset(survey, survey$How.often.do.you.use.conditioner.<4)

never <- subset(survey, survey$How.often.do.you.use.conditioner.==4)

t.test(never$Do.you.feel.using.conditioner.smoothens.your.hair., useConditioner$Do.you.feel.using.conditioner.smoothens.your.hair.)

t.test(survey$Does.your.shampoo.has.conditioner.in.it., survey$Do.you.feel.using.conditioner.smoothens.your.hair.)
t.test(survey$What.type.of.water.do.you.use.to.wash.your.hair., survey$Do.you.feel.using.conditioner.smoothens.your.hair.)

value1<-lm(survey$How.often.do.you.use.conditioner.~survey$Do.you.feel.using.conditioner.smoothens.your.hair.)
summary(value1)

value2<- lm(survey$Do.you.feel.using.conditioner.smoothens.your.hair. ~ survey$How.often.do.you.use.conditioner. + survey$Does.your.shampoo.has.conditioner.in.it.)
summary(value2)

value3<- lm(survey$Do.you.feel.using.conditioner.smoothens.your.hair. ~ 
              survey$How.often.do.you.use.conditioner. + 
              survey$Does.your.shampoo.has.conditioner.in.it. + 
              survey$What.type.of.water.do.you.use.to.wash.your.hair.)
summary(value3)


value4<- lm(survey$Do.you.feel.using.conditioner.smoothens.your.hair. ~ 
              survey$How.often.do.you.use.conditioner. + 
              survey$Does.your.shampoo.has.conditioner.in.it. + 
              survey$What.type.of.water.do.you.use.to.wash.your.hair. +
              survey$Which.best.describe.your.hair.texture.)
summary(value4)

value5<-lm(survey$Do.you.feel.using.conditioner.smoothens.your.hair. ~ 
             survey$How.often.do.you.use.conditioner. + 
             survey$Does.your.shampoo.has.conditioner.in.it. + 
             survey$What.type.of.water.do.you.use.to.wash.your.hair. +
             survey$Which.best.describe.your.hair.texture. + 
             survey$How.often.do.you.wash.your.hair.with.shampoo.)
summary(value5)

value6<- lm(survey$Do.you.feel.using.conditioner.smoothens.your.hair. ~ 
              survey$How.often.do.you.use.conditioner. + 
              survey$Does.your.shampoo.has.conditioner.in.it. + 
              survey$What.type.of.water.do.you.use.to.wash.your.hair. +
              survey$Which.best.describe.your.hair.texture. +
              survey$How.often.do.you.wash.your.hair.with.shampoo.+
              survey$What.is.your.gender.)
summary(value6)

```
