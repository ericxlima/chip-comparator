#  Chip Comparator

## A 4-bit magnitude cascade comparator chip

#
- To Use:
```sh
#  Icarus Verilog Compiler Installation (Linux)
sudo apt-get update
sudo apt-get install iverilog

#  GTKWave Viewer Installation (Linux)
sudo apt update
sudo apt install gtkwave

#  Clonning this repository
git clone https://github.com/ericxlima/chip-comparator.git
cd chip-comparator

#  Compile
iverilog -o dsys systemx_tb.v systemx.v
vvp dsys
```

> Use the GTKWave or some extension in your IDE to visualizer the waves in this file `systemx_tb.vcd`.


##  Authors 👥
| <a href="https://github.com/ericxlima"><img style="border-radius: 50%;" src="https://avatars.githubusercontent.com/u/58092119?v=4" width="120px;" alt="Eric"/></a> | <a href="https://github.com/OnLeonidas"><img style="border-radius: 50%;" src="https://avatars.githubusercontent.com/u/60946868?v=4" width="120px;" alt="Michel"/></a> |
| :----: | :----: |
| [Eric de Lima](https://github.com/ericxlima) | [Michel Leonidas](https://github.com/OnLeonidas) |
