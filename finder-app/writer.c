#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <syslog.h>

int main(int argc, char** argv)
{
	openlog(NULL, 0, LOG_USER);
	if (argc != 3) 
	{
		syslog(LOG_ERR, "invalid number of args %d", argc);
		closelog();
		return 1;
	}

// writefile = argv[1]
// writestr = argv[2]

	FILE* fptr = fopen(argv[1], "w");
	if(fptr == NULL)
	{
		syslog(LOG_ERR, "file could not be opened.");
		closelog();
		return 1;
	}

	fwrite(argv[2], strlen(argv[2]), sizeof(char), fptr);
	syslog(LOG_DEBUG, "Writing %s to %s", argv[2], argv[1]);

	fclose(fptr);
	closelog();
	return 0;
}
