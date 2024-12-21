import "@typespec/http";

import "../models/user.tsp";
import "./headers/request_id.tsp";
import "./params/id.tsp";

using TypeSpec.Http;

namespace Users {
    model UserListRequest {
        ...RequestIdHeader;
        ...IdsQueryParam;
    }
}
