# TTS-Mandarin

## What
这是拥有最基本 [mandarin-tts](https://github.com/ranchlai/mandarin-tts) 功能的 docker image

## Why
mandarin-tts 语音生成的效果不错，但是有很多第三方库，还有一些训练过的数据。如果是一台新机器，需要很长时间下载，设置。这里把所有打包好了，可以拿起来马上用

## Usage
```
echo "需要转换的文字" > __input__.txt
echo 17 > __voice__.txt
docker run --rm -v $(pwd):/workspace ghcr.io/privapps/tts-mandarin:docker-arm64

# output wav is at __out__.wav
```
其中 `__voice__.txt` 是可选项，里面是语音的ID，具体一共有很多不同的语音

具体的小样[参看首页](https://github.com/privapps/TTS-Mandarin/tree/sample)
