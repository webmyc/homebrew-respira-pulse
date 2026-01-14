cask "respira-pulse" do
  version "1.3.2"

  if Hardware::CPU.arm?
    sha256 "e85478fcc1cb69f363b06732a31fa0d72b4d22e916c7a39e9879735b380ac9e0"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.3.2/Respira-Pulse-arm64.dmg"
  else
    # For Intel, you'll need to build separately and update this
    sha256 "PLACEHOLDER_INTEL_SHA256"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.3.2/Respira-Pulse-x64.dmg"
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
