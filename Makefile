BENCHMARK=backprop
KERNEL=000

CSV_DATA_OUTPUT=solver-data.csv
TIMEOUT=60

CSV_INPUTS=$(wildcard data/synthetic/*.csv)
RODINIA_ASM=$(wildcard data/rodinia/*[!anno].s)
SYNTHETIC_ASM=$(wildcard data/synthetic/*[!anno].s)
ALL_ASM=$(RODINIA_ASM) $(SYNTHETIC_ASM)
BENCHMARKS=$(ALL_ASM:.s=)

extract:
	@for asm in $(BENCHMARKS); do \
		echo "python3.12 extract.py -i $$asm.s -l $$asm.log -u -r"; \
		python3.12 extract.py -i $$asm.s -l $$asm.log -u -r; \
	done

solve:
	rm $(CSV_DATA_OUTPUT)
	python3.12 solver.py -c $(CSV_DATA_OUTPUT) -o
	@for input in $(CSV_INPUTS); do \
		echo "python3.12 solver.py -i $$input -c $(CSV_DATA_OUTPUT) -t $(TIMEOUT)"; \
		python3.12 solver.py -i $$input -c $(CSV_DATA_OUTPUT) -t $(TIMEOUT); \
	done

mypy:
	mypy --ignore-missing-imports src/*.py extract.py solver.py

comp:
	rm -f pc.ext.txt && cat data/rodinia/$(BENCHMARK)-$(KERNEL)-anno.s | cut -d" " -f"1-" | sort -u > pc.ext.txt
	rm -f pc.sim.txt && grep "Kernel $(KERNEL) inst" data/rodinia/$(BENCHMARK).log | cut -d" " -f"6-" | sort -u > pc.sim.txt

clean:
	rm -rf data/*/*anno.s data/*/*.csv data/*/*.png pc.ext.txt pc.sim.txt \
		gurobi.log $(CSV_DATA_OUTPUT)