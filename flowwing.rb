class Flowwing < Formula
  desc "Sculpting logic with the elegance of flow."
  homepage "https://github.com/kushagra1212/Flow-Wing"
  url "https://github.com/kushagra1212/Flow-Wing/releases/download/v0.0.1-alpha.1/FlowWing-0.0.1-mac-arm-64.tar.gz"
  sha256 "74c9ead04dc18f50e14cccdcc25ead9f668fe01abbd569b031baa54a1d9001ea"
  license "FlowWing Contribution License v1.0"

  def install
    
    bin.install "bin/FlowWing"
    bin.install "bin/FlowWing-jit"

    (lib/"FlowWing/lib").install "lib/libbuilt_in_module.a"
    (lib/"FlowWing/lib").install "lib/libflowwing_string.a"
    (lib/"FlowWing/lib").install "lib/libraylib.a"
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
