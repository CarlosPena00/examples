mkdir -p outputs/candy
mkdir -p outputs/mosaic
mkdir -p outputs/rain
mkdir -p outputs/udnie

stem_file="$(basename -- $1)"
echo $stem_file

python neural_style/neural_style.py eval --content-image $1 --model saved_models/candy.pth --output-image outputs/candy/$stem_file --cuda 0
python neural_style/neural_style.py eval --content-image $1 --model saved_models/mosaic.pth --output-image outputs/mosaic/$stem_file --cuda 0
python neural_style/neural_style.py eval --content-image $1 --model saved_models/rain_princess.pth --output-image outputs/rain/$stem_file --cuda 0
python neural_style/neural_style.py eval --content-image $1 --model saved_models/udnie.pth --output-image outputs/udnie/$stem_file --cuda 0
