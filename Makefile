BUILD_DIR := ./build
SOURCES := ./src
EXEC := clowncar

DEPS := $(foreach dir, $(SOURCES), $(wildcard $(dir)/*))

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
