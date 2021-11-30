module.exports = {
  webpack: {
    alias: {
      "react-dom": "@hot-reloader/react-dom"
    }
  },
  plugins: [
    { plugin: require("craco-plugin-react-hot-reload") },
    { plugin: require("craco-cesium")() }
  ]
};