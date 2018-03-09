<?php
/* @var $this StatusController */
/* @var $dataProvider CActiveDataProvider */

$this->breadcrumbs=array(
	'Statuses',
);



$this->menu=array(
	array('label'=>'Create Status', 'url'=>array('create')),
);


$users = User::model()->find(array('condition' => "username='".Yii::app()->user->name."'"));
$designation = $users->publisher;
if ($designation == "Admin"){
    $this->menu=array(
        array('label'=>'Create Status', 'url'=>array('create')),
	array('label'=>'Manage Status', 'url'=>array('admin')),

    );

}
?>

<h1>Statuses</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
