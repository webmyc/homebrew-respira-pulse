cask "respira-pulse" do
  version "1.2.5"

  if Hardware::CPU.arm?
    sha256 "92f91a43e402e0c1f53b1f22948c184301961c533d9b51237aa30747e74b836e"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.2.5/Respira-Pulse-arm64.dmg"
  else
    sha256 "acdc155d3ff1f8150008e916a2c5a1930ad6bfecc9efbcb3ff909f65445cda1f"
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
