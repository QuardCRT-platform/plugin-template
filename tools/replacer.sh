
cp $2 $3
UNAMEOUT="$(uname -s)"
case "${UNAMEOUT}" in
    Linux*)    
        sed -i 's/#COMPLILER_INFO#/'$1'/g' $3
        ;;
    Darwin*)    
        sed -i'.original' -e 's/#COMPLILER_INFO#/'$1'/g' $3
        ;;
esac
