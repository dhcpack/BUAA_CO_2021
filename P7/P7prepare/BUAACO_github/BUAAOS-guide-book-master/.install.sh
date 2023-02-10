sudo apt-get -y install texlive-full
sudo tex -v
sudo mkdir -p /usr/share/fonts/opentype/
sudo mv ./guide-book/fonts/AdobeFangsongStd-Regular.otf /usr/share/fonts/opentype/                                                                   
sudo mv ./guide-book/fonts/AdobeHeitiStd-Regular\ \(v5.010\).otf /usr/share/fonts/opentype/
sudo mv ./guide-book/fonts/AdobeKaitiStd-Regular\ \(v5.010\).otf /usr/share/fonts/opentype/
sudo mv ./guide-book/fonts/AdobeSongStd-Light\ \(v5.010\).otf /usr/share/fonts/opentype/
sudo fc-cache -fv
sudo wget http://mirrors.ctan.org/macros/latex/contrib/minted.zip
sudo wget https://raw.githubusercontent.com/gpoore/fvextra/master/fvextra/fvextra.sty
sudo unzip minted.zip
cd minted/
sudo make
sudo mv /usr/share/texlive/texmf-dist/tex/latex/minted/minted.sty /usr/share/texlive/texmf-dist/tex/latex/minted/minted.sty.backup
sudo mv minted.sty /usr/share/texlive/texmf-dist/tex/latex/minted
sudo mv minted1.sty /usr/share/texlive/texmf-dist/tex/latex/minted
sudo mkdir -p /usr/share/texlive/texmf-dist/tex/latex/fvextra
sudo mv fvextra.sty /usr/share/texlive/texmf-dist/tex/latex/fvextra
cd ..
sudo rm -rf minted
sudo rm minted.zip
sudo apt-get install python-pygments
