SELECT f.rfam_acc, f.rfam_id, MAX(r.length) AS max_sequence_length
FROM family f
JOIN rfamseq r ON f.rfam_acc = r.accession
WHERE r.length > 1000000
GROUP BY f.rfam_acc, f.rfam_id
ORDER BY max_sequence_length DESC
LIMIT 15 OFFSET 120;
