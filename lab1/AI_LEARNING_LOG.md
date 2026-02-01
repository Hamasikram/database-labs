# DATABASE LAB - AI LEARNING LOG
================================
Lab Number: 01
Date: January 31, 2026
Name: Hammas Khan
Roll Number: [Your Roll Number]

---

## AI INTERACTION #1
-------------------
**Date:** January 31, 2026
**AI Tool Used:** Claude

**TASK:**
Setting up PostgreSQL database and creating my first database user and database (lab1_db).

**PROMPT USED:**
"I have Linux so i updated the system than i downloaded PostgreSQL now tell me what I do next. I showed the installation output and asked for next steps."

**AI RESPONSE QUALITY:** ⭐⭐⭐⭐⭐ (5/5)

**KEY LEARNINGS:**
1. How to access PostgreSQL as superuser using `sudo -u postgres psql`
2. Creating a database user with CREATE USER command
3. Granting superuser privileges with ALTER USER
4. Creating a database with CREATE DATABASE and assigning ownership
5. Using PostgreSQL meta-commands like \l (list databases), \du (list users), \q (quit)

**HOW I VERIFIED:**
- Ran `psql -U hammaskhan -d lab1_db` to test connection
- Successfully connected and saw the lab1_db=# prompt
- Ran SELECT version(); to verify PostgreSQL was working

**WHAT I MODIFIED:**
- Used my own username 'hammaskhan' instead of the example username
- Created my own secure password
- Tested the connection multiple times to ensure it worked

**FOLLOW-UP QUESTIONS:**
Asked about the difference between postgres user and my custom user, learned that postgres is the default superuser.

---

## AI INTERACTION #2
-------------------
**Date:** January 31, 2026
**AI Tool Used:** Claude

**TASK:**
Installing DBeaver and resolving package lock issues during installation.

**PROMPT USED:**
"I'm getting 'dpkg frontend lock was locked by another process' error when trying to install DBeaver."

**AI RESPONSE QUALITY:** ⭐⭐⭐⭐ (4/5)

**KEY LEARNINGS:**
1. Linux package manager (apt) can only run one operation at a time
2. Background processes can lock the package manager
3. How to identify process IDs causing locks
4. Using `sudo kill [PID]` to terminate stuck processes
5. The difference between downloading (browser) and installing (terminal)

**HOW I VERIFIED:**
- Checked process with `ps aux | grep [PID]`
- Killed the blocking process
- Successfully ran `sudo dpkg -i dbeaver-ce*.deb` after clearing the lock
- DBeaver launched successfully

**WHAT I MODIFIED:**
- Had to kill process 7385 instead of the first one mentioned
- Learned to wait and check if processes finish naturally before killing

**FOLLOW-UP QUESTIONS:**
Asked why the lock happened - learned about Ubuntu's automatic background updates.

---

## AI INTERACTION #3
-------------------
**Date:** January 31, 2026
**AI Tool Used:** Claude

**TASK:**
Connecting DBeaver to PostgreSQL database on Linux (localhost connection).

**PROMPT USED:**
"DBeaver is open, now what should I do to connect it to PostgreSQL?"

**AI RESPONSE QUALITY:** ⭐⭐⭐⭐⭐ (5/5)

**KEY LEARNINGS:**
1. How to create a new database connection in DBeaver
2. Connection parameters: Host (localhost), Port (5432), Database, Username, Password
3. DBeaver needs to download PostgreSQL drivers on first connection
4. Difference between WSL2 setup (needs IP) and native Linux (uses localhost)
5. Importance of testing connection before finishing setup

**HOW I VERIFIED:**
- Clicked "Test Connection" in DBeaver
- Saw "Connected" message
- Verified lab1_db appeared in Database Navigator
- Expanded the database tree and saw Schemas, Tables folders

