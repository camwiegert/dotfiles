const foregroundColor = '#f8f8f0';
const backgroundColor = '#111111';

module.exports = {
  config: {

    backgroundColor: backgroundColor,
    borderColor: '#333',
    cursorColor: foregroundColor,
    cursorShape: 'BLOCK',
    fontFamily: '"SFMono-Light", "Menlo", "DejaVu Sans Mono", "Lucida Console", monospace',
    fontSize: 13,
    foregroundColor: foregroundColor,
    padding: '6px 8px',
    shell: '/bin/bash',
    termCSS: '',
    windowSize: [1080, 640],

    css: `
        .tab_tab {
          color: ${foregroundColor};
          background-color: ${backgroundColor};
        }
        .tab_active:before {
          border-bottom-color: #38CCD1;
        }
    `,

    colors: [
      backgroundColor,
      '#F92672', // pink
      '#A6E22E', // green
      '#FD971F', // orange
      '#AE81FF', // purple
      '#66D9EF', // blue
      '#38CCD1', // cyan
      '#ffffff', // white
      '#49483E', // brown gray
      '#F92672', // pink
      '#A6E22E', // green
      '#FD971F', // orange
      '#AE81FF', // purple
      '#66D9EF', // blue
      '#38CCD1', // cyan
      '#ffffff', // white
      foregroundColor
    ]

  },

  plugins: [],
  localPlugins: []
};
