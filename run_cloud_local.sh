gcloud ml-engine local train \
	--module-name trainer.train_cloud \
	--package-path trainer \
	--job-dir output \
	-- \
	--train-files data/train.json \
	--learning-rate 0.001 \
	--decay 0.01 \
	--train-batch-size 32 \
	--steps-per-epoch 1 \
	--num-epochs 1  \
	--patience 50  \
	--cv 2  \
	--val-ratio 0.3  \
	--do-predict-test True  \
	--test-file data/test.json \
	--rotation-range 20  \
	--horizontal-flip True  \
	--vertical-flip True  \
	--width-shift-range 0.1  \
	--height-shift-range 0.1  \
	--zoom-range 0.1  \
	--model-name VGG16  \
	--pooling 'avg'  \
	--trainable-layers 5  \
	--fc-layers 2  \
	--dropouts  0.35
