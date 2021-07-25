#!/usr/bin/env bash

#PROJ_ROOT=/home/tyler/Desktop/codes/REMIND

#export PYTHONPATH=${PROJ_ROOT}
#source activate remind_proj
#cd ${PROJ_ROOT}/image_classification_experiments

#IMAGENET_DIR=/media/tyler/nvme_drive/data/ImageNet2012 #/media/robik/ImageNet2012/ #/home/bidur/datasets/ImageNet2012/
#BASE_MAX_CLASS=100
#MODEL=ResNet18ClassifyAfterLayer4_1    #ResNet18_CenterLoss
#LABEL_ORDER_DIR=./imagenet_files/ # location of numpy label files
#GPU=0

#CUDA_VISIBLE_DEVICES=${GPU} python -u train_base_init_network_from_scratch.py \
#--arch ${MODEL} \
#--data ${IMAGENET_DIR} \
#--base_max_class ${BASE_MAX_CLASS} \
#--labels_dir ${LABEL_ORDER_DIR} \
#--ckpt_file ${MODEL}_${BASE_MAX_CLASS}.pth > logs/${MODEL}_${BASE_MAX_CLASS}_from_scratch.log'''

#python train_base_init_network_from_scratch.py --arch ResNet18_CenterLoss --data /home/bidur/datasets/ImageNet2012/ --base_max_class 10 --center_loss


#### use new scripts for training 

#python train_base_init_network_from_scratch.py --arch ResNet18_CenterLoss --data /home/tyler/data/ImageNet2012 --ckpt_file imagenet_010_class_ckpt.pt --base_max_class 10 --gpu -1 &&
python train_base_init_network_from_scratch.py --arch ResNet18_CenterLoss --data /home/tyler/data/ImageNet2012 --ckpt_file imagenet_centerloss_010_alpha_1_class_ckpt.pt --base_max_class 10 --center_loss --alpha 1 --gpu -1 &&
python train_base_init_network_from_scratch.py --arch ResNet18_CenterLoss --data /home/tyler/data/ImageNet2012 --ckpt_file imagenet_centerloss_010_alpha_0.5_class_ckpt.pt --base_max_class 10 --center_loss --alpha 0.5 --gpu -1 &&
python train_base_init_network_from_scratch.py --arch ResNet18_CenterLoss --data /home/tyler/data/ImageNet2012 --ckpt_file imagenet_centerloss_010_alpha_0.1_class_ckpt.pt --base_max_class 10 --center_loss --alpha 0.1 --gpu -1 &&
python train_base_init_network_from_scratch.py --arch ResNet18_CenterLoss --data /home/tyler/data/ImageNet2012 --ckpt_file imagenet_centerloss_010_alpha_0.01_class_ckpt.pt --base_max_class 10 --center_loss --alpha 0.01 --gpu -1

