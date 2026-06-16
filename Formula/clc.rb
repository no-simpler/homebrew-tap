class Clc < Formula
   desc "Use Claude Code across Git worktrees without leaving traces"
   homepage "https://github.com/no-simpler/clc"
   url "https://github.com/no-simpler/clc/archive/refs/tags/v2.1.2.tar.gz"
   sha256 "ee484c689fe97bf7d440d8ae2e67d829a1be92420607870625bae95fc3fae534"
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
