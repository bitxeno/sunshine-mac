# sunshine-mac

sunshine-mac is a macOS menu bar application wrapper for the command-line based [sunshine](https://github.com/LizardByte/Sunshine)

## How to use

1. Follow `https://github.com/LizardByte/homebrew-homebrew` to install homebrew version `sunshine`
2. No need to run `sunshine` service, just run `sunshine-mac`
3. Enjoy


## FAQ

1. log output `No screen capture permission` error

Exit app and run the following command to reset screen capture permission.

```
tccutil reset ScreenCapture dev.bitxeno.sunshine-mac
tccutil reset Accessibility dev.bitxeno.sunshine-mac
```

then start app again

## License

This project is licensed under the [MIT License](LICENSE).
