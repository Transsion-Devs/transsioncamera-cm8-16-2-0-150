.class public abstract Lcom/ss/ugc/effectplatform/algorithm/ModelsMappingConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final businessTag:Ljava/lang/String;

.field private final dataProcessor:Lkotlin/jvm/functions/Function1;

.field private final requestParams:Ljava/util/Map;

.field private final requestPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V
    .registers 6

    const-string v0, "requestPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataProcessor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "businessTag"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/algorithm/ModelsMappingConfig;->requestPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/algorithm/ModelsMappingConfig;->requestParams:Ljava/util/Map;

    iput-object p3, p0, Lcom/ss/ugc/effectplatform/algorithm/ModelsMappingConfig;->dataProcessor:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/ss/ugc/effectplatform/algorithm/ModelsMappingConfig;->businessTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getBusinessTag()Ljava/lang/String;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/algorithm/ModelsMappingConfig;->businessTag:Ljava/lang/String;

    return-object p0
.end method

.method public final getDataProcessor()Lkotlin/jvm/functions/Function1;
    .registers 1

    .line 8
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/algorithm/ModelsMappingConfig;->dataProcessor:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getRequestParams()Ljava/util/Map;
    .registers 1

    .line 7
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/algorithm/ModelsMappingConfig;->requestParams:Ljava/util/Map;

    return-object p0
.end method

.method public final getRequestPath()Ljava/lang/String;
    .registers 1

    .line 6
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/algorithm/ModelsMappingConfig;->requestPath:Ljava/lang/String;

    return-object p0
.end method
