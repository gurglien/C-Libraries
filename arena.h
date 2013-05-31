#define ARENA_SIZE 1024*1024
typedef struct arena_t arena_t;
struct arena_t
{
        char*   current;
        char    buffert[ARENA_SIZE];
};

arena_t* new_arena();

void free_alloc(arena_t* arena);

void* alloc(arena_t* arena, size_t size);