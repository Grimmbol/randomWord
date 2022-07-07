SOURCES = randomWord.hs
EXECUTABLE_NAME = randomWord
COMPILER_FLAGS = -no-keep-hi-files -no-keep-o-files

run: build
	./$(EXECUTABLE_NAME)

build: $(SOURCES)
	ghc $(SOURCES) -o $(EXECUTABLE_NAME) $(COMPILER_FLAGS)

clean:
	rm -rf *.hi *.o

clear: clean
	rm -rf $(EXECUTABLE_NAME)
