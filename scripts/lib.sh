name_and_file() {
    n=${1##*.}
    if [ $n == 'toolbox' ]; then
        echo $n Dockerfile
        return
    fi
    echo $n-toolbox Dockerfile.$n
}
