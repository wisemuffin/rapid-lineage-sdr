LOAD CSV WITH HEADERS
FROM 'https://raw.githubusercontent.com/wisemuffin/rapid-lineage-sdr/main/data/column_to_table.csv' as row
//RETURN row

MATCH  (column:COLUMN {column_name: row.column}), (table:TABLE {name: row.viewname})

MERGE (column)-[rel:COL_TO_TAB]->(table)
RETURN (column)-[rel]->(table)