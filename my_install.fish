function my_install
    for pac in $argv
        switch $pac
            case rust
                command curl https://sh.rustup.rs -sSf | sh
            case miniconda
                switch (uname)
                    case Darwin
                        command wget https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh -O ~/Downloads/miniconda.sh
                        command bash ~/Downloads/miniconda.sh -b -p ~/.miniconda
						command ~/.miniconda/base/bin/conda init fish
                    case Linux
                        command wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/Downloads/miniconda.sh
                        command bash ~/Downloads/miniconda.sh -b -p ~/.miniconda
						command ~/.miniconda/base/bin/conda init fish
				    case '*'
						echo "OS not supported yet."
                end
            case '*'
                echo "Not implemented."
                echo "  Run `funced my_install` to add it."
        end
    end
end
