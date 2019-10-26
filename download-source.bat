echo "Downloading TagLib source ..."
echo "https://github.com/taglib/taglib/archive/v1.11.1.zip"

curl -L -o taglib.zip -L https://github.com/taglib/taglib/archive/v1.11.1.zip
7z x taglib.zip
cd taglib*

mkdir build
cd build

echo "Downloading Zlib source ..."
echo "https://github.com/madler/zlib/archive/v1.2.11.zip"

curl -L -o zlib.zip https://github.com/madler/zlib/archive/v1.2.11.zip
7z x zlib.zip