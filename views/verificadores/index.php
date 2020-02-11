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
<div class="verificadores-index screen">

    <h1><?= Html::encode($this->title) ?></h1>

    <!--<p>
        <?= Html::a('Create Verificadores', ['create'], ['class' => 'btn btn-success']) ?>
    </p>-->
    
    <?php         
        Modal::begin([
                'header' => '<h4><center>Registro Municipal de Inspectores y Verificadores</center></h4>',
                'id'     => 'modal',
                'size'   => 'modal-lg',        
        ]);

        echo "<div id='modalContent'></div>";

        Modal::end();
    ?>
    
    <?php Pjax::begin(); ?>   
    <?php echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        //'layout'=>"{sorter}\n{pager}\n{summary}\n{items}",
        'summary' => "Mostrando {totalCount} inspectores/verificadores",
        'options' => ['class' => 'grid-view'],
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
        return Html::a($model->nom_completo, 
                            ['view','id'=>$model->id], 
                            [
                                'title' => 'Ver',
                                //'id' => 'modalButton',
                                'class'=>'modalButton',
                                'Style'=>'background-color: ; width:; border-color: ;',
                                ]);
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
//                'template'=> '{view}'
//                ],
        ],
    ]); 
            ?>
    
    
        
    <?php Pjax::end(); ?>

</div>


