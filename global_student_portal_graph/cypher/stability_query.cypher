MATCH (c:Component)
OPTIONAL MATCH (c)<-[in:DEPENDS_ON]-()
WITH c, COUNT(in) AS FanIn
OPTIONAL MATCH (c)-[out:DEPENDS_ON]->()
WITH c, FanIn, COUNT(out) AS FanOut
WITH c.name AS Component,
     FanIn,
     FanOut,
     CASE 
        WHEN (FanIn + FanOut) = 0 THEN 0
        ELSE toFloat(FanOut) / (FanIn + FanOut)
     END AS Instability
RETURN Component, FanIn, FanOut, Instability
ORDER BY Instability DESC;
