<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\VerificadoresBuscar */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="verificadores-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
        'options' => [
            'data-pjax' => 1
        ],
    ]); ?>

    <?php // $form->field($model, 'id') ?>

    <?php // $form->field($model, 'nombre') ?>

    <?php // $form->field($model, 'paterno') ?>

    <?php // $form->field($model, 'materno') ?>

    <?php // $form->field($model, 'nom_completo') ?>
    
    <div class="container-fluid contentSearch">
        <div class="container">
            <h3>Buscar Por:</h3>
        </div>
        <div class="col-md-8 col-xs-12"> 
            <?php
                $tiposS = \app\models\Secretarias::find()->all();
                $listaS = yii\helpers\ArrayHelper::map($tiposS, 'id', 'nombre')     
                    ?>        
                     <?= $form->field($model, 'secretaria' )->dropDownList($listaS, ['prompt'=> 'Selecciona','style'=>'width:']) ?>
           
        </div>
        <div class="col-md-4 col-xs-12">
            <?php
                $tiposC = \app\models\Cargos::find()->all();
                $listaC = yii\helpers\ArrayHelper::map($tiposC, 'id', 'nombre')     
            ?>        
            <?= $form->field($model, 'cargo' )->dropDownList($listaC, ['prompt'=> 'Selecciona','style'=>'width:']) ?>
        </div>
        <div  class="col-md-4 col-xs-12">
             <?= Html::submitButton('Buscar', ['class' => 'btn btn-info']) ?>
            <?php // Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
            <br>
            <br>
        </div>
        
         
    </div>
        
       

   

    <?php // echo $form->field($model, 'direccion') ?>

    <?php // echo $form->field($model, 'cargo') ?>

    <?php // echo $form->field($model, 'foto') ?>

    <?php ActiveForm::end(); ?>

</div>
