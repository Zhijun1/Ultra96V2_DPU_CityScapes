MODEL_PATH=./pre_trained/unet_model
OUTPUT_NODE="conv2d_13/BiasAdd"

freeze_graph \
     --input_graph         ${MODEL_PATH}/infer_graph.pb \
     --input_checkpoint    ${MODEL_PATH}/float_model.ckpt.data-00000-of-00001 \
     --output_graph        ${MODEL_PATH}/frozen_graph.pb
     --output_node_names   ${OUTPUT_NODE} \
     --input_binary        true
