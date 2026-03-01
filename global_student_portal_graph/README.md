# Global Student Portal – Dependency Graph & Stability Metrics:

## Overview:

This project models the architecture of a Global Student Portal using Neo4j.
Each architectural component is represented as a node.
Dependencies are represented as directed edges (DEPENDS_ON).

## Stability Metrics (Clean Architecture):

Fan-in = number of incoming dependencies  
Fan-out = number of outgoing dependencies  

Instability formula:

I = FanOut / (FanIn + FanOut)

Interpretation:

I → 0 → highly stable  
I → 1 → highly unstable  

## Setup:

docker compose up -d

Open Neo4j:
http://localhost:7474

Username: neo4j  
Password: password  

Run cypher scripts in order:
1. 01_constraints.cypher
2. 02_create_nodes.cypher
3. 03_create_relationships.cypher
4. 04_stability_query.cypher

## Example Output:

Component     | Fan-In | Fan-Out | Instability 
Web Client    |   0    |    1    |    1.0 
API Gateway   |   2    |    6    |    0.75 
Kafka         |   4    |    0    |   0.0 
EU DB Cluster |   4    |    0    |    0.0 

## Interpretation

Infrastructure components (Kafka, Database) show low instability.
Edge components (UI, Gateway) show high instability.
This aligns with Clean Architecture principles.
