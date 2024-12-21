import "@typespec/http";
import "../../common/headers.tsp";

using TypeSpec.Http;

model RequestIdHeader extends IdHeader {}
