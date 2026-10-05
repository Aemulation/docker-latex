# docker-latex

Docker image with a full TeX Live installation for compiling LaTeX documents.

## Build

```sh
docker build -t aemulation/latex .
```

## Usage

Run from the directory containing your `.tex` files:

```sh
docker run --rm -v "$PWD":/tmp/app -e MAIN_FILE=main.tex aemulation/latex
```

- `-v "$PWD":/tmp/app` mounts the current directory into the container; the PDF is written back to it.
- `-e MAIN_FILE=...` selects the file to compile (defaults to `main.tex`).

Add `--user "$(id -u):$(id -g)"` to have the output files owned by your user instead of root.
