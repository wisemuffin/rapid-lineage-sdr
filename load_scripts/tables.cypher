// CSV - tables to RAPID
LOAD CSV WITH HEADERS
FROM 'https://raw.githubusercontent.com/wisemuffin/rapid-lineage-sdr/main/data/tables.csv' as row
WITH DISTINCT row.tables as table_name
//RETURN count(table)
MERGE (table:TABLE {name: table_name})
RETURN table