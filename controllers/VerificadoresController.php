<?php

namespace app\controllers;

use Yii;
use app\models\Verificadores;
use app\models\VerificadoresBuscar;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\helpers\Json;

/**
 * VerificadoresController implements the CRUD actions for Verificadores model.
 */
class VerificadoresController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all Verificadores models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new VerificadoresBuscar();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Verificadores model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {   
        return $this->renderAjax('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Verificadores model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {             
        $dependencias_organizaciones = \yii\helpers\ArrayHelper::map(\app\models\Secretarias::find()->all(), 'id', 'nombre');
        $model = new Verificadores();

        if ($model->load(Yii::$app->request->post())) {
            $model->nom_completo = $model->nombre.' '.$model->paterno.' '.$model->materno;
                //Controlador para subida individual
                if(($archivo_r= \yii\web\UploadedFile::getInstance($model, 'foto'))!== null){
                        $model->foto = $archivo_r->name;
                        $archivo_r->saveAs('img/'.$archivo_r->name);
                        //$model->save();
                    }// else {
                    //    $model->save();
                    //}
                    
                    $model->save();
            return $this->redirect('index');
        }

        return $this->render('create', [
            'model' => $model,
            'dependencias_organizaciones' => $dependencias_organizaciones
        ]);
    }

    /**
     * Updates an existing Verificadores model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $dependencias_organizaciones = \yii\helpers\ArrayHelper::map(\app\models\Secretarias::find()->all(), 'id', 'nombre');
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post())  ) {
                //Try to get file info
            if(($upload_image = \yii\web\UploadedFile::getInstance($model, 'foto'))!== null){
                        $image_name = $upload_image->name;
                        $model->foto = $image_name;
                        $upload_image->saveAs('img/' . $image_name);
                    }
                    
            $model->save();
            return $this->redirect('index');
        }

        return $this->render('update', [
            'model' => $model,
            'dependencias_organizaciones' => $dependencias_organizaciones,
        ]);
    }

    /**
     * Deletes an existing Verificadores model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Verificadores model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Verificadores the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Verificadores::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
    
     
    public function actionSolicitanteajax() {   
        $out = [];
        if (isset($_POST['depdrop_parents'])) {
            $parents = $_POST['depdrop_parents'];
            if ($parents != null) {
                $id = $parents[0];
                $out = \app\models\Direcciones::find()
                           ->where(['secretarias_id' => $id])
                           ->select(['id', 'nombre AS name'])
                           ->asArray()->all();
               echo Json::encode(['output' => $out, 'selected' => '']);
            }
        }
        //echo Json::encode(['output' => '', 'selected' => '']);
    }
    
    public function actionDependencias(){
        \Yii::$app->response->format = \yii\web\Response::FORMAT_JSON;
        $out = ['results' => ['id' => '', 'text' => '']];

            $query = new \yii\db\Query;
            $mainQuery = $query
                    ->select('id, nombre AS text')
                    ->from('secretarias')
                    ->limit(20);
            $command = $mainQuery->createCommand();
            $data = $command->queryAll();
            $out['results'] = array_values($data);
    
        return $out;
    }
}
