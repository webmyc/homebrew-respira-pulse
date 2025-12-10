cask "respira-pulse" do
  version "0.1.0-dev.93"

  if Hardware::CPU.arm?
    sha256 "3e0e120a2f6f315e614fd38cdfe118f35b5a5552b66598940b38c262933801d1"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v0.1.0-dev.93/Respira-Pulse-arm64.dmg"
  else
    sha256 "bff1abe512c7ce5532f00e1c8716cb7b6dc3e4015e52e799fe4843f9ff3fec26"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v0.1.0-dev.93/Respira-Pulse-x64.dmg"
  end

  name "Respira Pulse"
  desc "Menu bar app for monitoring Vercel deployments"
  homepage "https://www.respirapulse.dev"

  app "Respira Pulse.app"

  zap trash: [
    "~/Library/Application Support/cafe.respira.pulse",
    "~/Library/Preferences/cafe.respira.pulse.plist",
    "~/Library/Caches/cafe.respira.pulse",
  ]
end
