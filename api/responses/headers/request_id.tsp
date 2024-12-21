import "@typespec/http";

import "../../common/headers.tsp";

using TypeSpec.Http;

namespace Users {
    model ResponseRequestIdHeader extends IdHeader {}
}
