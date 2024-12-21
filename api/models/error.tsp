import "../types.tsp";

namespace Users {
    enum ErrorCode {
        BadRequest: 400,
        Unauthorized: 401,
        Forbidden: 403,
        NotFound: 404,
        InternalServerError: 500,
    }

    model Error<ErrorCode> {
        @doc("The error message")
        message: string;

        @doc("The error code")
        code: ErrorCode;
    }

    model NotFoundError extends Error<ErrorCode.NotFound> {
        code: ErrorCode.NotFound;

        @doc("Resource type")
        resource: "user";

        resource_id: ULID;
    }

    model InternalServerError extends Error<ErrorCode.InternalServerError> {
        code: ErrorCode.InternalServerError;
    }
}
