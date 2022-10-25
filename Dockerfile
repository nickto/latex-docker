FROM archlinux:base-devel

# Install reflector and sort mirrors by speed
RUN pacman --noconfirm -Sy && \
    pacman --noconfirm -S reflector && \
    reflector --latest 20 --protocol https --sort rate --save /etc/pacman.d/mirrorlist

RUN pacman --noconfirm -Syu &&  \
    pacman --noconfirm -S \
    texlive-most \
    texlive-langcyrillic \
    biber

WORKDIR /latex

ENTRYPOINT ["latexmk"]
CMD ["-help"]
