FROM archlinux:latest

RUN pacman -Syu --noconfirm \
    git \
    sudo \
    base-devel \
    make \
    cargo \
    rust-src \
    bash-completion \
    qt6 \
    qt6-declarative \
    qqc2-desktop-style \
    kirigami \
    breeze 

ARG USERNAME=user
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME -s /bin/bash \
    && echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME

USER $USERNAME

ENV XDG_CURRENT_DESKTOP=KDE
