cask "respira-pulse" do
  version "1.1.16"

  if Hardware::CPU.arm?
    sha256 "d46f64d0b6c4bbb983b95dddb76d0c01c62b31d5fab38159a9a2c7b9ac56f3c6"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.1.16/Respira-Pulse-arm64.dmg"
  else
    sha256 "b611bbb375d4ce31232ea634883894c2d4411764cb69c862a9c9c6221d29282a"
    url "https://github.com/webmyc/homebrew-respira-pulse/releases/download/v1.1.16/Respira-Pulse-x64.dmg"
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
