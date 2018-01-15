.PHONY: build
.PHONY: test
.PHONY: coverage
.PHONY: clean

build: build/build.ninja
	ninja -C build

build/build.ninja: CMakeLists.txt
	mkdir -p build && cd build && cmake -G Ninja -DCMAKE_EXPORT_COMPILE_COMMANDS=1 ..

test: build
	build/hello_test

coverage:
	lcov --capture --directory . --output-file coverage.info && genhtml coverage.info --output-directory out && google-chrome out/index.html

clean:
	git clean -Xf && rm -rf out build
