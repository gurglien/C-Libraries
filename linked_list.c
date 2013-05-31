#include "linked_list.h"
#include <stdlib.h>
#include <stdio.h>

list_t* new_list(void* data)
{
        list_t*         list;
        if(myfree_list != NULL)
        {
                list = myfree_list;
                myfree_list = myfree_list->next;
        }else{
                list = malloc(sizeof(list_t));
                if(list == NULL)
                {
                        printf("Could not retrive any memory");
                        return;
                }
        }       
        list->data = data;
        list->prev = list;
        list->next = list;
        return list;
}


void free_list(list_t** list)
{
        list_t*         head = *list;
        
        head->prev->next = myfree_list;
        myfree_list = head;
        *list = NULL;
}

void free_list_memory(void)
{       
        list_t*         a;
        list_t*         b;
        a = myfree_list;
        while(a != NULL)
        {
                b = a->next;
                free(a);
                a = b;
        }
}

void insert_first(list_t** list, void* data)
{
        list_t*         current = *list;
        list_t*         elem;
        
        if(current != NULL)
        {
                printf("The list was Null");
                return;
        }
        
        elem = malloc(sizeof(list_t));
        elem->next = current;
        elem->prev = current->prev;
        current->prev->next = elem;
        current->prev = elem; 
}

void insert_last(list_t** list, void* data)
{
        list_t*         current = *list;
        list_t*         elem;
        
        if(current != NULL)
        {
                printf("The list was Null");
                return;
        }
        
        elem = malloc(sizeof(list_t));
        elem->data = data;
        elem->next = current;
        elem->prev = current->prev;
        current->prev->next = elem;
        current->prev = elem;
}
void* fetch_data(list_t** list, int index)
{
        list_t*         current = *list;
        if(list == NULL)
        {
                printf("The list was NULL");
                return;
        }
        int i;
        for(i = 0; i<index; i++)
        {
                current = current->next;
        }
        return current->data;
}
/**
TODO temp for testing
*/
int main(){return;}