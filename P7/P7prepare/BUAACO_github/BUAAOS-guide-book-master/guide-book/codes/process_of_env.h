struct Env {
    struct Trapframe env_tf;        // Saved registers
    LIST_ENTRY(Env) env_link;       // Free LIST_ENTRY
    u_int env_id;                   // Unique environment identifier
    u_int env_parent_id;            // env_id of this env's parent
    u_int env_status;               // Status of the environment
    Pde  *env_pgdir;                // Kernel virtual address of page dir
    u_int env_cr3;
};
