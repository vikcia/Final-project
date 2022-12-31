<?php
$resTest = mysql_query("SELECT id, cid, flagman, sell_price, cap_{$lang} FROM e_products WHERE visible = 1");
foreach ($resTest as $value) {
    if ($value['cid'] == 126) {
        if ($value['id'] == 147 || $value['flagman'] == 147) {
            $ckArr[] = $value;
            $minCk = min(array_column($ckArr,'sell_price'));
            $maxCk = max(array_column($ckArr,'sell_price'));
        }
    }

}
$minCk = number_format((float)$minCk,2,'.','');
$maxCk = number_format((float)$maxCk,2,'.','');

$smarty->assign('minCk_value',$minCk);
$smarty->assign('maxCk_value',$maxCk);

foreach ($resTest as $value) {
    if ($value['cid'] == 126) {
        if ($value['id'] == 1025 || $value['flagman'] == 1025) {
            $arcArr[] = $value;
            $minArc = min(array_column($arcArr,'sell_price'));
            $maxArc = max(array_column($arcArr,'sell_price'));
        }
    }

}
$minArc = number_format((float)$minArc,2,'.','');
$maxArc = number_format((float)$maxArc,2,'.','');

$smarty->assign('minArc_value',$minArc);
$smarty->assign('maxArc_value',$maxArc);
