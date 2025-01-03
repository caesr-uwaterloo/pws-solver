BENCHMARK=data/rodinia/backprop
KERNEL=000

CSV_DATA_OUTPUT=solver-data.csv
TIMEOUT=60
NUM_SIMDS=3
ALGORITHMS=No Splitting,DWS,Random,Naive,DP,Brute Force,ILP

PYTHON=python3.12

CSV_SYNTHETIC_INPUTS=$(wildcard data/synthetic/*.csv)
CSV_RODINIA_INPUTS=$(wildcard data/rodinia/*.csv)
CSV_INPUTS= $(CSV_RODINIA_INPUTS) $(CSV_SYNTHETIC_INPUTS)
# CSV_INPUTS= $(CSV_RODINIA_INPUTS)
# CSV_INPUTS= $(CSV_SYNTHETIC_INPUTS)
RODINIA_ASM=$(wildcard data/rodinia/*[!anno].s)
SYNTHETIC_ASM=$(wildcard data/synthetic/*[!anno].s)
ALL_ASM=$(RODINIA_ASM) $(SYNTHETIC_ASM)
# ALL_ASM=$(SYNTHETIC_ASM)
# ALL_ASM=$(RODINIA_ASM)
BENCHMARKS=$(ALL_ASM:.s=)

extract:
	@for asm in $(BENCHMARKS); do \
		echo "$(PYTHON) extract.py -i $$asm.s -l $$asm.log -u -r"; \
		$(PYTHON) extract.py -i $$asm.s -l $$asm.log -u -r; \
	done

solve:
	rm -f $(CSV_DATA_OUTPUT)
	$(PYTHON) solver.py -c $(CSV_DATA_OUTPUT) -a "$(ALGORITHMS)" -o
	@for input in $(CSV_INPUTS); do \
		echo "$(PYTHON) solver.py \
			-i $$input -c $(CSV_DATA_OUTPUT) -t $(TIMEOUT) -s $(NUM_SIMDS)"; \
		$(PYTHON) solver.py -i $$input -c $(CSV_DATA_OUTPUT) -t $(TIMEOUT) \
			-s $(NUM_SIMDS) -a "$(ALGORITHMS)"; \
	done

mypy:
	mypy --ignore-missing-imports src/*.py extract.py solver.py

comp:
	rm -f pc.ext.txt
	cut -d" " -f"1-" $(BENCHMARK)-$(KERNEL)-anno.s | sort -u > pc.ext.txt
	rm -f pc.sim.txt
	grep "Kernel $(KERNEL) inst" $(BENCHMARK).log | cut -d" " -f"6-" | \
		sort -u > pc.sim.txt

clean:
	rm -rf data/*/*anno.s data/*/*.csv data/*/*.png pc.ext.txt pc.sim.txt \
		gurobi.log $(CSV_DATA_OUTPUT)