run:
	python extract.py -i data/rodinia/backprop.s -l data/rodinia/backprop.log -u -r
	python extract.py -i data/rodinia/bfs.s -l data/rodinia/bfs.log -u -r
	python extract.py -i data/rodinia/bitonic_sort.s -l data/rodinia/bitonic_sort.log -u -r
	python extract.py -i data/rodinia/cfd.s -l data/rodinia/cfd.log -u -r
	python extract.py -i data/rodinia/convolution.s -l data/rodinia/convolution.log -u -r
	python extract.py -i data/rodinia/floyd_warshall.s -l data/rodinia/floyd_warshall.log -u -r
	python extract.py -i data/rodinia/gaussian.s -l data/rodinia/gaussian.log -u -r
	python extract.py -i data/rodinia/heartwall.s -l data/rodinia/heartwall.log -u -r
	python extract.py -i data/rodinia/hybridsort.s -l data/rodinia/hybridsort.log -u -r
	python extract.py -i data/rodinia/kmeans.s -l data/rodinia/kmeans.log -u -r
	python extract.py -i data/rodinia/loop.s -l data/rodinia/loop.log -u -r
	python extract.py -i data/rodinia/nn.s -l data/rodinia/nn.log -u -r
	python extract.py -i data/rodinia/particlefilter_naive.s -l data/rodinia/particlefilter_naive.log -u -r
	python extract.py -i data/rodinia/prefix_sum.s -l data/rodinia/prefix_sum.s -u -r
	python extract.py -i data/rodinia/streamcluster.s -l data/rodinia/streamcluster.log -u -r

# all latencies 0:
#   - prefix_sum

clean:
	rm -rf data/rodinia/*anno.s data/rodinia/*.csv data/rodinia/*.png