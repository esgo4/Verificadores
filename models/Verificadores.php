<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "verificadores".
 *
 * @property int $id
 * @property string|null $nombre
 * @property string|null $paterno
 * @property string|null $materno
 * @property string|null $nom_completo
 * @property string|null $no_empleado
 * @property int|null $secretaria
 * @property int|null $direccion
 * @property int|null $cargo
 * @property string|null $foto
 *
 * @property Cargos $cargo0
 * @property Direcciones $direccion0
 * @property Secretarias $secretaria0
 */
class Verificadores extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'verificadores';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nombre', 'paterno','materno','no_empleado','foto'], 'required','message'=>'No puede estar vacío'],
            [['secretaria', 'direccion', 'cargo'], 'integer'],
            [['nombre', 'paterno', 'materno', 'nom_completo', 'foto'], 'string', 'max' => 100],
            [['no_empleado'], 'string', 'max' => 10],
            [['cargo'], 'exist', 'skipOnError' => true, 'targetClass' => Cargos::className(), 'targetAttribute' => ['cargo' => 'id']],
            [['direccion'], 'exist', 'skipOnError' => true, 'targetClass' => Direcciones::className(), 'targetAttribute' => ['direccion' => 'id']],
            [['secretaria'], 'exist', 'skipOnError' => true, 'targetClass' => Secretarias::className(), 'targetAttribute' => ['secretaria' => 'id']],
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
            'paterno' => 'Paterno',
            'materno' => 'Materno',
            'nom_completo' => 'Nombre del inspector/verificador',
            'no_empleado' => 'No Empleado',
            'secretaria' => 'Secretaria',
            'direccion' => 'Direccion',
            'cargo' => 'Cargo que ocupa',
            'foto' => 'Foto',
        ];
    }

    /**
     * Gets query for [[Cargo0]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getCargo0()
    {
        return $this->hasOne(Cargos::className(), ['id' => 'cargo']);
    }

    /**
     * Gets query for [[Direccion0]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getDireccion0()
    {
        return $this->hasOne(Direcciones::className(), ['id' => 'direccion']);
    }

    /**
     * Gets query for [[Secretaria0]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getSecretaria0()
    {
        return $this->hasOne(Secretarias::className(), ['id' => 'secretaria']);
    }
}
