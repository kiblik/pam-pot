all: pam_pot.so

pam_pot.so: pam_pot.so
    gcc -shared -o pam_pot.so pam_pot.o -lpam

pam_pot.o: pam_pot.c
    gcc -fPIC -c pam_pot.c

clean:
    rm -rf pam_pot.o pam_pot.so
