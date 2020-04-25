set TAGLIB_VERSION=v1.12-beta-1

echo "Downloading TagLib source ..."
echo "Taglib version:" %TAGLIB_VERSION%
echo https://github.com/taglib/taglib/archive/%TAGLIB_VERSION%.zip

curl -L -o taglib.zip https://github.com/taglib/taglib/archive/%TAGLIB_VERSION%.zip
7z x taglib.zip
cd taglib*

mkdir build
cd build

echo "Downloading Zlib source ..."
echo "https://github.com/madler/zlib/archive/v1.2.11.zip"

curl -L -o zlib.zip https://github.com/madler/zlib/archive/v1.2.11.zip
7z x zlib.zip