import "@typespec/http";

import "../models/user.tsp";
import "./headers/request_id.tsp";
import "./headers/idempotency_key.tsp";

using TypeSpec.Http;

namespace Users {
    model UserListResponse {
        ...OkResponse;
        ...Body<User[]>;
    }
}
