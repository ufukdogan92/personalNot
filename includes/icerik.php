<div class="container theme-showcase upper" role="main">


    <div class="row">
        <div class="col-md-9">

            <?php

                $sql = mysql_query("select * from notlar order by id DESC  limit 0,2");
                while($sonuc = mysql_fetch_array($sql)){
                    $id = $sonuc["dersID"];
                    $sql2 = mysql_query("select * from dersler where id = $id");
                    $sonuc2 = mysql_fetch_array($sql2);
            ?>



            <div class="col-md-11 notlarIndex">
                <h2><?=$sonuc["baslik"]?>  <span class="aTitle"><a href="#"><?=$sonuc2["dersAdi"]?></a></span> </h2>
                <p> <?=$sonuc["kisaBaslik"]?></p>
                <p><a class="btn btn-default" href="#" role="button">Sayfaya Git &raquo;</a></p>
            </div>


            <?php } ?>


        </div>

    <?php include "includes/sag.php" ?>


    </div>

</div>