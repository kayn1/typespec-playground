import "@typespec/http";

using TypeSpec.Http;

namespace Users {
    model IdsQueryParam {
        @query
        ids?: UserID[];
    }
}
