class Flowwing < Formula
  desc "Sculpting logic with the elegance of flow."
  homepage "https://github.com/kushagra1212/Flow-Wing"
  url "https://github.com/kushagra1212/Flow-Wing/releases/download/v0.0.1-alpha.1/FlowWing-0.0.1-mac-arm-64.tar.gz"
  sha256 "0f03f48f6fb205550c37f4297ba0125d74f51f9567c8013036d5e8ce5c7245c4"
  license "FlowWing Contribution License v1.0"

  def install
    
    bin.install "bin/FlowWing"
    bin.install "bin/FlowWing-jit"
    bin.install "bin/FlowWing-repl"
    bin.install "bin/clang++"

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
