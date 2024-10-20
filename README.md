# Juice

> [!WARNING]
> Juice is very early in development and is not ready
> for production use. Please keep your expectations
> in check considering the project's current state.

Juice is a new programming language for the web. After
years of working with JavaScript and TypeScript, the need
for more advanced features like macros, an actual build
system, and various other wants has only grown. Juice is
the answer to the current problems of program maintainability,
onboarding, rapid development, flexibility, and delight.

## Getting Started

To work with Juice today you will need to first clone
the [Bootstrapping Compiler](https://github.com/juicelang/bootstrap).
This is a compiler written in TypeScript which is capable of building
the Juice code in this repository.

```shell
mkdir -p ./juicelang/

git clone git@github.com:juicelang/bootstrap ./juicelang/bootstrap
```

Next you can clone this repository next to the bootstrapping compiler.

```shell
git clone git@github.com:juicelang/compiler ./juicelang/compiler
```

Finally, you can enter the `./juicelang/compiler` directory and
enter a Nix shell to access a convenience script for running the
bootstrapping compiler.

```shell
cd ./juicelang/compiler

juice-bootstrap ./src/main.juice

# Alternatively you can run the bootstrapping compiler manually
# using Bun.
bun ../bootstrap/src/index.ts ./src/main.juice
```

The resulting build artifacts can be found in `./dist`. If you are
building `main.juice` using the Bootstrapping Compiler then you can
execute the compiled program using the following command.

```shell
bun ./dist/dev.juice.main.js
```
