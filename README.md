# disturbute
Disturbute binary file(cli app)

## Getting started

For homebrew and apt you need to create a github release(or push you binary file as a tar file in any other fileserver)

### homebrew
1. create a github repositry named homebrew-appName 
2. build your app and make a binary named [appName]
3. tar it using `tar -czf osTarget-appName-version.tar.gz appName`
4. create a ssh for this file using `shasum -a 256 osTarget-appName-version.tar.gz`
5. create a github release with yor tar file as an asset
6. put a rb file like [this](https://github.com/Armingodiz/disturbute/blob/master/example.rb) in your repository using link of your tar file and created ssh
* rb file is a homebrew formula 
7. now you can install your app with `brew [github-userName]/[appName]/[name-of-rb-file]`
* If you want to install with `brew appName` you need to use homebrew-core (if your app is open-source) or cask. For more information visit [here](https://github.com/Homebrew/brew#homebrew)

### apt

For more information visit [here](https://www.bustawin.com/distribute-apps-apt/)

### npm

This solotion is a changed version for this [solotion](https://blog.xendit.engineer/how-we-repurposed-npm-to-publish-and-distribute-our-go-binaries-for-internal-cli-23981b80911b)



