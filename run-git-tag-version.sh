# Install git
apt-get -y install git

# Login github
git config --global user.name "${GH_NAME}"
git config --global user.email "${GH_EMAIL}"
echo "machine github.com login ${GH_NAME} password ${GH_TOKEN}" > ~/.netrc

# Commit new version
git add -A
git commit -m "version $version"
git tag -a "$version" -m "version $version"
git push
git push --tags