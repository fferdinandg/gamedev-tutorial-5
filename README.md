## Tutorial 3 Game Development

Implementasi double jump:
Acuan:
https://www.youtube.com/watch?v=f0r3EgjQNak

Syarat:
- Player hanya boleh jump sekali di udara

Implementasi:

Implementasi counter jump dan const MAX_JUMP_COUNT = 2. Apabila player di tanah, counter akan increment 1, sedangkan apabila di udara, counter akan increment 2. Statement if pada button press up disertai juga dengen pengecekan apakah player di tanah atau tidak dan apabila counter kurang dari MAX_JUMP_COUNT. Apabila counter lebih rendah, maka jump akan dilakukan.

Implementasi ini memungkinkan player untuk hanya jump sekali saja saat jatuh meskipun tidak diinisiasikan oleh jump di tanah. 