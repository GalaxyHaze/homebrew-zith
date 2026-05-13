class Zith < Formula
  desc "Zith is a low level & high level language designed to be powerfull & pleasant to write."
  homepage "https://galaxyhaze.github.io/Zith"
  # Ensure this points to a specific release archive, not the raw branch folder
  url "https://github.com/GalaxyHaze/Zith"
  sha256 "dd93d3822ce935b9b1f06b70ea1f7984804fd36d1423432b2877cfa0bed70a9e"
  license "MIT"

  depends_on "cmake" => :build

    def install
    # Change "." to the name of your folder (e.g., "script")
    # This tells CMake where to find your primary CMakeLists.txt file
        system "cmake", "-S", "scripts", "-B", "build", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end


  test do
    system "#{bin}/zith", "--version"
  end
end
