FROM nickto/arch
RUN pacman --noconfirm -S \
        texlive-most \
        texlive-langcyrillic \
        biber

ENTRYPOINT ["latexmk"]
CMD ["-help"]
