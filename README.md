# RevShell - Reverse Shell Generator and Listener

RevShell is a bash-based tool designed to simplify the process of setting up reverse shells using various tunneling services. It automates the creation of a secure tunnel and provides an easy-to-use interface for generating and listening to reverse shell connections.

## Features

- Support for multiple tunneling services (ngrok, Cloudflare, localtunnel)
- Automatic tunnel setup
- Reverse shell command generation
- Integrated listener with `nc`
- Easy-to-use command-line interface

## Prerequisites

- Bash
- netcat (`nc`)
- One or more of the following tunneling services:
  - ngrok (installed and configured with an authtoken)
  - Cloudflare (cloudflared installed)
  - localtunnel (installed via npm)

## Installation

1. Clone this repository:
   ```
   git clone https://github.com/HomeDev68/RevShell.git
   ```

2. Navigate to the cloned directory:
   ```
   cd RevShell
   ```

3. Run the installation script:
   ```
   sudo ./install.sh
   ```

This will install the RevShell scripts in your `~/.local/bin` directory.

## Usage

To start a reverse shell session:

```
revshell <tunneling-service> <port>
```

Replace `<tunneling-service>` with one of: `ngrok`, `cloudflare`, or `localtunnel`.
Replace `<port>` with the desired port number for your reverse shell connection.

Example:
```
revshell ngrok 8080
```

This command will:
1. Start the specified tunneling service
2. Display the public URL and IP
3. Generate reverse shell commands for the target system
4. Start a listener on the specified port

Follow the on-screen instructions to establish the reverse shell connection from the target system.

## Uninstallation

To uninstall RevShell, run:

```
sudo ./uninstall.sh
```

## Security Notice

This tool is designed for educational and authorized testing purposes only. Misuse of this tool on systems you do not own or have explicit permission to test is illegal and unethical.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.