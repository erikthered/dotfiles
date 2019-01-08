// See https://hyper.is#cfg for all currently supported options.

module.exports = {
  config: {
    fontSize: 12,
    fontFamily: '"Fira Code", Menlo, "DejaVu Sans Mono", Consolas, "Lucida Console", monospace',
    cursorColor: 'rgba(248,28,229,0.8)',
    cursorShape: 'BLOCK',
    cursorBlink: false,
    foregroundColor: '#fff',
    backgroundColor: '#000',
    borderColor: '#333',
    css: '',
    termCSS: '',
    showHamburgerMenu: '',
    showWindowControls: '',
    padding: '12px 14px',
    shell: '/usr/local/bin/zsh',
    shellArgs: ['--login'],
    env: {},
    bell: false,
    copyOnSelect: false
  },
  plugins: ["hypercwd", "hyper-dracula"],
  localPlugins: []
};
