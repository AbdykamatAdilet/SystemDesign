CREATE CONSTRAINT component_name_unique
FOR (c:Component)
REQUIRE c.name IS UNIQUE;
