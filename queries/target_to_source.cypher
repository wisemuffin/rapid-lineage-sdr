MATCH query=((c:COLUMN {name: 'inc evnt interaction sequence type'})-[:COL_TO_COL*1..8]->(c2:COLUMN)) return query

target to source only
MATCH query=((c:COLUMN {name: 'inc evnt interaction sequence type'})-[:COL_TO_COL*1..8]->(c2:COLUMN)-[:COL_TO_COL]->(c3:COLUMN {formula: 'source table'})) return query
