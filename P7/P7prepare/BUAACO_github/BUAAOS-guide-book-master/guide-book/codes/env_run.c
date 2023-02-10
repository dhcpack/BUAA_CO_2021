extern void env_pop_tf(struct Trapframe *tf, int id);
extern void lcontext(u_int contxt);

/* Overview:
 *  Restores the register values in the Trapframe with the
 *  env_pop_tf, and context switch from curenv to env e.
 *
 * Post-Condition:
 *  Set 'e' as the curenv running environment.
 *
 * Hints:
 *  You may use these functions:
 *      env_pop_tf and lcontext.
 */
void
env_run(struct Env *e)
{
    /*Step 1: save register state of curenv. */
    /* Hint: if there is a environment running,you should do
    *  context switch.You can imitate env_destroy() 's behaviors.*/


    /*Step 2: Set 'curenv' to the new environment. */


    /*Step 3: Use lcontext() to switch to its address space. */


    /*Step 4: Use env_pop_tf() to restore the environment's
     * environment registers and drop into user mode in the
     * the environment.
     */
    /* Hint: You should use GET_ENV_ASID there.Think why? */

}

