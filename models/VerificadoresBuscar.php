<?php

namespace app\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Verificadores;

/**
 * VerificadoresBuscar represents the model behind the search form of `app\models\Verificadores`.
 */
class VerificadoresBuscar extends Verificadores
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'secretaria', 'direccion', 'cargo'], 'integer'],
            [['nombre', 'paterno', 'materno', 'nom_completo', 'no_empleado', 'foto'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Verificadores::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'secretaria' => $this->secretaria,
            'direccion' => $this->direccion,
            'cargo' => $this->cargo,
        ]);

        $query->andFilterWhere(['like', 'nombre', $this->nombre])
            ->andFilterWhere(['like', 'paterno', $this->paterno])
            ->andFilterWhere(['like', 'materno', $this->materno])
            ->andFilterWhere(['like', 'nom_completo', $this->nom_completo])
            ->andFilterWhere(['like', 'no_empleado', $this->no_empleado])
            ->andFilterWhere(['like', 'foto', $this->foto]);

        return $dataProvider;
    }
}
