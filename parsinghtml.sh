if ["$1" = ""]
    then
        echo "Modo de usar:"
        echo "$0 Host"
        echo "Exemplo: $0 youtube.com"
    else
        wget -P savedSearch/$1 $1
        cd savedSearch/$1
        grep href index.html | cut -d "/" -f 3 | grep "\." | cut -d '"' -f 1 | grep -v "<l" > urls.txt

        echo -e "\033[1;92m================================================================="
        echo -e "\033[1;93mVarrendo URLs em: \033[1;34m$1"
        echo -e "\033[1;92m================================================================="

        for url in $(cat urls.txt)
            do
                host $url;
        done;

        echo -e "\033[1;92m================================================================="
        echo -e "\033[1;91mConcluido"
        echo -e "\033[1;92m================================================================="
fi