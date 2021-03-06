#!/usr/bin/sh

LLVM_PROFILE_FILE="one.profraw" "./cgrep-cov" -A 1 -B 1 --func --var --regex n[aA]m ./cgrep.cpp
LLVM_PROFILE_FILE="one.profraw" "./cgrep-cov" -A 1 -B 1 --func --var --awk --regex n[aA]m ./cgrep.cpp
LLVM_PROFILE_FILE="two.profraw" "./cgrep-cov" -A 1 -B 1 --func --declrefexpr --regex n[aA]m --nocolor ./cgrep.cpp
LLVM_PROFILE_FILE="three.profraw" "./cgrep-cov" -A 1 -B 1 --func --declrefexpr --memfunc --call --cxxcall --var  --regex run ./cgrep.cpp
LLVM_PROFILE_FILE="four.profraw" "./cgrep-cov" -A 1 -B 1 --macro --header --regex n[aA]m ./cgrep.cpp
LLVM_PROFILE_FILE="five.profraw" "./cgrep-cov" -A 1 -B 1 --class --regex and ./cgrep.cpp
LLVM_PROFILE_FILE="six.profraw" "./cgrep-cov" -A 1 -B 1 --struct --union --regex n[aA]m ./cgrep.cpp
LLVM_PROFILE_FILE="seven.profraw" "./cgrep-cov" -A 1 -B 1 --nameddecl --regex n[aA]m ./cgrep.cpp
LLVM_PROFILE_FILE="eight.profraw" "./cgrep-cov" -A 1 -B 1 --cxxcall --call --regex add ./cgrep.cpp
LLVM_PROFILE_FILE="nine.profraw" "./cgrep-cov" -A 1 -B 1 --cfield --regex ite ./cgrep.cpp
LLVM_PROFILE_FILE="ten.profraw" "./cgrep-cov"  --union --regex [Uu]nion ./test/main.cpp
LLVM_PROFILE_FILE="eleven.profraw" "./cgrep-cov" --struct --regex [sS]truct ./test/main.cpp
LLVM_PROFILE_FILE="twelve.profraw" "./cgrep-cov" --dir ./ --regex run --func ./cgrep.cpp
