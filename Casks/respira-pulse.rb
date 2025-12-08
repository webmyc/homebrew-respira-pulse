cask "respira-pulse" do
  version "1.1.6"

  if Hardware::CPU.arm?
    sha256 "7d73c52b92a54b443d98e6f5ab4c090bf5a5fdfa64332701fc22637b34a862cd"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.1.6/Respira-Pulse-arm64.dmg"
  else
    sha256 "f07026264152ef8e2887741ce889180c4d31e90f697cd58af5bcde3e6659e3f5"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.1.6/Respira-Pulse-x64.dmg"
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
