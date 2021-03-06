<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Verificadores */

$this->title = 'Update Verificadores: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Verificadores', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="verificadores-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
        'dependencias_organizaciones'=>$dependencias_organizaciones
    ]) ?>

</div>
