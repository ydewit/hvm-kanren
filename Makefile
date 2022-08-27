HVM := ../HVM/target/debug/hvm

SRC_FILES := ./src/microKanren.hvm ./Main.hvm
SRC_OUT := ./build/out.hvm

TST_FILES := ./src/microKanren.hvm ./tests/Tests.hvm
TST_OUT := ./build/tests.hvm

run: $(SRC_OUT)
	$(HVM) run $(SRC_OUT)

test: $(TST_OUT)
	$(HVM) run $(TST_OUT)

debug: $(SRC_OUT)
	$(HVM) debug $(SRC_OUT)

$(SRC_OUT): $(SRC_FILES)
	@echo $?
	@mkdir -p ./build
	@cat $(SRC_FILES) > $(SRC_OUT)

$(TST_OUT): $(TST_FILES)
	@echo $?
	@mkdir -p ./build
	@cat $(TST_FILES) > $(TST_OUT)

clean:
	rm -rf ./build

info:
	$(HVM)

scheme:
	scheme ./src/microKanren.scm