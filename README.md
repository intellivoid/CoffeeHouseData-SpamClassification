# Spam Classification

This is the source code for the SpamHam model used in
CoffeeHouse Spam Detection module.

## Building The Model

Builiding the model requires CoffeeHouse-DLTC and
CoffeeHouse-NLPFR to be installed on the system, you can build
the model in the foreground or background by running one of
these commands

```sh
# Build the model in the foreground (Normal)
make build

# Build the model in the background (Requires screen)
make background_build
```


## Testing the model

You can run an interactive Commandline Interface test to predict
the output of the model's predictions by running the DLTC tester.

```sh
make test
```


## Cleaning the data

Once the data is generated, it's reccomended to clean the and
organize the new data that was generated.

```sh
make clean
```