import "@typespec/http";
import "@typespec/rest";
import "@typespec/openapi3";
import "@typespec/versioning";
import "@typespec/json-schema";

import "./api";

using TypeSpec.Http;
using TypeSpec.Rest;
using TypeSpec.Versioning;

using TypeSpec.JsonSchema;

@jsonSchema
@service({
    title: "Users service",
})
@server("https://users.com", "Server url")
@versioned(Versions)
namespace Users;
enum Versions {
    `2024-12-24`: "2024-12-24",
    `2024-12-25`: "2024-12-25",
}

@route("/users")
@tag("Users")
@doc("Users API")
interface Users {
    @get
    @doc("Get a list of users")
    users(...UserListRequest): UserListResponse;

    @get
    @doc("Get a user by ID")
    user(
        @path userID: UserID,
    ): UserResponse | UserNotFoundResponse | UserInternalServerErrorResponse;

    @post
    @doc("Create a user")
    createUser(@body user: UserCreateRequestBody, ...UserCreateRequest): User;
}
