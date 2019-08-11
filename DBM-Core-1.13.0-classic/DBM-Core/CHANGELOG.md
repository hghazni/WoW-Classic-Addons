# Deadly Boss Mods Core

## [1.13.0](https://github.com/DeadlyBossMods/DBM-Classic/tree/1.13.0) (2019-08-08)
[Full Changelog](https://github.com/DeadlyBossMods/DBM-Classic/compare/1.13.0_alpha8...1.13.0)

- Prep a fresh classic release  
- Merge updates from retail DBM to classic DBM  
- Merge in improvements to dispel and interrupt filtering  
- Fix debug code here too  
- Oh, merge this too  
- Push countdown and end combat fixes from live to classic  
- adjust packager call  
- specify classic version for packager  
- add curse project id to toc  
- move to the BigWigs community packager  
- Sync fixes  
- Sync some changes  
- Purge more obsolete objects  
- Merges  
- Fix here too  
- Test  
- retail bugfix merges  
- sync core fixes and feature updates from retail to classic core.  
- Sync with retail  
- Catch classic core to retail core  
- Minor sneed fix, and add a warning to fairbanks  
- Reorganize again and support splitting auto localized names into sub cats by injecting localized text into auto localized text.  
- Move blackrock spire up list too, it's sorted by L for lower but in classic there is no lower or upper, just Blackrock Spire (at least in terms of auto localized instance names)  
- Fix indexing in resort  
- Fixed bug where Scholomance was missing from instance list. As well as fixed some of sort order  
- Herod spellId updates, but events may still be wrong  
- Fix bug before travis yells at me  
- Initial warning/timer support for Maraudon  
- Merge pull request #3 from Elnarfim/master  
    KR Update (Classic)  
- Merge remote-tracking branch 'upstream/master'  
- KR Update  
- Sync  
- Fix bug  
- Sync  
- Support for Zul'Farrak added  
- *Remove twin ogron whisper thing, that sound doesn't exist in classic.  
    *Automatically filter "status" and auto response whipsers from non friends  
    *Split Bnet and non bnet whisper sync handlers to patch the only sync vulnerability in sync handlers I found. This  vulnerability could allow someone to send fake world boss engage messages via non bnet whisper channel (even though DBM doesn't never send those kinda syncs from that channel). Now, all non bnet whisper syncs are automatically filtered through your group or friends list and rejected if sender not found on either.  
- Fix spellId  
- Fix bug on cookie with heal timer starting in wrong place (basically all casts)  
    Added warnings and timer for Slow to Lady Serevess  
- Some fixes and additions to Scarlet Monastery  
