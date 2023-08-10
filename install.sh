sudo apt-get purge ffmpeg -y > /dev/null 2>&1
curl -sSL https://github.com/yt-dlp/FFmpeg-Builds/releases/download/latest/ffmpeg-master-latest-linux64-gpl.tar.xz -o /tmp/ffmpeg-master-latest-linux64-gpl.tar.xz
tar xf /tmp/ffmpeg-master-latest-linux64-gpl.tar.xz -C /tmp
sudo mv /tmp/ffmpeg-master-latest-linux64-gpl/bin/* /usr/local/bin
sudo chmod a+rx /usr/local/bin/ffmpeg /usr/local/bin/ffplay /usr/local/bin/ffprobe
sudo rm -fr ~/ffmpeg-master-latest-linux64-gpl

sudo curl -sSL https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
sudo curl -sSL https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/yt-dlp /usr/local/bin/youtube-dl
#echo "force-unsafe-io" | sudo tee /etc/dpkg/dpkg.cfg.d/02apt-speedup
DEBIAN_FRONTEND="noninteractive" TZ="Europe/Berlin" sudo apt-get update > /dev/null 2>&1
DEBIAN_FRONTEND="noninteractive" TZ="Europe/Berlin" sudo apt-get install -y rename \
    gawk rsync python3-pip git ncdu rename mkvtoolnix vim aria2 python3-pip \
    task-spooler mediainfo iputils-ping > /dev/null 2>&1
#   adb android-sdk-platform-tools-common 
curl -sSL https://github.com/Backblaze/B2_Command_Line_Tool/releases/latest/download/b2-linux -o /tmp/b2
sudo install /tmp/b2 /usr/local/bin

   curl -sSL https://gist.githubusercontent.com/bmrz2019/85fea0513dee733ab83d36518d3e8fc6/raw -o ~/.bashrc
   curl -sSL https://gist.githubusercontent.com/bmrz2019/c81bcce3d69d52e9c3ec036daf229d91/raw -o ~/.vimrc
   curl -sSL https://gist.githubusercontent.com/bmrz2019/c0beee889cb7238aafe71a7a57347339/raw -o ~/.customize_environment
   curl -sSL https://gist.githubusercontent.com/bmrz2019/deb6ad4da4f9b64fbc3325d24c144161/raw -o ~/.profile
   mkdir -p ~/.config/yt-dlp
   curl -sSL https://gist.githubusercontent.com/bmrz2019/8afa88613f9a17a24f76da031de3ffba/raw -o ~/.config/yt-dlp/config
   curl -sSL https://gist.githubusercontent.com/bmrz2019/df2d6f5f2bd91018f46b445264f9f086/raw -o ~/ffmpeg_mkv_mp4
   curl -sSL https://gist.githubusercontent.com/bmrz2019/70e7c7129c544e8ea4f65b4f92232b61/raw -o ~/get_ffmpeg_info
   curl -sSL https://gist.githubusercontent.com/pinamahn/7d8b48c993b5efbe549a8558050ea564/raw -o ~/deploy_to
   curl -sSL https://gist.githubusercontent.com/bmrz2019/eac3c12add5aac6833a2967153a569b6/raw -o ~/google_photos_api_to_android_app
   curl -sSL https://raw.githubusercontent.com/bmrz2019/public/master/es1/bin/youtube_subscriptions.bash -o ~/youtube_subscriptions.bash
   chmod +x ~/youtube_subscriptions.bash ~/ffmpeg_mkv_mp4 ~/google_photos_api_to_android_app ~/deploy_to ~/get_ffmpeg_info ~/get_*
