LOAD CSV WITH HEADERS
FROM 'https://raw.githubusercontent.com/wisemuffin/rapid-lineage-sdr/main/data/column%20rel.csv' as row
//RETURN row

MATCH  (column:COLUMN {name: row.column}), (column_rel:COLUMN {name: row.column_rel})

MERGE (column)-[rel:COL_TO_COL]->(column_rel)
RETURN (column)-[rel]->(column_rel)