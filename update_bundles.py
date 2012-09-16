import os
import subprocess

git_bundles = {
 "supertab" :"git://github.com/ervandew/supertab.git",
 "tabular" : "git://github.com/godlygeek/tabular.git",
 "snipmate" : "git://github.com/msanders/snipmate.vim.git",
 "nerdtree" : "git://github.com/scrooloose/nerdtree.git",
 "fugitive" : "git://github.com/tpope/vim-fugitive.git",
 "git" : "git://github.com/tpope/vim-git.git",
 "repeat" : "git://github.com/tpope/vim-repeat.git",
 "surround" : "git://github.com/tpope/vim-surround.git",
 "vividchalk" : "git://github.com/tpope/vim-vividchalk.git",
 "ack" : "https://github.com/mileszs/ack.vim",
 "IndexedSearch": "git://github.com/vim-scripts/IndexedSearch.git"
}

vim_org_scripts = [
  ["YankRing", "1234", "plugin"],
  ["rainbow-parens", "1561", "plugin"]
]

for bundle in git_bundles.iteritems():
    dst = os.path.join(os.getcwd(), 'bundle/%s' % bundle[0])
    cmd = "git clone %s %s" % (bundle[1], dst)
    print cmd
    subprocess.Popen(cmd, shell=True)


