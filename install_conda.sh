# Go to home directory
# sudo apt-get install wget
# cd ~
wget -O - https://www.anaconda.com/distribution/ 2>/dev/null | sed -ne 's@.*\(https:\/\/repo\.anaconda\.com\/archive\/Anaconda3-.*-Linux-x86_64\.sh\)\">64-Bit (x86) Installer.*@\1@p' | xargs wget
anaconda_file_name=$(find . -name "*Anaconda3*")
echo $anaconda_file_name
# anaconda_file_name=$(find / -name "*Anaconda3*") -exec chmod +x {} \; -exec bash {} -b -p ~/anaconda\; 2>/dev/null 

bash $anaconda_file_name -b -p ~/anaconda

rm $anaconda_file_name
echo 'export PATH="~/anaconda/bin:$PATH"' >> ~/.bashrc 

# # Refresh basically
source .bashrc

conda update conda
