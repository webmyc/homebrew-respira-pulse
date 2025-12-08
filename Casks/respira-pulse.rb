cask "respira-pulse" do
  version "1.1.18"

  if Hardware::CPU.arm?
    sha256 "1b6326597d41765e23b794e858cae1c4cc030f02bd9d8ec862d1939195df80c5"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.1.18/Respira-Pulse-arm64.dmg"
  else
    sha256 "30d74f0e38318953b5ee41738d7c8c59306b4747ccaf474ec148d2ba2e74bb20"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.1.18/Respira-Pulse-x64.dmg"
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
