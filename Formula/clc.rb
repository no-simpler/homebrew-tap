class Clc < Formula
   desc "Use Claude Code across Git worktrees without leaving traces"
   homepage "https://github.com/no-simpler/clc"
   url "https://github.com/no-simpler/clc/archive/refs/tags/v2.0.0.tar.gz"
   sha256 "e87f64726dfe8967bfb933e6430edc55ee76412a128f051ff6d659f2cc2c4800"
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
