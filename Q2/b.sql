SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'Rfam'
AND TABLE_NAME IN ('family', 'rfamseq', 'full_region', 'clan', 'clan_membership', 'taxonomy')
GROUP BY COLUMN_NAME
HAVING COUNT(*) > 1;
