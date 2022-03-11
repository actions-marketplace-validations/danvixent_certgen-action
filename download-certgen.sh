OS=$(echo $1 | tr '[:upper:]' '[:lower:]')
version=$2

if [[ "$OS" == *"linux"* ]]; then
  echo "downloading linux version of ngrok"
  wget --output-document=certgen.tar.gz "https://github.com/danvixent/certgen/releases/download/v${version}/certgen_${version}_linux_amd64.tar.gz"
elif [[ "$OS" == *"mac"* ]]; then
  echo "downloading mac version of ngrok"
  wget --output-document=certgen.tar.gz "https://github.com/danvixent/certgen/releases/download/v${version}/certgen_${version}_darwin_amd64.tar.gz"
elif [[ "$OS" == *"darwin"* ]]; then
  echo "downloading mac version of ngrok"
  wget --output-document=certgen.tar.gz "https://github.com/danvixent/certgen/releases/download/v${version}/certgen_${version}_darwin_amd64.tar.gz"
else
    exit
fi

exit 0