import "@typespec/http";

import "../../common/headers.tsp";
import "../../types.tsp";

using TypeSpec.Http;

model ResponseIdempotencyKeyHeader extends IdempotencyKeyHeader {}
