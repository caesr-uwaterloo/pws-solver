for i in {2..6}
do
    for j in {0..4}
    do
        python src/main.py -i data/depth${i}test0${j}.graph >> output.txt
    done
done