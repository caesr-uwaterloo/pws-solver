BENCHMARK=backprop
KERNEL=000

run:
	python extract.py -i data/rodinia/b+tree.s -l data/rodinia/b+tree.log -u -r
	python extract.py -i data/rodinia/backprop.s -l data/rodinia/backprop.log -u -r
	python extract.py -i data/rodinia/bfs.s -l data/rodinia/bfs.log -u -r
	python extract.py -i data/rodinia/bitonic_sort.s -l data/rodinia/bitonic_sort.log -u -r
	python extract.py -i data/rodinia/cfd.s -l data/rodinia/cfd.log -u -r
	python extract.py -i data/rodinia/convolution.s -l data/rodinia/convolution.log -u -r
	python extract.py -i data/rodinia/dwt2d.s -l data/rodinia/dwt2d.log -u -r
	python extract.py -i data/rodinia/floyd_warshall.s -l data/rodinia/floyd_warshall.log -u -r
	python extract.py -i data/rodinia/gaussian.s -l data/rodinia/gaussian.log -u -r
	python extract.py -i data/rodinia/heartwall.s -l data/rodinia/heartwall.log -u -r
	python extract.py -i data/rodinia/hotspot.s -l data/rodinia/hotspot.log -u -r
	python extract.py -i data/rodinia/hybridsort.s -l data/rodinia/hybridsort.log -u -r
	python extract.py -i data/rodinia/kmeans.s -l data/rodinia/kmeans.log -u -r
	python extract.py -i data/rodinia/lavaMD.s -l data/rodinia/lavaMD.log -u -r
	python extract.py -i data/rodinia/loop.s -l data/rodinia/loop.log -u -r
	python extract.py -i data/rodinia/lud.s -l data/rodinia/lud.log -u -r
	python extract.py -i data/rodinia/myocyte.s -l data/rodinia/myocyte.log -u -r
	python extract.py -i data/rodinia/nn.s -l data/rodinia/nn.log -u -r
	python extract.py -i data/rodinia/nw.s -l data/rodinia/nw.log -u -r
	python extract.py -i data/rodinia/particlefilter_float.s -l data/rodinia/particlefilter_float.log -u -r
	python extract.py -i data/rodinia/particlefilter_naive.s -l data/rodinia/particlefilter_naive.log -u -r
	python extract.py -i data/rodinia/pathfinder.s -l data/rodinia/pathfinder.log -u -r
	python extract.py -i data/rodinia/prefix_sum.s -l data/rodinia/prefix_sum.s -u -r
	python extract.py -i data/rodinia/srad_v1.s -l data/rodinia/srad_v1.s -u -r
	python extract.py -i data/rodinia/srad_v2.s -l data/rodinia/srad_v2.s -u -r
	python extract.py -i data/rodinia/streamcluster.s -l data/rodinia/streamcluster.log -u -r

mypy:
	mypy src/graph.py src/block.py src/pattern.py extract.py

comp:
	rm -f pc.ext.txt && cat data/rodinia/$(BENCHMARK)-$(KERNEL)-anno.s | cut -d" " -f"1-" | sort -u > pc.ext.txt
	rm -f pc.sim.txt && grep "Kernel $(KERNEL) inst" data/rodinia/$(BENCHMARK).log | cut -d" " -f"6-" | sort -u > pc.sim.txt

clean:
	rm -rf data/rodinia/*anno.s data/rodinia/*.csv data/rodinia/*.png pc.ext.txt pc.sim.txt