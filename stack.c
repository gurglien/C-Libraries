#include "stack.h"
#include <stdlib.h>
#include <stdio.h>

stack_* new_stack(void* data)
{
        stack_*         stack = malloc(sizeof(stack_));
        if(stack == NULL)
        {
                printf("Could not retrive any memory");
                return;
        }
        stack->data = data;
        stack->next = stack;
        return stack;
}

void free_stack(stack_** stack)
{
        stack_*        free_stack = *stack;
        stack_*        temp;
        if(free_stack == NULL)
        {
                printf("Stack is already NULL");
                return;
        }
        do{
                temp = free_stack->next;
                free(free_stack);
                free_stack = temp;
        }while(free_stack->next != NULL);
        
        stack = NULL;
        
}

void push(stack_** stack,void* data)
{
        stack_*        push_stack = *stack;
        stack_*         new_elem;
        if(push_stack == NULL)
        {
                printf("The stack was NULL");
                return;
        }
        new_elem = malloc(sizeof(stack_));
        if(new_elem == NULL)
        {
                printf("No memory available");
                return;
        }
        new_elem->next = push_stack;
        push_stack = new_elem;
}

void* pop(stack_** stack)
{
        stack_*        pop_stack = *stack;
        void*           pop_elem;
        if(pop_stack == NULL)
        {
                printf("Stack is NULL");
                return;
        }
        pop_elem = pop_stack->data;
        pop_stack = pop_stack->next;
        return pop_elem;
}

int main(){return 1;}