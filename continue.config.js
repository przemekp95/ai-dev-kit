/** @type {import("continue").ContinueConfig} */
module.exports = {
  models: [
    {
      title: "LLaMA 3 (Ollama)",
      provider: "ollama",
      model: "llama3",
    },
  ],
  contextProviders: [
    "currentFile",
    "directory",
    "openFiles",
    "terminal",
  ],
  slashCommands: [],
  fileExplorer: {
    showHiddenFiles: false,
  },
  theme: "dark", // lub "light"
};
