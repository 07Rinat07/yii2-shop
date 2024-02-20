<?php
use yii\helpers\Html;
use yii\helpers\Url;

$shopName = isset(Yii::$app->params['shopName']) ? Yii::$app->params['shopName'] : 'Default Shop Name';

Html::img(
    '@web/images/home/logo.png',
    ['alt' => $shopName]
);


