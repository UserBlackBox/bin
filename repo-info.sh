#!/bin/bash

echo "Enter GitHub username:"
read username
echo "Enter repo name:"
read repo
url="https://api.github.com/repos/$username/$repo"
json=$(curl $url 2> /dev/null)
printf '\033[1A\033[1A\033[1A\033[1A\033[2K'
echo -e "\033[1mName:\033[0m $(echo $json|jq -r '.name')"
echo -e "\033[1mDescription:\033[0m $(echo $json|jq -r '.description')"
echo -e "\033[1mURL:\033[0m $(echo $json|jq -r '.html_url')"
echo -e "\033[1mHTTPS:\033[0m $(echo $json|jq -r '.clone_url')"
echo -e "\033[1mSSH:\033[0m $(echo $json|jq -r '.ssh_url')"
echo -e "\033[1mStars:\033[0m $(echo $json|jq -r '.stargazers_count')"
echo -e "\033[1mLabguage:\033[0m $(echo $json|jq -r '.language')"
echo -e "\033[1mLicense:\033[0m $(echo $json|jq -r '.license.key')"
