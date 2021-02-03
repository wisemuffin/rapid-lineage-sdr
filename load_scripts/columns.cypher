// CSV - Columns to RAPID
LOAD CSV WITH HEADERS
FROM 'https://raw.githubusercontent.com/wisemuffin/rapid-lineage-sdr/main/data/columns.csv' as row
WITH DISTINCT row.columns as column_name, row.formula as formula, row.viewname as table
//RETURN count(column)
MERGE (column:COLUMN {name: column_name})
    ON CREATE SET wb += {
    	table:table,
        formula: formula
    }
RETURN column