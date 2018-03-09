<?php
/* @var $this StatusController */
/* @var $data Status */
?>

<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('serial')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->serial), array('view', 'id'=>$data->serial)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('user_id')); ?>:</b>
	<?php echo CHtml::encode($data->user_id); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('designation')); ?>:</b>
	<?php echo CHtml::encode($data->designation); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('privacy')); ?>:</b>
	<?php echo CHtml::encode($data->privacy); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('share')); ?>:</b>
	<?php echo CHtml::encode($data->share); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('Parent')); ?>:</b>
	<?php echo CHtml::encode($data->status); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('')); ?>:</b>
<!--	--><?php //echo CHtml::encode($data->image); ?>

<!--        --><?php //echo CHtml::image(Yii::app()->request->baseUrl.'/uploads/'.$model->image,"image",array("width"=>200)); ?><!--  // Image shown here if page is update page-->
    <b><?php echo CHtml::image(Yii::app()->baseUrl . "/uploads/" . $data->image, "$data->image", array("width" => 250, "height" => 250)); ?></b>
	<br />





</div>