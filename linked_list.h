typedef struct list_t list_t;
struct list_t{
        list_t* next;
        list_t* prev;
        void* data;
};

static list_t* myfree_list;

list_t* new_list(void* data);

void free_list(list_t** list);

void free_list_memory(void);

void insert_first(list_t** list, void* data);

void insert_last(list_t** list, void* data);

void* get_index(int index);