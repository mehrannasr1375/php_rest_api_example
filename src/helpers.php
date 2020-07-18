<?php

function dd($data)
{
    echo "<pre style='background-color:#607D8B;color:white;padding:10px;line-height:1.3;direction:ltr !important;text-align:left!important;'>";
    print_r($data);
    echo "</pre>";
    die();
}


function dump($data)
{
    echo "<pre style='background-color:#607D8B;color:white;padding:10px;line-height:1.3;direction:ltr !important;text-align:left!important;'>";
    print_r($data);
    echo "</pre>";
}