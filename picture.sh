#!/bin/bash

# 先把图片转成 base64 data URL
IMAGE_DATA=$(base64 -i baoshijie.png | tr -d '\n')

curl http://localhost:8080/v1/images/edits \
  -H "Content-Type: application/json" \
  -d "{
    \"model\": \"nano-banana-pro\",
    \"image\": \"data:image/png;base64,${IMAGE_DATA}\",
    \"prompt\": \"把这张照片中的车辆转成黑色调的风格\",
    \"size\": \"1K\",
    \"quality\": \"low\"
  }"