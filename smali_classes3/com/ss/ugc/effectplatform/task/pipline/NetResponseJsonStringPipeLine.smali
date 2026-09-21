.class public final Lcom/ss/ugc/effectplatform/task/pipline/NetResponseJsonStringPipeLine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbytekn/foundation/task/IPipeLine;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doJob(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 27
    check-cast p1, Lcom/ss/ugc/effectplatform/bridge/network/NetResponse;

    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/task/pipline/NetResponseJsonStringPipeLine;->doJob(Lcom/ss/ugc/effectplatform/bridge/network/NetResponse;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public doJob(Lcom/ss/ugc/effectplatform/bridge/network/NetResponse;)Ljava/lang/String;
    .registers 2

    const-string p0, "param"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lcom/ss/ugc/effectplatform/bridge/network/NetResponse;->getBodyStream()Lcom/ss/ugc/effectplatform/bridge/network/ByteReadStream;

    move-result-object p0

    invoke-static {p0}, Lcom/ss/ugc/effectplatform/extension/StreamExKt;->convertToString(Lcom/ss/ugc/effectplatform/bridge/network/ByteReadStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
