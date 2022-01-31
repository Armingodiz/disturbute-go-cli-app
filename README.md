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
7. now you can install your app with `brew install [github-userName]/[appName]/[name-of-rb-file]`
* If you want to install with `brew install appName` you need to use homebrew-core (if your app is open-source) or cask. For more information visit [here](https://github.com/Homebrew/brew#homebrew)

### apt
1. build your app and make a binary named [appName]
2. make a directory named linux 
3. make a directory named DEBIAN and put control file in it
4. make a directory named usr/local/bin and put your binary in it
5. run this command in root of your project `dpkg-deb -b <path/to/source/linux> <destination/dir>`
6. now you can install created deb file in destination dir with `apt install <deb-file.deb>` 
* check this [example](https://github.com/Armingodiz/disturbute/blob/master/example-linux)
For more information visit [here](https://www.bustawin.com/distribute-apps-apt/)

### npm.  
First you need [goreleaser](https://goreleaser.com/install/) and npm installed on your system
1. run `goreleaser init` in root of your project
2. change .goreleaser.yml based on your project, forexample add project_name to yaml file(it's default value is folder name)
3. run `goreleaser release`
4. If your app is open-source continue in this directory and if it is not make a new directory and move dist folder to it
5. run `npm init`
6. download [postinstall.js](https://github.com/Armingodiz/disturbute/blob/master/postinstall.js) and add it to your dir 
7. cahnge package.json:
* 
This solotion is a changed version for this [solotion](https://blog.xendit.engineer/how-we-repurposed-npm-to-publish-and-distribute-our-go-binaries-for-internal-cli-23981b80911b)



