---
description: Create a YouTube playlist without an account
---

Here is the base URL:
```
http://www.youtube.com/watch_videos?video_ids=AAAAAAAAAAA,BBBBBBBBBBB,CCCCCCCCCCC
```

The `A`s `B`s and `C`s will be replaced with the IDs of the videos you want to have.

# Get a Video ID
This is actually super simple. Say I want to place this video in a playlist.
```
https://www.youtube.com/watch?v=UYm0kfnRTJk
```

The video ID is right after that `?v=` part. `UYm0kfnRTJk`

Now take note of the video ID for each of the videos you want in the playlist.

# Place it in a Playlist
```
http://www.youtube.com/watch_videos?video_ids=UYm0kfnRTJk,MNeX4EGtR5Y,U3aXWizDbQ4
```
See? I just replaced the `AAAAAAAAAAA,BBBBBBBBBBB,CCCCCCCCCCC` with the video IDs. 