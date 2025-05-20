export default {
  "*.{js,ts}": ["eslint --fix", "prettier --write"],
  "*.py": ["black", "pylint"],
  "*.php": ["phpstan analyse --no-progress"],
};
