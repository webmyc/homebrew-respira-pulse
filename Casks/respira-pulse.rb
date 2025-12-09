cask "respira-pulse" do
  version "1.2.1"

  if Hardware::CPU.arm?
    sha256 "5382e8d2b68727cfe50b141adedfe132e2c428e891478d06a5bbac8f0685d1d3"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.2.1/Respira-Pulse-arm64.dmg"
  else
    sha256 "04e4cf3c913bd9cad93fee44c6b4fb87cff8adc79084caa6ec6d738c7562f33c"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.2.1/Respira-Pulse-x64.dmg"
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
