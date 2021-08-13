# TTS-Mandarin

# What

提供中文文字转语音(Text To Speech / TTS) 的库/软件 这是拥有最基本 [mandarin-tts](https://github.com/ranchlai/mandarin-tts) 功能的 衍生 包括

### Github Action
```
jobs:
  job:
    steps:
      - uses: privapps/TTS-Mandarin@main
        with:
          text: '需要转换的文字'
          voice: '13'
          content: '输出mp3的路径'
```
see [action.yml](action.yml)
### Docker Image Tool
```bash
echo "需要转换的文字" > __input__.txt
echo 17 > __voice__.txt
docker run --rm -v $(pwd):/workspace ghcr.io/privapps/tts-mandarin:docker

# output wav is at __out__.wav
```


# Why

因为TTSKIT作者删除了项目，之前 [ttskit](https://github.com/privapps/docker-ttskit) 完全不能用，我找到这个替代版本，基于 [mandarin-tts](https://github.com/ranchlai/mandarin-tts) 。这里把所有打包好了，可以拿起来马上用

注： 只支持中文， 阿拉伯数字， 英文统统不行

`吃葡萄不吐葡萄皮儿，不吃葡萄倒吐葡萄皮儿。床前明月光，一阵美人香。不知春梦里，枉自硬帮帮。`

| Voice ID | URL | |
| --- | --- |--- |
| 0 | https://github.com/privapps/TTS-Manderin/raw/sample/0.mp3 | |
| 1 | https://github.com/privapps/TTS-Manderin/raw/sample/1.mp3 | |
| 2 | https://github.com/privapps/TTS-Manderin/raw/sample/2.mp3 | |
| 3 | https://github.com/privapps/TTS-Manderin/raw/sample/3.mp3 | |
| 4 | https://github.com/privapps/TTS-Manderin/raw/sample/4.mp3 | |
| 5 | https://github.com/privapps/TTS-Manderin/raw/sample/5.mp3 | |
| 6 | https://github.com/privapps/TTS-Manderin/raw/sample/6.mp3 | |
| 7 | https://github.com/privapps/TTS-Manderin/raw/sample/7.mp3 | |
| 8 | https://github.com/privapps/TTS-Manderin/raw/sample/8.mp3 | |
| 9 | https://github.com/privapps/TTS-Manderin/raw/sample/9.mp3 | |
| 10 | https://github.com/privapps/TTS-Manderin/raw/sample/10.mp3 | M |
| 11 | https://github.com/privapps/TTS-Manderin/raw/sample/11.mp3 | |
| 12 | https://github.com/privapps/TTS-Manderin/raw/sample/12.mp3 | |
| 13 | https://github.com/privapps/TTS-Manderin/raw/sample/13.mp3 | |
| 14 | https://github.com/privapps/TTS-Manderin/raw/sample/14.mp3 | |
| 15 | https://github.com/privapps/TTS-Manderin/raw/sample/15.mp3 | M |
| 16 | https://github.com/privapps/TTS-Manderin/raw/sample/16.mp3 | |
| 17 | https://github.com/privapps/TTS-Manderin/raw/sample/17.mp3 | |
| 18 | https://github.com/privapps/TTS-Manderin/raw/sample/18.mp3 | |
| 19 | https://github.com/privapps/TTS-Manderin/raw/sample/19.mp3 | |
| 20 | https://github.com/privapps/TTS-Manderin/raw/sample/20.mp3 | |
| 21 | https://github.com/privapps/TTS-Manderin/raw/sample/21.mp3 | M |
| 22 | https://github.com/privapps/TTS-Manderin/raw/sample/22.mp3 | |
| 23 | https://github.com/privapps/TTS-Manderin/raw/sample/23.mp3 | M |
| 24 | https://github.com/privapps/TTS-Manderin/raw/sample/24.mp3 | |
| 25 | https://github.com/privapps/TTS-Manderin/raw/sample/25.mp3 | M |
| 26 | https://github.com/privapps/TTS-Manderin/raw/sample/26.mp3 | |
| 27 | https://github.com/privapps/TTS-Manderin/raw/sample/27.mp3 | |
| 28 | https://github.com/privapps/TTS-Manderin/raw/sample/28.mp3 | |
| 29 | https://github.com/privapps/TTS-Manderin/raw/sample/29.mp3 | |
| 30 | https://github.com/privapps/TTS-Manderin/raw/sample/30.mp3 | |
| 31 | https://github.com/privapps/TTS-Manderin/raw/sample/31.mp3 | |
| 32 | https://github.com/privapps/TTS-Manderin/raw/sample/32.mp3 | M |
| 33 | https://github.com/privapps/TTS-Manderin/raw/sample/33.mp3 | |
| 34 | https://github.com/privapps/TTS-Manderin/raw/sample/34.mp3 | |
| 35 | https://github.com/privapps/TTS-Manderin/raw/sample/35.mp3 | |
| 36 | https://github.com/privapps/TTS-Manderin/raw/sample/36.mp3 | |
| 37 | https://github.com/privapps/TTS-Manderin/raw/sample/37.mp3 | |
| 38 | https://github.com/privapps/TTS-Manderin/raw/sample/38.mp3 | |
| 39 | https://github.com/privapps/TTS-Manderin/raw/sample/39.mp3 | |
| 40 | https://github.com/privapps/TTS-Manderin/raw/sample/40.mp3 | M |
| 41 | https://github.com/privapps/TTS-Manderin/raw/sample/41.mp3 | |
| 42 | https://github.com/privapps/TTS-Manderin/raw/sample/42.mp3 | |
| 43 | https://github.com/privapps/TTS-Manderin/raw/sample/43.mp3 | |
| 44 | https://github.com/privapps/TTS-Manderin/raw/sample/44.mp3 | |
| 45 | https://github.com/privapps/TTS-Manderin/raw/sample/45.mp3 | |
| 46 | https://github.com/privapps/TTS-Manderin/raw/sample/46.mp3 | M |
| 47 | https://github.com/privapps/TTS-Manderin/raw/sample/47.mp3 | |
| 48 | https://github.com/privapps/TTS-Manderin/raw/sample/48.mp3 | M |
| 49 | https://github.com/privapps/TTS-Manderin/raw/sample/49.mp3 | |
| 50 | https://github.com/privapps/TTS-Manderin/raw/sample/50.mp3 | |
