SELECT COUNT(*) AS num_types_of_tigers
FROM taxonomy
WHERE species LIKE '%Tiger%';

SELECT ncbi_id
FROM taxonomy
WHERE tree_display_name='Panthera_tigris_sumatrae_(Sumatran_tiger)';
