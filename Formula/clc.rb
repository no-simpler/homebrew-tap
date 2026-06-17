class Clc < Formula
   desc "Use Claude Code across Git worktrees without leaving traces"
   homepage "https://github.com/no-simpler/clc"
   url "https://github.com/no-simpler/clc/archive/refs/tags/v3.2.0.tar.gz"
   sha256 "93e621f6eac7c64c4c95d8429dce6a4421413a6d231a7faa48ef8bdf1fa42cf1"
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
