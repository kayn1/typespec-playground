import "@typespec/http";

import "../models/error.tsp";

using TypeSpec.Http;

model InternalServerReponse is Response<500>;

namespace Users {
    model UserNotFoundResponse {
        ...NotFoundResponse;
        ...Body<NotFoundError>;
    }

    model UserInternalServerErrorResponse {
        ...InternalServerReponse;
        ...Body<InternalServerError>;
    }
}
