<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "direcciones".
 *
 * @property int $id
 * @property string|null $nombre
 * @property int|null $activo
 * @property int $secretarias_id
 *
 * @property Secretarias $secretarias
 * @property InspectoresVerificadores[] $inspectoresVerificadores
 */
class Direcciones extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'direcciones';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['activo', 'secretarias_id'], 'integer'],
            [['secretarias_id'], 'required'],
            [['nombre'], 'string', 'max' => 255],
            [['secretarias_id'], 'exist', 'skipOnError' => true, 'targetClass' => Secretarias::className(), 'targetAttribute' => ['secretarias_id' => 'id']],
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
            'activo' => 'Activo',
            'secretarias_id' => 'Secretarias ID',
        ];
    }

    /**
     * Gets query for [[Secretarias]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getSecretarias()
    {
        return $this->hasOne(Secretarias::className(), ['id' => 'secretarias_id']);
    }

    /**
     * Gets query for [[InspectoresVerificadores]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getInspectoresVerificadores()
    {
        return $this->hasMany(InspectoresVerificadores::className(), ['direccion' => 'id']);
    }
}
