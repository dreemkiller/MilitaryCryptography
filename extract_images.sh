START=1
END=192
for i in $(seq $START $END); do
    echo $i;
    tesseract "MilitaryCryptography_$i.jpg" "MilitaryCryptography_$i" -psm 1 -l eng
done
