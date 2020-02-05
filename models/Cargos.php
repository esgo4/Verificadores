<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "cargos".
 *
 * @property int $id
 * @property string|null $nombre
 * @property string|null $capacidad
 * @property int|null $activo
 *
 * @property InspectoresVerificadores[] $inspectoresVerificadores
 */
class Cargos extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'cargos';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['activo'], 'integer'],
            [['nombre', 'capacidad'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'nombre' => 'Nombre',
            'capacidad' => 'Capacidad',
            'activo' => 'Activo',
        ];
    }

    /**
     * Gets query for [[InspectoresVerificadores]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getInspectoresVerificadores()
    {
        return $this->hasMany(InspectoresVerificadores::className(), ['cargo' => 'id']);
    }
}
