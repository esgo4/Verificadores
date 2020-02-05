<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Verificadores */

$this->title = 'Create Verificadores';
$this->params['breadcrumbs'][] = ['label' => 'Verificadores', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="verificadores-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
        'dependencias_organizaciones' => $dependencias_organizaciones
    ]) ?>

</div>
