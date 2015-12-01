# BEWD11 Project: Taulia e-invoicing compliance

## Introduction
### Summary
The Taulia e-invoicing compliance webapp will be used by Taulia's Professional Services (PS) and Solution Consulting (SC) teams. Partners will be invited in phase 2.
The webapp should present an overview of what e-ivoining compliance is in general and what it mean in Taulia.
It should allow PS abd SC to request more information of a specific country (Country Flash Card) and if Taulia is compliant with the country requested.
For the PS team it will be important to know what configuration is available on the Taulia platform and for a specific country.

### Pages
- Public site with generic information
- Overview (public)
        - eInvoicing (phase 1)
                - 3 pillars
        - SCF (phase 2)
        - SCF Plus (phase 3)
- Login page
- Country flash cards (fiche pays) (login)
- Search (On cards only and From on country to the other) (login)
- Trustwearver (login) (phase 2)
- Product - compliance settings (login) (Phase 2)
- Backend to add info to the DB (admin only)
- Other links page (public + login)

### Tools
- Search engine
- PDF white paper generation from country cards (phase 2)
- Authapp Google API
- login for partners (phase 2)




### Maintenance Tools
The maintenance of the webb app should only be done by compliance administrators
- Single form to add/update/delete countries flash cards
- Upload of master excel to update the countries info (phase 2)

### Roles
```
**admin:** Create user and generate new content
```
```
**taulia:** View and Search for internal taulia users (PS, SC) login via google API
```
```
**partners:** View only external content and some Taulia specific content
```
```
**external:** Only see extarnal content (no login required)
```
