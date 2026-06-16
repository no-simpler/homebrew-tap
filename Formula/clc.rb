class Clc < Formula
   desc "Use Claude Code across Git worktrees without leaving traces"
   homepage "https://github.com/no-simpler/clc"
   url "https://github.com/no-simpler/clc/archive/refs/tags/v2.1.1.tar.gz"
   sha256 "64a27369d03292a2ee53b7e04f7836fc10138cd9bf6bc3a9b9cd8e86bfc67ff9"
   license "MIT"
   head "https://github.com/no-simpler/clc.git", branch: "main"

   depends_on "git"

   def install
     bin.install "clc.sh" => "clc"
   end

   test do
     assert_match version.to_s, shell_output("#{bin}/clc --version")
   end
 end
