class Clc < Formula
  desc "Use Claude Code across Git worktrees without leaving traces"
  homepage "https://github.com/no-simpler/clc"
  url "https://github.com/no-simpler/clc/archive/refs/tags/v3.5.0.tar.gz"
  sha256 "40e7dbacf63176b83381ad8148eea360a17c0ed08060d10270127d0eb257021a"
  license "MIT"
  head "https://github.com/no-simpler/clc.git", branch: "main"

  def install
    bin.install "clc.sh" => "clc"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clc --version")
  end
end
