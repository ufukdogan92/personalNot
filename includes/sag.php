<div class="col-md-3">
    <div class="col-md-12 notlarIndex">
        <h2>Dersler</h2>
        <ul>
        <?php
            $sql = mysql_query("select * from dersler");
            while($sonuc = mysql_fetch_array($sql)){
                $id = $sonuc["id"];
                $sql2 = mysql_query("select * from notlar where dersID = $id");
                $counter = mysql_num_rows($sql2);
                ?>
            <li><a href="#"><?=$sonuc["dersAdi"]?></a> <span title="Toplam <?=$counter?> not var">(<?=$counter?>)</span> </li>
        <?php } ?>
        </ul>
    </div>

</div>