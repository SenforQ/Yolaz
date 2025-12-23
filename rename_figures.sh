#!/bin/bash

# 脚本用于重命名 yolaz_figure 文件夹中的文件
# 图片格式: character_x_img_y.webp
# 视频格式: character_x_video_y.mp4
# 视频封面: character_x_video_y_cover.webp

BASE_DIR="/Users/gjm4senfor/Desktop/Yolaz/assets/yolaz_figure"

cd "$BASE_DIR" || exit 1

# 遍历每个文件夹 (1-9)
for folder_num in {1..9}; do
    folder_path="$folder_num"
    
    if [ ! -d "$folder_path" ]; then
        echo "Folder $folder_path does not exist, skipping..."
        continue
    fi
    
    echo "Processing folder: $folder_path"
    
    # 处理图片文件
    img_count=1
    # 按文件名排序处理图片
    for img_file in "$folder_path"/*.webp "$folder_path"/*.png "$folder_path"/*.jpg "$folder_path"/*.jpeg; do
        if [ -f "$img_file" ] && [[ ! "$img_file" =~ "video" ]] && [[ ! "$img_file" =~ "cover" ]]; then
            # 获取文件扩展名
            ext="${img_file##*.}"
            ext_lower=$(echo "$ext" | tr '[:upper:]' '[:lower:]')
            
            new_name="character_${folder_num}_img_${img_count}.webp"
            
            if [ "$ext_lower" != "webp" ]; then
                echo "  Converting $img_file to webp..."
                # 使用 sips (macOS 内置工具) 转换为 webp，如果失败则使用 ffmpeg
                if command -v sips &> /dev/null; then
                    # sips 不支持直接转 webp，使用 ffmpeg
                    ffmpeg -i "$img_file" -vf "scale=iw:ih" -c:v libwebp -lossless 0 -compression_level 6 "$folder_path/$new_name" -y 2>/dev/null
                else
                    ffmpeg -i "$img_file" -vf "scale=iw:ih" -c:v libwebp -lossless 0 -compression_level 6 "$folder_path/$new_name" -y 2>/dev/null
                fi
                # 删除原文件
                rm -f "$img_file"
            else
                echo "  Renaming $img_file to $new_name"
                mv "$img_file" "$folder_path/$new_name"
            fi
            
            img_count=$((img_count + 1))
        fi
    done
    
    # 处理视频文件
    video_count=1
    for video_file in "$folder_path"/*.mp4 "$folder_path"/*.mov "$folder_path"/*.avi; do
        if [ -f "$video_file" ]; then
            new_video_name="character_${folder_num}_video_${video_count}.mp4"
            cover_name="character_${folder_num}_video_${video_count}_cover.webp"
            
            echo "  Processing video: $video_file"
            
            # 如果是 mp4 以外的格式，先转换
            ext="${video_file##*.}"
            if [ "$ext" != "mp4" ]; then
                echo "    Converting video to mp4..."
                ffmpeg -i "$video_file" -c:v libx264 -c:a aac "$folder_path/$new_video_name" -y 2>/dev/null
                rm -f "$video_file"
                video_file="$folder_path/$new_video_name"
            else
                echo "    Renaming video to $new_video_name"
                mv "$video_file" "$folder_path/$new_video_name"
            fi
            
            # 提取封面图（第1秒的帧）
            echo "    Extracting cover image..."
            ffmpeg -i "$folder_path/$new_video_name" -ss 00:00:01 -vframes 1 -vf "scale=iw:ih" -c:v libwebp -lossless 0 -compression_level 6 "$folder_path/$cover_name" -y 2>/dev/null
            
            video_count=$((video_count + 1))
        fi
    done
    
    echo "  Completed folder $folder_path"
    echo ""
done

echo "All files processed!"

