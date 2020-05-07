<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Verificadores */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Verificadores', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="verificadores-view ">
    
    <div class="container-fluid printable ">
        <div class="row" >
            <div class="" style=" float:left ; width: 200px">
                <?php
                    if ($model->foto == null) {
                        echo '<p><img src="/image/not-found_1.png" alt="Verificador" height="200" width="150"></p>';
                      
                    }else{
                        echo '<p><img src="/img/'.$model->foto.'" alt="Verificador" height="200" width="150"></p>';
                    }    
                ?>
            </div>
            <div class="col" style=" display: table-cell; width: 800px" >
                <div class="titlepop" style="border-bottom: 1px solid #DDD; ">
                    <?= $model->nom_completo?>
                </div>  
                <div class="row contentpop" style="margin-top: 10px;">
                    <div class="col-md-6 col-xs-12">
                        <p>Dependencia: </p>
                    </div>
                    <div class="col-md-6 col-xs-12 datapop">
                         <?= $model->secretaria0->nombre?>
                    </div>
                </div>
                 <div class="row contentpop">
                    <div class="col-md-6 col-xs-12">
                        <p>Unidad Administrativa: </p>
                    </div>
                    <div class="col-md-6 col-xs-12 datapop">
                         <?php 
                        if($model->direccion0 == null){
                            echo "--";
                        }
                        ?>
                    </div>
                </div>
                 <div class="row contentpop">
                    <div class="col-md-6 col-xs-12">
                        <p>Cargo: </p>
                    </div>
                    <div class="col-md-6 col-xs-12 datapop">
                         <?= $model->cargo0->nombre?>
                    </div>
                </div>
                 <div class="row contentpop">
                    <div class="col-md-6 col-xs-12">
                        <p>Capacidad para verificar: </p>
                    </div>
                    <div class="col-md-6 col-xs-12 datapop">
                         <?= $model->cargo0->capacidad?>
                    </div>
                </div>
                <div class="row contentpop">
                    <div class="col-md-6 col-xs-12">
                        <p>Vigencia de cargo: </p>
                    </div>
                    <div class="col-md-6 col-xs-12 datapop">
                        <p>Indefinida</p>
                    </div>
                </div>
            </div>                       
        </div>
        
         <div class="row" >
                <div class="titlepop" style="border-bottom: 1px solid #DDD; ">
                    Información de contacto
                </div>  
                <div class="row contentpop" style="margin-top: 10px;">
                    <div class="col-md-6 col-xs-12">
                        <p>Domicilio de la dependencia: </p>
                    </div>
                    <div class="col-md-6 col-xs-12 datapop">
                         <?= $model->secretaria0->nombre?>
                    </div>
                </div>
                 <div class="row contentpop">
                    <div class="col-md-6 col-xs-12 ">
                        <p>Teléfóno de contacto: </p>
                    </div>
                    <div class="col-md-6 col-xs-12 datapop">
                         <?php 
                        if($model->direccion0 == null){
                            echo "--";
                        }
                        ?>
                    </div>
                </div>
                 <div class="row contentpop">
                    <div class="col-md-6 col-xs-12 ">
                        <p>Funcionario que coordina la visita: </p>
                    </div>
                    <div class="col-md-6 col-xs-12 datapop">
                         <?= $model->cargo0->nombre?>
                    </div>
                </div>
                 <div class="row contentpop">
                    <div class="col-md-6 col-xs-12 ">
                        <p>Teléfono del funcionario: </p>
                    </div>
                    <div class="col-md-6 col-xs-12 datapop">
                         <?= $model->cargo0->capacidad?>
                    </div>
                </div>
             <div class="row contentpop">
                    <div class="col-md-6 col-xs-12">
                        <p>Correo electrónico del funcionario: </p>
                    </div>
                    <div class="col-md-6 col-xs-12 datapop">
                         <?= $model->cargo0->capacidad?>
                    </div>
                </div>
            </div>  
        
        <div class="row" >
                <div class="titlepop" style="border-bottom: 1px solid #DDD; ">
                    Informacion adicional
                </div>  
                <div class="row contentpop" style="margin-top: 10px;">
                    <div class="col-md-6 col-xs-12">
                        <p>Fundamento jurídico: </p>
                    </div>
                    <div class="col-md-6 col-xs-12 datapop">
                         <?= $model->secretaria0->nombre?>
                    </div>
                </div>
                 <div class="row contentpop">
                    <div class="col-md-6 col-xs-12">
                        <p>Inspecciones o verificaciones durante 2017: </p>
                    </div>
                    <div class="col-md-6 col-xs-12 datapop">
                         <?php 
                        if($model->direccion0 == null){
                            echo "--";
                        }
                        ?>
                    </div>
                </div>
                 <div class="row contentpop">
                    <div class="col-md-6 col-xs-12">
                        <p>Inspecciones o verificaciones durante 2018: </p>
                    </div>
                    <div class="col-md-6 col-xs-12 datapop">
                         <?= $model->cargo0->nombre?>
                    </div>
                </div>
                 <div class="row contentpop">
                    <div class="col-md-6 col-xs-12">
                        <p>Inspecciones o verificaciones durante 2019: </p>
                    </div>
                    <div class="col-md-6 col-xs-12 datapop">
                         <?= $model->cargo0->capacidad?>
                    </div>
                </div>
            </div>  
    </div>
        

    <!--<h1><?= Html::encode($this->title) ?></h1>-->

    <!--<p>
        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>-->

    <!--<?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'nombre',
            'paterno',
            'materno',
            'nom_completo',
            'no_empleado',
            'secretaria',
            'direccion',
            'cargo',
            'foto',
        ],
    ]) ?>-->            

</div>
