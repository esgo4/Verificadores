<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
use yii\bootstrap\Modal;
/* @var $this yii\web\View */
/* @var $searchModel app\models\VerificadoresBuscar */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Registro Municipal de Inspectores y Verificadores';
//$this->params['breadcrumbs'][] = $this->title;
?>
<div class="verificadores-index screen" style="font-family: 'Montserrat';">

    <div class="row" style="text-align: center">        
        <div  class="col-md-12 col-xs-12 ">
           <img src="/image/banner.jpeg" alt="Banner" width="700" height="175">
        </div>
    </div>
    

    <!--<p>
        <?= Html::a('Create Verificadores', ['create'], ['class' => 'btn btn-success']) ?>
    </p>-->
   
    <?php Pjax::begin(); ?>  
    
    <?php '<h4 id="modalHeaderTitle"><center>Registro Municipal de Inspectores y Verificadores</center></h4>' ?>  
    
    <!--?php         
        Modal::begin([
                'header' => '<h4><center>Registro Municipal de Inspectores y Verificadores</center></h4>',
                'id'     => 'modal',
                'size'   => 'modal-lg',        
        ]);

       echo '<div id="modalContent"><div style="text-align:center"><img src="'. yii\helpers\Url::to('/image/load_1.gif').'"></div></div>';

        Modal::end();
    ?-->
    
    
    <?php echo $this->render('_search', ['model' => $searchModel]); ?>
    
    <div class="container-fluid" style="margin-top: -15%;">
        <div class="row">
             <div class="card">
                 <div class="card-content">
                      <?= GridView::widget([
                'dataProvider' => $dataProvider,
                //'filterModel' => $searchModel,
                //'layout'=>"{sorter}\n{pager}\n{summary}\n{items}",
                'summary' => "Mostrando {totalCount} inspectores/verificadores",
                'options' => ['class' => 'viewGrid'],
                'columns' => [
        //            ['class' => 'yii\grid\SerialColumn'],

        //            'id',
        //            'nombre',
        //            'paterno',
        //            'materno',
                    //'nom_completo',
                    [
                        'attribute'=>'nom_completo',
                        //'value' => 'nom_completo',
                        'value'=>function($model){
        //                    return Html::button($model->nom_completo, ['id' => 'modalButton', 
        //                        'value' => \yii\helpers\Url::to(['view', 'id' => $model->id]), 'class' => 'btn btn-success']); 
                return /*Html::a($model->nom_completo, 
                                    ['view','id'=>$model->id], 
                                    [
                                        'title' => 'Ver',
                                        //'id' => 'modalButton',
                                        'class'=>'modalButton',
                                        'Style'=>'color:#26c6da ; width:; border-color: ;',
                                        ]);*/
                  \yii\bootstrap\Html::button($model->nom_completo, ['value' => yii\helpers\Url::to(['view', 'id' => $model->id]), 'title' => 'Ver', 'class' => 'showModalButton  btn-primary btn-link', 'style' => ' ']); 
                        },
                                'format' => 'raw'
                    ],
                    //'no_empleado',
                    //'secretaria',
                    [
                        'attribute'=>'secretaria',
                        'value' => 'secretaria0.nombre',
                    ],
                    //'direccion',
                    //'cargo',
                    [
                        'attribute'=>'cargo',
                        'value' => 'cargo0.nombre',
                    ],
                    //'foto',

        //            ['class' => 'yii\grid\ActionColumn',
        //                'template'=> '{view}{update}'
        //                ],
                ],
            ]); 
                    ?>   
                 </div>
                 
               
            </div>
        </div>
    </div>     
    
    
   

    
        
    <?php Pjax::end(); ?>

</div>


