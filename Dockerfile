FROM sabotagecla6/ubuntu_base

# ***********************************************
# install packages for xrdp, and do setting
# ***********************************************
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
        zenity x11-apps \
        language-pack-ja-base language-pack-ja fonts-noto-cjk fcitx-mozc \
    && im-config -n fcitx

# ***********************************************
# setting keyboard layout
# ***********************************************
RUN { \
      echo 'XKBMODEL="pc105"'; \
      echo 'XKBLAYOUT="jp""'; \
      echo 'XKBVARIANT=""'; \
      echo 'XKBOPTIONS=""'; \
      echo ''; \
      echo 'BACKSPACE="guess"'; \
    } > /etc/default/keyboard

ENV GTK_IM_MODULE=xim \
    QT_IM_MODULE=fcitx \
    XMODIFIERS=@im=fcitx \
    DefalutIMModule=fcitx

RUN locale-gen ja_JP.UTF-8  
ENV LANG=ja_JP.UTF-8 \
    LC_ALL=ja_JP.UTF-8
