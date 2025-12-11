cask "respira-pulse" do
  version "0.1.0-dev.117"

  if Hardware::CPU.arm?
    sha256 "69d3abc69ff31ffba3314cb43d9c76dfb549b04ae6c50e3cb121669e17357379"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v0.1.0-dev.117/Respira-Pulse-arm64.dmg"
  else
    sha256 "ca02e1fbff78204f293c1739d63b3779cd40bd3b78b0d9b5b617eab7428122f5"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v0.1.0-dev.117/Respira-Pulse-x64.dmg"
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