**WHAT I MODIFIED:**
- Used localhost instead of IP address (since I'm on native Linux, not WSL2)
- Saved my password in DBeaver for convenience
- Explored the DBeaver interface after connecting

**FOLLOW-UP QUESTIONS:**
None - connection worked smoothly on first try.

---

## AI INTERACTION #4
-------------------
**Date:** January 31, 2026
**AI Tool Used:** Claude

**TASK:**
GitHub authentication failed when trying to push code using Personal Access Token.

**PROMPT USED:**
"Authentication failed when I tried to push to GitHub using my token. Getting 'Invalid username or token' error."

**AI RESPONSE QUALITY:** ⭐⭐⭐⭐⭐ (5/5)

**KEY LEARNINGS:**
1. GitHub no longer accepts password authentication for Git operations
2. Personal Access Tokens must be used instead of passwords
3. GitHub CLI (`gh`) is a modern, easier alternative to manual tokens
4. How to authenticate using `gh auth login` with browser
5. One-time authentication that persists for future operations

**HOW I VERIFIED:**
- Installed GitHub CLI with `sudo apt install gh -y`
- Ran `gh auth login` and followed browser authentication
- Saw "✓ Logged in as Hamasikram" confirmation
- Successfully pushed with `git push -u origin main` without being asked for credentials again

**WHAT I MODIFIED:**
- Switched from manual token method to GitHub CLI method
- This was much easier than copying/pasting tokens
- Now I don't need to worry about token expiration for basic operations

**FOLLOW-UP QUESTIONS:**
Asked if this method is better than tokens - learned that `gh` is the recommended modern approach by GitHub.

---

## AI INTERACTION #5
-------------------
**Date:** January 31, 2026
**AI Tool Used:** Claude

**TASK:**
Creating SQL table, inserting data, and writing analytical queries for the books_read table.

**PROMPT USED:**
"Guide me through creating the books_read table and writing the 5 analytical queries required for the lab."

**AI RESPONSE QUALITY:** ⭐⭐⭐⭐⭐ (5/5)

**KEY LEARNINGS:**
1. SQL table creation syntax with constraints (PRIMARY KEY, NOT NULL, CHECK)
2. SERIAL data type for auto-incrementing IDs
3. INSERT INTO syntax for adding multiple rows
4. WHERE clause for filtering data
5. GROUP BY for aggregations
6. ORDER BY for sorting results
7. Aggregate functions: COUNT(), AVG(), SUM()

**HOW I VERIFIED:**
- Ran CREATE TABLE and saw "CREATE TABLE" confirmation
- Used \dt to verify table exists
- Used \d books_read to see table structure
- Inserted 5 books and ran SELECT * to verify data
- Each query returned expected results:
  - Query 1: 3 books with rating >= 4.5
  - Query 2: 5 categories with 1 book each
  - Query 3: Average 475.4 pages
  - Query 4: 1 Machine Learning book
  - Query 5: Total 2,377 pages

**WHAT I MODIFIED:**
- Understood each query before running it
- Predicted results before executing
- Could explain what each part of the query does

**FOLLOW-UP QUESTIONS:**
Asked about difference between WHERE and HAVING - learned WHERE filters rows before grouping, HAVING filters after grouping.

---

## OVERALL REFLECTION
=====================

**Total AI Interactions Today:** 5+ documented (many more small clarifications)

**Most Helpful Interaction:**
Interaction #4 (GitHub CLI) - saved me from frustrating token copy-paste issues and taught me the modern authentication method.

**Biggest Challenge Overcome:**
Understanding the difference between downloading files (browser) and installing them (terminal). Initially confused about why DBeaver download and PostgreSQL installation were separate steps.

**How I Verified AI Responses:**
- Always ran commands to see actual output
- Compared expected vs actual results
- Asked follow-up questions when something didn't make sense
- Never blindly copy-pasted without understanding

**AI Usage Philosophy:**
I used AI as a guide and teacher, not as a copy-paste tool. For every command, I:
1. Read the explanation
2. Predicted what would happen
3. Ran the command
4. Verified it worked as expected
5. Modified it to fit my specific situation

**Skills Gained Through AI-Assisted Learning:**
- Faster troubleshooting (immediate help when stuck)
- Deeper understanding (AI explained WHY, not just HOW)
- Confidence to experiment (knew I could ask if something broke)
- Professional workflow (learned industry-standard tools like gh CLI)

**What I Would Do Differently:**
- Document interactions in real-time instead of recreating them later
- Ask more "why" questions, not just "how"
- Screenshot errors immediately for better troubleshooting

---

**Learning Outcome:**
Successfully set up a complete database development environment and created my first database project. Ready for Lab 02!
