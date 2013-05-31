#include "arena.h"
#include <stdlib.h>
#include <stdio.h>

arena_t* new_arena()
{
        arena_t*         arena = calloc(1, ARENA_SIZE);
        
        if(arena == NULL)
        {
                printf("Could not retrive any Memory");
                return;
        }
        arena->current = &arena->buffer[0];
        return arena;
}

void free_alloc(arena_t* arena)
{
        free(arena);
}

void* alloc(arena_t* arena, size_t size)
{
        size_t          remaining;
        void*           data;
        
        remaning = ARENA_SIZE - (arena->current - &arena->buffer[0]);
        if(size > remaning)
        {
                return NULL;
        }
        data = arena->current;
        current += size;
        return data;
        
}