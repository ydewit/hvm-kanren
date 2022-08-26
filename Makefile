HVM := ../HVM/target/debug/hvm

FILE := ./src/microKanren.hvm ./Main.hvm

OUT := ./build/out.hvm

run: $(OUT)
	$(HVM) run $(OUT)

debug: $(OUT)
	$(HVM) debug $(OUT)

$(OUT): $(FILE)
	@echo $?
	@mkdir -p ./build
	@cat $(FILE) > $(OUT)

clean:
	rm -rf ./build

info:
	$(HVM)

scheme:
	scheme ./src/microKanren.scm