OS=$(echo $1 | tr '[:upper:]' '[:lower:]')
version=$2
outdir=$3

cd $outdir

if [[ "$OS" == *"linux"* ]] || [[ "$OS" == *"ubuntu"* ]]; then
  echo "downloading linux version of certgen"
  wget --output-document=certgen.tar.gz "https://github.com/danvixent/certgen/releases/download/v${version}/certgen_${version}_linux_amd64.tar.gz"
elif [[ "$OS" == *"mac"* ]] || [[ "$OS" == *"darwin"* ]]; then
  echo "downloading mac version of certgen"
  wget --output-document=certgen.tar.gz "https://github.com/danvixent/certgen/releases/download/v${version}/certgen_${version}_darwin_amd64.tar.gz"
else
    exit
fi

tar -xvzf ./certgen.tar.gz