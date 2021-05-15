# Templates

This repository contains the following reference templates. 

1. `note.tex` for writing articles, notes, and papers &mdash; requires `ckunte.sty`.
2. `letter.tex` for writing old-fashioned letters, cover pages, etc.

To insert a template in Sublime Text on the fly:

1. Set file-type to LaTeX, and then
2. Type a tab trigger (`note` or `letter`) and press <kbd>tab</kbd>

# Fillable forms

1. `remit.tex` for remittance &mdash; requires `remit.sty`

Style (`.sty`) files can either be co-located with `.tex` files, or installed system-wide. For system-wide installation please see [installing custom style][i].

See also [snippets for reference][w].

# Packages required

[Using TeX Live Utility][tlu], install the following packages:

1. `datetime` for date and time options
1. `ebgaramond-maths` font for math support
1. `ebgaramond` font
1. `enumitem` for formatting enumitems
1. `erewhon` font with `newtx` for math support
1. `fmtcount` for display value of LaTex counter
1. `ly1` for postscript font encoding
1. `pdfpages` for embedding pdf pages/documents
1. `pgfplots` for PGF plots
1. `placeins` for section positioning
1. `pythonhighlight` for embedding python code
1. `sectsty` for styling sections
1. `titling` for titling options
1. `xstring` for string manipulation

To install them all in on go, run the following command in terminal:

```bash
sudo tlmgr install datetime ebgaramond ebgaramond-maths enumitem erewhon fmtcount ly1 newtx pdfpages pgfplots placeins sectsty titling xstring
```

# Installing custom style(s)

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

3. Test to check if `texmf` folder is mapped correctly to `TEXMFHOME` by running `kpsewhich -var-value TEXMFHOME`. This would be `$HOME/texmf` in macOS, Linux, Cygwin (on Windows), etc.

# Editing aids

User defined [Sublime Text 3 LaTeX snippets][sn] and [Vim LaTeX snippets][vs] are available for use.

To download to, say, `~/` folder:

```bash
git clone https://github.com/ckunte/templates.git
```

## Sublime Text 3 LaTeX snippets

Create a link to `templates/st3-snippets` folder for [Sublime Text] to access them:

```bash
ln -s $HOME/templates/st3-snippets "$HOME/Library/Application Support/Sublime Text 3/Packages/User/st3-snippets"
```

## Vim LaTeX snippets

Park `*.snippets` files under `$HOME/.vim/UltiSnips/`.

## How snippets work

Type a pre-defined keyword, say, `fig` and press <kbd>tab</kbd>, and it produces a full block of figure LaTeX code. See a demonstration below.

![Snippets demo in Sublime Text](./st3-snippets.gif)

[tlu]: http://amaxwell.github.io/tlutility/ "TeX Live Utility"
[w]: https://github.com/ckunte/templates/wiki "Home - ckunte/templates Wiki"
[i]: https://github.com/ckunte/templates#installing-custom-style "Installing custom style system-wide"
[sn]: https://github.com/ckunte/templates/tree/master/st3-snippets "templates/st3-snippets at ckunte/templates"
[vs]: https://github.com/ckunte/templates/tree/master/vim-snippets "templates/vim-snippets at ckunte/templates"
[Sublime Text]: https://www.sublimetext.com/ "Sublime Text - A sophisticated text editor for code, markup and prose"
