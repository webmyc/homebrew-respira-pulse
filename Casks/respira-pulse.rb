cask "respira-pulse" do
  version "1.2.5"

  if Hardware::CPU.arm?
    sha256 "8369b07bd7427b7e964541897cdf738a10137ba31ae27b777af6a8bfdc08f30b"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.2.5/Respira-Pulse-arm64.dmg"
  else
    sha256 "8054bbd3d46c62eefce4170bec1c7038805a24c9fc2502d884446da27a85ba10"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.2.5/Respira-Pulse-x64.dmg"
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
