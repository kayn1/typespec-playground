// ULID is a 26-character string that uses the characters 0-9 and A-Z.
@pattern("^[0-9a-zA-Z-]{26}$")
@minLength(26)
@maxLength(26)
@example("01JFGC9X1AZ49CYB89EHAET96K")
scalar ULID extends string;

// UUIDV5 is a 36-character string that uses the characters 0-9, A-Z, and hyphens.
@pattern("^[0-9a-zA-Z-]{36}$")
@minLength(36)
@maxLength(36)
@example("4be0643f-1d98-573b-97cd-ca98a65347dd")
scalar UUIDV5 extends string;
