<div align="center">

  # 🚣 Rudertraining App
  ### Anwesenheits- & Trainingsverwaltung • Vereins-Tool
  
  ![Last Commit](https://img.shields.io/github/last-commit/B13M4RK/Rudertraining?style=flat-square&color=blue)
  ![Status](https://img.shields.io/badge/Status-Aktiv-brightgreen?style=flat-square)
  ![License](https://img.shields.io/badge/License-MIT-orange?style=flat-square)
  
  **Autor:** Paul Dreißig

</div>

---

## 📚 Übersicht & Features

Dieses Repository enthält eine schlanke, mobile Web-App zur Erfassung und Auswertung von Trainingseinheiten für Ruderer und Mentoren:

<details>
<summary><b>🔥 Kernfunktionen</b></summary>
<br>

* **🚣 Trainingserfassung:** Einheiten schnell für Wasser oder Kraftraum eintragen.
* **👥 Personenverwaltung:** Teilnehmer per Namenssuche hinzufügen und verwalten.
* **📅 Kalenderansicht:** Monatsübersicht aller absolvierten Einheiten mit Farbmarkierung.
* **📊 Statistiken:** Auswertung der Anwesenheiten pro Person (Filterbar nach Wasser/Kraftraum/Alle).
* **🌐 Cloud-Sync:** Automatische Synchronisation über Supabase, damit Mentoren und Sportler denselben Stand sehen.
* **🔄 Daten-Migration:** Lokale Daten (`localStorage`) werden beim ersten Start automatisch in die Cloud übertragen.

</details>

<details>
<summary><b>🛠️ Backend Setup (Supabase)</b></summary>

<br>

1. Projekt auf [supabase.com](https://supabase.com) erstellen.
2. Zwei Tabellen anlegen:
   * **`people`**: `id` (int8), `f` (text), `l` (text)
   * **`trainings`**: `id` (int8), `date` (text), `type` (text), `people` (jsonb / array)
3. API-URL und Anon-Key in der `index.html` eintragen.

</details>

---

## 📥 Projekt Herunterladen

Git Clone (zum Updaten)

```bash
cd Downloads
git clone [https://github.com/B13M4RK/Rudertraining.git](https://github.com/B13M4RK/Rudertraining.git)
