Pod::Spec.new do |s|
  s.name         = "ffmpeg-kit-ios-full"
  s.version      = "6.0"
  s.summary      = "FFmpeg Kit iOS Full Shared Framework"
  s.description  = "Includes FFmpeg with dav1d, fontconfig, freetype, fribidi..."
  s.homepage     = "https://github.com/arthenica/ffmpeg-kit"
  s.license      = {
    :type => "LGPL-3.0",
    :file => "LICENSE"
  }
  s.authors      = {
    "ARTHENICA" => "open-source@arthenica.com"
  }

  s.platform     = :ios, "12.1"
  s.requires_arc = true
  s.libraries    = ["z", "bz2", "c++", "iconv"]

  s.source = {
    :http => "https://github.com/juliendevleeschauwer/ffmpeg-kit-ios-full/archive/refs/tags/v6.0.zip"  
  }

  s.ios.frameworks = ["AudioToolbox", "AVFoundation", "CoreMedia", "VideoToolbox"]

  s.ios.vendored_frameworks = [
    "ffmpeg-kit-ios-full-6.0/ffmpegkit.xcframework",
    "ffmpeg-kit-ios-full-6.0/libavcodec.xcframework",
    "ffmpeg-kit-ios-full-6.0/libavdevice.xcframework",
    "ffmpeg-kit-ios-full-6.0/libavfilter.xcframework",
    "ffmpeg-kit-ios-full-6.0/libavformat.xcframework",
    "ffmpeg-kit-ios-full-6.0/libavutil.xcframework",
    "ffmpeg-kit-ios-full-6.0/libswresample.xcframework",
    "ffmpeg-kit-ios-full-6.0/libswscale.xcframework"
  ]
end
