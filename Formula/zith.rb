class Zith < Formula
  desc "Zith is a low level & high level language designed to be powerfull & pleasant to write."
  homepage "https://galaxyhaze.github.io/Zith"
  url "https://github.com/GalaxyHaze/Zith/archive/e92ee52b833995686c67775b40c8908618476b95.tar.gz"
  version "0.1.0"
  sha256 "3d316c51dccd4e4874a7365ac34ee94c1920c19a8e4c13ac506f9010b16e3f60"
  license "MIT"

  depends_on "cmake" => :build

  def install
    system "cmake", "-S", "scripts", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

  test do
    system "#{bin}/zith", "--version"
  end
end
