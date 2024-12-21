import "@typespec/http";

import "../models/user.tsp";
import "./headers/request_id.tsp";
import "./headers/idempotency_key.tsp";

using TypeSpec.Http;

namespace Users {
    model UserCreateRequestBody {
        @body
        user: User;
    }

    model UserCreateRequest {
        ...RequestIdempotencyKeyHeader;
        ...RequestIdHeader;
    }
}
