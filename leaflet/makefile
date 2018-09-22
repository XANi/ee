# Test compilation makefile
#
# Copyright (c) 2016 Ryan Kurte
# This file is covered under the MIT license available at: https://opensource.org/licenses/MIT

.PHONY: setup efm32hg

test: setup efm32hg

setup:
	mkdir -p builds


efm32hg:
	cd builds; rm -rf $@; mkdir $@; cd $@; cmake -DDEVICE=EFM32HG322F64 ../..; make

clean:
	rm -rf builds
