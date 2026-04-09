class Clc < Formula
   desc "Use Claude Code across Git worktrees without leaving traces"
   homepage "https://github.com/no-simpler/clc"
   url "https://github.com/no-simpler/clc/archive/refs/tags/v1.4.0.tar.gz"
   sha256 "787ed91f75c07d08f818e7992a123a5d47e75436d7a079ed53dfc9c628040da2"
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
