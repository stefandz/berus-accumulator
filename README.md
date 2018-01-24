# berus-accumulator
VHDL project to build a 2x12-bit signed input, 64-bit accumulator with SPI output, reset and enable

Target board / device is the [iCE40HX8K-B-EVN ](http://www.latticesemi.com/Products/DevelopmentBoardsAndKits/iCE40HX8KBreakoutBoard.aspx), although eventually I would like to use something like the [iCE40HX4K-TQ144](https://www.mouser.co.uk/ProductDetail/Lattice/iCE40HX4K-TQ144/?qs=F9A14TELRMvGNTZXkNDuOw==) or even smaller. Am avoiding BGA devices unless someone can really convince me otherwise - first boards will be home ovened - have successfully done QFNs on the same oven before, but with variable yield and no idea how to rework a BGA.

## Todo
- [ ] read [Free Range VHDL](http://www.gstitt.ece.ufl.edu/courses/eel4712/labs/free_range_vhdl.pdf)
- [X] define top-level entity (see [top_level.vhdl](https://github.com/stefandz/berus-accumulator/blob/master/vhdl/top_level.vhdl))
- [ ] define top-level and sub-part behaviours
- [ ] define test signals
- [ ] synthesise and test
- [ ] map outpin pins
- [ ] lay out prototype PCB
- [ ] test prototype PCB
- [ ] profit!

## Useful references

- [https://github.com/nesl/ice40_examples](https://github.com/nesl/ice40_examples)
- [https://github.com/mcmayer/iCE40](https://github.com/mcmayer/iCE40)
- [https://warmcat.com/2016/08/15/getting-started-with-ice40-ultra-fpgas.html](https://warmcat.com/2016/08/15/getting-started-with-ice40-ultra-fpgas.html)
- [https://martin-jones.com/2015/08/26/first-steps-with-a-lattice-ice40-fpga/](https://martin-jones.com/2015/08/26/first-steps-with-a-lattice-ice40-fpga/)
