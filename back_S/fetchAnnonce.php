<?php
$connexionDB = connexionDB();
$sqlQuery = "SELECT a.*, 
COUNT(b.id_badge) AS badge_count, 
c.nom AS category_name, 
u.nom AS user_name, 
COUNT(u.id_user) AS user_ads_count, 
bd.nom AS badge_name,
total_annonce.total_count AS total_annonce
FROM annonce AS a
LEFT JOIN badge AS b ON a.id_user = b.id_badge
JOIN category AS c ON a.id_category = c.id_category
JOIN users AS u ON a.id_user = u.id_user
LEFT JOIN badge AS bd ON u.id_badge = bd.id_badge
CROSS JOIN (SELECT COUNT(*) AS total_count FROM annonce) AS total_annonce
GROUP BY a.id_annonce, u.id_user
ORDER BY a.description ASC;
;
";
$annonces = $connexionDB->prepare($sqlQuery);
$annonces->execute();
$annonces = $annonces->fetchAll();

?>