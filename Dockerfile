FROM nickto/arch:base-devel
RUN pacman --noconfirm -S \
        texlive-most \
        texlive-langcyrillic \
        biber

ENTRYPOINT ["latexmk"]
CMD ["-help"]
