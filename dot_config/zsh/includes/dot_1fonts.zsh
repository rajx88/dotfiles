if [ ! -d "$HOME/.local/share/fonts" ]; then
    mkdir -p $HOME/.local/share/fonts
fi

if [ ! -d "$HOME/Downloads" ]; then
    mkdir -p $HOME/Downloads
fi

fonts_dir=$HOME/.local/share/fonts

if ls $fonts_dir | grep -q "CaskaydiaCove"; then
    return
fi

cascadia_code_file=cascadia_code.zip
curl_output_dir_file=$HOME/Downloads/$cascadia_code_file
output_dir=$HOME/Downloads/cascadia_code

curl -L https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/CascadiaCode.zip --output $curl_output_dir_file

unzip $curl_output_dir_file -d $output_dir 
cp $output_dir/*ttf $fonts_dir

rm -rf $output_dir
rm $curl_output_dir_file