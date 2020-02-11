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
                $tipos = \app\models\Secretarias::find()->all();
                $lista = yii\helpers\ArrayHelper::map($tipos, 'id', 'nombre')     
                    ?>        
                     <?= $form->field($model, 'secretaria' )->dropDownList($lista, ['prompt'=> 'Selecciona','style'=>'width:']) ?>
           
        </div>
        <div class="col-md-4 col-xs-12">
            <?=  $form->field($model, 'nom_completo')->label('Nombre') ?>
        </div>
        <div  class="col-md-4 col-xs-12">
             <?= Html::submitButton('Buscar', ['class' => 'btn btn-primary']) ?>
            <?php // Html::resetButton('Reset', ['class' => 'btn btn-outline-secondary']) ?>
        </div>
         
    </div>
        
       

   

    <?php // echo $form->field($model, 'direccion') ?>

    <?php // echo $form->field($model, 'cargo') ?>

    <?php // echo $form->field($model, 'foto') ?>

    <?php ActiveForm::end(); ?>

</div>
