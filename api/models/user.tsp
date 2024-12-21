namespace Users {
    @doc("A user represents a person who uses the application.")
    model User {
        user_id: UserID;

        @doc("The user's name")
        @minLength(2)
        @example("Alice")
        name: string;

        @doc("The user's email address")
        @minLength(4)
        @example("daniel.wojnar@users.moc")
        email: Email;

        @doc("The user's creation date and time")
        @example(utcDateTime.fromISO("2024-12-24T00:00:00Z"))
        created_at: utcDateTime;
    }

    scalar UserID extends ULID;

    @pattern("[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}")
    scalar Email extends string;
}
