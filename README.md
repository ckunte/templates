# Templates

This repository contains the following templates.

1. `note.tex` for writing articles, notes, and papers &mdash; requires `ckunte.sty`.
2. `letter.tex` for writing old-fashioned letters, cover pages, etc.

# Fillable forms

1. `proform.tex` for professional membership (fillable) claim form &mdash; requires `proform.sty`.
2. `remit.tex` for remittance &mdash; requires `remit.sty`

Style files can either be co-located with `.tex` files, or installed system-wide. For system-wide installation please see [installing custom style][i].

See also [snippets for reference][w].

# Packages required

[Using TeX Live Utility][tlu], install the following packages:

1. `datetime` for date and time options
2. `ebgaramond` and _ebgaramond-maths_ &mdash; [custom fonts][ebg]
3. `enumitem` for formatting enumitems
4. `pdfpages` for embedding pdf pages/documents
5. `pgfplots` for PGF plots
6. `placeins` for section positioning
7. `pythonhighlight` for embedding python code
8. `sectsty` for styling sections
9. `titling` for titling options

To install them all in on go, run the following command in terminal:

```bash
sudo tlmgr install datetime ebgaramond ebgaramond-maths enumitem pdfpages pgfplots placeins pythonhighlight sectsty titling
```

# Installing custom style

1. Run these following in terminal:

    ```bash
    git clone https://github.com/ckunte/templates.git ~/templates
    mkdir -p ~/texmf && cp ~/templates/texmf/* ~/texmf/.
    sudo texhash ~/texmf
    ```

2. Add the following to `~/.bashrc` or `~/.zshrc`, and then reload the file by running `. ~/.bashrc`, for example, in terminal:

    ```bash
    if [ -d ~/texmf ] ; then
        export TEXMFHOME=::~/texmf
        export TEXINPUTS=::~/texmf
    fi
    ```

3. Test to check if `texmf` folder is mapped correctly to `TEXMFHOME` by running `kpsewhich -var-value TEXMFHOME`. This would be `/Users/<username>/texmf` in macOS; `/home/<username>/texmf` in Linux, Cygwin, etc.

[tlu]: http://amaxwell.github.io/tlutility/ "TeX Live Utility"
[ebg]: http://www.georgduffner.at/ebgaramond/ "EB Garamond"
[w]: https://github.com/ckunte/templates/wiki "Home - ckunte/templates Wiki"
[l]: https://ckunte.net/2011/latex "ckunte.net: LaTeX"
[i]: https://github.com/ckunte/templates#installing-custom-style "Installing custom style system-wide"
