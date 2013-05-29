typedef struct stack_t stack_t;

typedef struct stack_t{
        stack_t* next;
        void* data;
}

void new_stack(void* data);
void free_stack(stack_t** stack);
void push(void* data);
void* pop();
void* top()