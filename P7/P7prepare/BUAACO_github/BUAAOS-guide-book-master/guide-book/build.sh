#!/bin/bash

# install texlive-full
apt-get update && \
apt-get install -y --no-install-recommends \
    texlive-latex-extra \
    texlive-latex-recommended \
    texlive-fonts-extra \
    texlive-fonts-recommended \
    texlive-lang-chinese \
    texlive-formats-extra \
    texlive-extra-utils \
    texlive-generic-recommended \
    python-pygments \
    lmodern \
    wget \
    make \
    xzdec

# install the fonts
mkdir -p /usr/share/fonts/opentype/
cp /guide-book/fonts/AdobeFangsongStd-Regular.otf /usr/share/fonts/opentype/
cp /guide-book/fonts/AdobeHeitiStd-Regular\ \(v5.010\).otf /usr/share/fonts/opentype/
cp /guide-book/fonts/AdobeKaitiStd-Regular\ \(v5.010\).otf /usr/share/fonts/opentype/
cp /guide-book/fonts/AdobeSongStd-Light\ \(v5.010\).otf /usr/share/fonts/opentype/
mkfontscale
mkfontdir
fc-cache -fv
fc-list :lang=zh

# install minted.sty
# wget https://raw.githubusercontent.com/gpoore/minted/master/source/minted.sty
# wget https://raw.githubusercontent.com/gpoore/minted/master/source/minted1.sty
# mkdir -p /usr/share/texlive/texmf-dist/tex/latex/minted
# cp minted.sty minted1.sty /usr/share/texlive/texmf-dist/tex/latex/minted 

# install fvextra.sty
wget https://raw.githubusercontent.com/gpoore/fvextra/master/fvextra/fvextra.sty
mkdir -p /usr/share/texlive/texmf-dist/tex/latex/fvextra
cp fvextra.sty /usr/share/texlive/texmf-dist/tex/latex/fvextra

# install latex packages
tlmgr init-usertree
tlmgr option repository ftp://tug.org/historic/systems/texlive/2015/tlnet-final
tlmgr install ulem
tlmgr install minted

# run make
cd guide-book
make
