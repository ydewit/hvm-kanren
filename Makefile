HVM := ../HVM/target/debug/hvm

FILE := ./src/microKanren.hvm

run:
	$(HVM) run $(FILE)

debug:
	$(HVM) debug $(FILE)

info:
	$(HVM)

scheme:
	scheme ./src/microKanren.scm