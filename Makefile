BUILD_DIR := ./build
SOURCES := ./src
EXEC := clown-car

DEPS := $(foreach dir, $(SOURCES), $(wildcard $(dir)/*))

README.md: madlib.json
	pilcrow -i README.md --repo brekk/clown-car --auto

$(BUILD_DIR)/$(EXEC): $(DEPS)
	mkdir -p $(dir $@)
	echo "compiling! - clown ass dad"
	madlib compile -i src/Main.mad -t llvm -o $@
	echo "built! - clown ass dad"

version.lock:
	madlib install

.PHONY: clean
clean:
	rm -r $(BUILD_DIR)
