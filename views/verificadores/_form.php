<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use \kartik\file\FileInput;
use kartik\select2\Select2;
use yii\helpers\Url;
use kartik\depdrop\DepDrop;
/* @var $this yii\web\View */
/* @var $model app\models\Verificadores */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="verificadores-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'nombre')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'paterno')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'materno')->textInput(['maxlength' => true]) ?>

    <!--<?= $form->field($model, 'nom_completo')->textInput(['maxlength' => true]) ?>-->

    <?= $form->field($model, 'no_empleado')->textInput(['maxlength' => true]) ?>
           
    <?= $form->field($model, 'secretaria')->widget(Select2::classname(), [
                                        'data' => $dependencias_organizaciones,
                                        'options' => [
                                            'placeholder' => 'Seleccionar Secretaria ...',                                           
                                            'id' => 'dependenciaremitente'],
                                        'pluginOptions' => [
                                            'ajax' => [
                                                'url' => Url::to(['/verificadores/dependencias']),
                                                'dataType' => 'json',
                                                'data' => new \yii\web\JsExpression('function(params) { return {q:params.term}; }')
                                            ],
                                        'allowClear' => true,
                                        ],
                                        
                                    ]); ?>

    <?= $form->field($model, 'direccion')->widget(DepDrop::classname(),[
                                        'type' => DepDrop::TYPE_SELECT2,
                                        'options'=>['id'=>'solicitantes'],
                                        'pluginOptions' => [
                                            'placeholder' => 'Selecionar Direccion ...',
                                            'depends' => ['dependenciaremitente'],
                                            'url' => Url::to(['/verificadores/solicitanteajax']),
                                        ],
                                        
                                    ]);?>

    <?php
                        $tipos = \app\models\Cargos::find()->all();
                        $lista = yii\helpers\ArrayHelper::map($tipos, 'id', 'nombre')     
                    ?>        
                     <?= $form->field($model, 'cargo' )->dropDownList($lista, ['prompt'=> 'Selecciona','style'=>'width:']) ?>

    <!--<?= $form->field($model, 'foto')->textInput(['maxlength' => true]) ?>-->
    
    <?= $form->field($model, 'foto')->widget(FileInput::classname(), [
                      'options' => [
                      'accept' => 'img/*'],
                      'pluginOptions' => ['allowedFileExtensions'=>['jpg','gif','png','jpeg'],'previewFileType' => 'any','showUpload' => false]
                      ]); ?>

    <div class="form-group">
        <?= Html::submitButton('Guardar', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
