typedef struct stack_ stack_;

struct stack_{
        stack_* next;
        void* data;
};

stack_* new_stack(void* data);

void free_stack(stack_** stack);

void push(stack_** stack, void* data);

void* pop(stack_** stack);
