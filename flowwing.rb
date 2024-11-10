class Flowwing < Formula
  desc "Sculpting logic with the elegance of flow."
  homepage "https://github.com/kushagra1212/Flow-Wing"
  url "https://github.com/kushagra1212/Flow-Wing/releases/download/v0.0.1-alpha.1/FlowWing-0.0.1-mac-arm-64.tar.gz"
  sha256 "b794c32a45c85ef3912cdc4ee480d849bb46565e076550f4a39038171f65fe93"
  license "FlowWing Contribution License v1.0"

  def install
    
    bin.install "bin/FlowWing"
    bin.install "bin/FlowWing-jit"
    bin.install "bin/FlowWing-repl"

    lib.install "lib/libbuilt_in_module.a"
    lib.install "lib/libflowwing_string.a"
    lib.install "lib/libflowwing_vector.so"
    lib.install "lib/libflowwing_map.so"
    lib.install "lib/libgc.a"
    lib.install "lib/libbuilt_in_module.bc"

    lib.install "lib/modules"
  end

  test do
    system "#{bin}/FlowWing", "--version"
  end
end
