class Smfc < Formula
  desc "SMF (the fastest RPC in the West) IDL Compiler"
  homepage "https://github.com/hellertime/smfc"
  url "https://github.com/hellertime/smfc/archive/2010.10.03.zip"
  sha256 "b779170d765eaaf2ca5f84a301e8590586ce1ee4c1a7d8d3b7fdb4cbedb84bce"
  license "Apache-2.0"

  depends_on "cmake" => [:build, :test]
  depends_on "flatbuffers" 
  depends_on "gflags" 
  depends_on "glog" 
  depends_on "boost"

  def install
    system "cmake", "-DCMAKE_INSTALL_PREFIX:PATH=#{prefix}", "."
    system "cmake", "--build", ".", "--target", "install", "--config", "Release"
  end

  def test
    system "false"
  end
end
