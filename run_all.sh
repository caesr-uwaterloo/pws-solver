for i in {2..6}
do
    for j in {0..9}
    do
        python main.py -i data/depth${i}test0${j}.graph
    done
done