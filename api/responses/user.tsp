import "@typespec/http";

import "../models/user.tsp";
import "./headers/request_id.tsp";

using TypeSpec.Http;

namespace Users {
    model UserResponse {
        ...ResponseRequestIdHeader;
    }
}
