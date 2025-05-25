# 🧠 ai-dev-kit

Lokalny zestaw programisty AI — gotowy do działania offline, z naciskiem na automatyzację, prywatność i szybki start.

## 📆 Co zawiera

* 🔧 Skrypt `start-all.sh` — uruchamia cały stack jednym poleceniem  
* 🐳 `docker-compose.yml` — wielousługowa konfiguracja Dockera  
* 🧠 Wsparcie dla lokalnych modeli (w `models/ollama/`)  
* 🔍 Wsparcie dla embeddingów (MiniLM, multilingual-e5, SPLADE*)  
* 🗅 WebUI (`webui-src/`) — graficzny interfejs do interakcji z modelami  
* 🤖 Integracja z Continue (wtyczka do VS Code)  
* 🧪 Kod i testy w `python/`, `php/`, `js/`  
* 🧹 Lintowanie: ESLint, Prettier, Husky, `lint-staged`  
* 📚 Lokalna baza danych i wektorowa (`data/`)  

## 🚀 Szybki start

1. Nadaj prawa wykonania:

```bash
chmod +x start-all.sh
```

2. Uruchom projekt:

```bash
./start-all.sh
```

3. Otwórz przeglądarkę i wejdź na:

```
http://localhost:3000
```

> ℹ️ Pierwsze uruchomienie może potrwać — Docker pobiera obrazy i buduje środowisko.

---

## 🧠 Struktura projektu

```
ai-dev-kit/
├── start-all.sh           # główny skrypt uruchamiający
├── stop-all.sh            # skrypt zatrzymujący
├── docker-compose.yml     # definicje usług Dockera
├── Dockerfile.webui       # Dockerfile do budowy UI
├── data/                  # cache, pliki użytkownika, webui.db
├── embedding-models/      # modele embeddingowe (HF)
├── models/                # modele Ollama (lokalne, ignorowane przez Git)
├── webui-src/             # źródła WebUI (fork lub submoduł)
├── python/                # kod i testy w Pythonie
├── php/                   # kod testowy w PHP
├── js/                    # kod JS
├── continue.config.js     # konfiguracja dla Continue (lokalny asystent VS Code)
├── .env, .envrc           # zmienne środowiskowe
├── .gitattributes, .gitignore
└── README.md
```

---

## 🧪 Testy i lintowanie

* Obsługiwane przez `lint-staged`, `husky`, `eslint.config.js`, `lint-staged.config.js`  
* Gotowe do działania w `python/`, `php/`, `js/`

---

## 📦 Duże pliki i Git LFS

* Modele (`models/`), cache (`data/`), embeddingi (`embedding-models/`) są ignorowane przez Git  
* Projekt przygotowany do Git LFS — duże pliki nie są commitowane

---

## 🤖 Integracja z Continue (VS Code)

Ten projekt jest w pełni kompatybilny z [Continue](https://continue.dev) — wtyczką AI dla VS Code.

1. **Zainstaluj Continue** z Marketplace  
2. **Otwórz ten folder jako workspace**  
3. Continue automatycznie wykryje lokalny model (`llama3`) i plik `continue.config.js`

Działa offline i lokalnie.

---

## 🔮 Co dalej

* [ ] Endpoint `/api/embed` do testowania embeddingów  
* [ ] `/api/rag` z lokalnym przeszukiwaniem kodu/projektów  
* [ ] Promptowanie przez Continue (np. „refactor this function”)  
* [ ] Obsługa projektów kodowych w `/workspace/projekty`

---

## ✅ Gotowe do rozbudowy o GitHub Actions

Repo ma przygotowane lintowanie i może być rozszerzone o pełne CI/CD.

---

## 👤 Autor

Projekt tworzony przez [przemekp95](https://github.com/przemekp95) — prywatny zestaw deweloperski do lokalnej pracy z AI bez chmury.

---

## 📄 Licencja

Brak licencji — projekt prywatny (może zostać otwarty na życzenie).
