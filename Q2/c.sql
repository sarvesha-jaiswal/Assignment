SELECT t.species AS rice_type, MAX(r.length) AS longest_dna_sequence
FROM taxonomy t
JOIN rfamseq r ON t.ncbi_id = r.ncbi_id
WHERE t.species LIKE '%Rice%'
GROUP BY t.species
ORDER BY longest_dna_sequence DESC
LIMIT 1;
