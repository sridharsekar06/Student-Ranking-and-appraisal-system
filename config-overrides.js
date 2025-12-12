module.exports = {
  webpack: (config) => {
    // No custom webpack changes yet
    return config;
  },
  devServer: (configFunction) => {
    return (proxy, allowedHost) => {
      const config = configFunction(proxy, allowedHost);
      // Force a valid allowedHosts setting to bypass empty entry causing schema error
      config.allowedHosts = 'all';
      return config;
    };
  }
};
