## Build
```
docker build -t jiesu/ffprobe:$(dpkg --print-architecture) .
```

## Usage
```
cd <dir where the video file is>
docker run --rm -v $(pwd):/files jiesu/ffprobe:$(dpkg --print-architecture) video.file
```

