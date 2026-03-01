MATCH (a:Component {name:'Web Client'}),
      (b:Component {name:'Geo-DNS'})
CREATE (a)-[:DEPENDS_ON]->(b);

MATCH (a:Component {name:'Mobile App'}),
      (b:Component {name:'Geo-DNS'})
CREATE (a)-[:DEPENDS_ON]->(b);

MATCH (a:Component {name:'Admin Dashboard'}),
      (b:Component {name:'Geo-DNS'})
CREATE (a)-[:DEPENDS_ON]->(b);

MATCH (a:Component {name:'Geo-DNS'}),
      (b:Component {name:'Load Balancer'})
CREATE (a)-[:DEPENDS_ON]->(b);

MATCH (a:Component {name:'Load Balancer'}),
      (b:Component {name:'API Gateway'})
CREATE (a)-[:DEPENDS_ON]->(b);

MATCH (a:Component {name:'API Gateway'}),
      (b:Component {name:'Auth Service'})
CREATE (a)-[:DEPENDS_ON]->(b);

MATCH (a:Component {name:'API Gateway'}),
      (b:Component {name:'Student Service'})
CREATE (a)-[:DEPENDS_ON]->(b);

MATCH (a:Component {name:'API Gateway'}),
      (b:Component {name:'Enrollment Service'})
CREATE (a)-[:DEPENDS_ON]->(b);

MATCH (a:Component {name:'API Gateway'}),
      (b:Component {name:'Grade Service'})
CREATE (a)-[:DEPENDS_ON]->(b);

MATCH (a:Component {name:'API Gateway'}),
      (b:Component {name:'Billing Service'})
CREATE (a)-[:DEPENDS_ON]->(b);

MATCH (a:Component {name:'API Gateway'}),
      (b:Component {name:'Notification Service'})
CREATE (a)-[:DEPENDS_ON]->(b);

MATCH (a:Component {name:'Enrollment Service'}),
      (b:Component {name:'Kafka'})
CREATE (a)-[:DEPENDS_ON]->(b);

MATCH (a:Component {name:'Billing Service'}),
      (b:Component {name:'Kafka'})
CREATE (a)-[:DEPENDS_ON]->(b);

MATCH (a:Component {name:'Notification Service'}),
      (b:Component {name:'Kafka'})
CREATE (a)-[:DEPENDS_ON]->(b);

MATCH (a:Component {name:'Saga Orchestrator'}),
      (b:Component {name:'Kafka'})
CREATE (a)-[:DEPENDS_ON]->(b);

MATCH (a:Component {name:'Student Service'}),
      (b:Component {name:'Redis Cache'})
CREATE (a)-[:DEPENDS_ON]->(b);

MATCH (a:Component {name:'Student Service'}),
      (b:Component {name:'EU DB Cluster'})
CREATE (a)-[:DEPENDS_ON]->(b);

MATCH (a:Component {name:'Enrollment Service'}),
      (b:Component {name:'EU DB Cluster'})
CREATE (a)-[:DEPENDS_ON]->(b);

MATCH (a:Component {name:'Grade Service'}),
      (b:Component {name:'EU DB Cluster'})
CREATE (a)-[:DEPENDS_ON]->(b);

MATCH (a:Component {name:'Billing Service'}),
      (b:Component {name:'EU DB Cluster'})
CREATE (a)-[:DEPENDS_ON]->(b);
