BUILD_DIR := ./build
SOURCES := ./src
EXEC := clowncar

DEPS := $(foreach dir, $(SOURCES), $(wildcard $(dir)/*))


$(BUILD_DIR)/$(EXEC): $(DEPS)
	mkdir -p $(dir $@)
	echo "compiling! - clown ass dad"
	madlib compile -i src/Main.mad -t llvm -o $@
	echo "built! - clown ass dad"

README.md: madlib.json
	pilcrow -i README.md --repo brekk/clown-car --auto


src/Version.mad: madlib.json
	cat madlib.json | jq ".version" | sed '1s@^@export VERSION = @'

version.lock:
	madlib install
	make -C madlib_modules/PartyBus/lib

.PHONY: clean
clean:
	rm -r $(BUILD_DIR)
