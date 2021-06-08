#include <unistd.h>
#include <stdlib.h>
#include <strings.h>
#include <barvinok/util.h>
#include <barvinok/barvinok.h>

Polyhedron *Polyhedron_Read_A(unsigned MaxRays)
{
    int vertices = 0; 
    unsigned NbRows, NbColumns;
    Matrix *M;
    Polyhedron *P;
    char s[128];

    while (fgets(s, sizeof(s), stdin)) {
		if (*s == '#')
		    continue;
		if (strncasecmp(s, "vertices", sizeof("vertices")-1) == 0)
		    vertices = 1;
		if (sscanf(s, "%u %u", &NbRows, &NbColumns) == 2)
		    break;
    }
    if (feof(stdin))
		return NULL;
    M = Matrix_Alloc(NbRows,NbColumns);
    Matrix_Read_Input(M);
    if (vertices)
		P = Rays2Polyhedron(M, MaxRays);
    else
		P = Constraints2Polyhedron(M, MaxRays);
    Matrix_Free(M);
    return P;
}

int main(int argc, char **argv)
{
    Value cb;
    Polyhedron *A;
    struct barvinok_options *options = barvinok_options_new_with_defaults();

    //argc = barvinok_options_parse(options, argc, argv, ISL_ARG_ALL);

    A = Polyhedron_Read_A(options->MaxRays);
    value_init(cb);
    //Polyhedron_Print(stdout, P_VALUE_FMT, A);
    barvinok_count_with_options(A, &cb, options);
    //value_print(stdout, P_VALUE_FMT, cb);
    //puts("");
    FILE *file;
    file = fopen("tmp.out", "w");
    value_print(file, P_VALUE_FMT, cb);
    fclose(file);
    //printf("%d", cb.l);
    //if (options->print_stats)
		//barvinok_stats_print(options->stats, stdout);
    value_clear(cb);
    Polyhedron_Free(A);
    barvinok_options_free(options);
    return 0;
}

