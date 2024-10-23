class Flowwing < Formula
  desc "Sculpting logic with the elegance of flow."
  homepage "https://github.com/kushagra1212/Flow-Wing"
  url "https://github.com/kushagra1212/Flow-Wing/releases/download/v0.0.1-alpha.1/FlowWing-0.0.1-mac-arm-64.tar.gz"
  sha256 "bd475488b67c89530651acae8f4667011e0b96ccbb98aa603b4cf65b28035ca6"
  license "FlowWing Contribution License v1.0"

  def install
    
    bin.install "bin/FlowWing"
    bin.install "bin/FlowWing-jit"
    bin.install "bin/FlowWing-repl"

    (lib/"FlowWing/lib").install "lib/libbuilt_in_module.a"
    (lib/"FlowWing/lib").install "lib/libflowwing_string.a"
    (lib/"FlowWing/lib").install "lib/libflowwing_vector.so"
    (lib/"FlowWing/lib").install "lib/libflowwing_map.so"
    (lib/"FlowWing/lib").install "lib/libgc.a"
    (lib/"FlowWing/lib").install "lib/libbuilt_in_module.bc"

    (lib/"FlowWing/lib").install "lib/modules"
  end

  test do
    system "#{bin}/FlowWing", "--version"
  end
end
