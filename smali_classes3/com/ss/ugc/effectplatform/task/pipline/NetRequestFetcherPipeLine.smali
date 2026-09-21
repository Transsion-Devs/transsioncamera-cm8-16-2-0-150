.class public final Lcom/ss/ugc/effectplatform/task/pipline/NetRequestFetcherPipeLine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbytekn/foundation/task/IPipeLine;


# instance fields
.field private final effectNetWorker:Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;


# direct methods
.method public constructor <init>(Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/pipline/NetRequestFetcherPipeLine;->effectNetWorker:Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;

    return-void
.end method


# virtual methods
.method public doJob(Lcom/ss/ugc/effectplatform/bridge/network/NetRequest;)Lcom/ss/ugc/effectplatform/bridge/network/NetResponse;
    .registers 3

    const-string v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/pipline/NetRequestFetcherPipeLine;->effectNetWorker:Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;

    if-eqz p0, :cond_24

    .line 19
    invoke-interface {p0, p1}, Lcom/ss/ugc/effectplatform/bridge/network/INetworkClient;->fetchFromNetwork(Lcom/ss/ugc/effectplatform/bridge/network/NetRequest;)Lcom/ss/ugc/effectplatform/bridge/network/NetResponse;

    move-result-object p0

    .line 20
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/bridge/network/NetResponse;->getStatusCode()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_16

    return-object p0

    .line 21
    :cond_16
    new-instance p1, Lcom/ss/ugc/effectplatform/exception/NetException;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/bridge/network/NetResponse;->getStatusCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/bridge/network/NetResponse;->getErrorMsg()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/ss/ugc/effectplatform/exception/NetException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 18
    :cond_24
    new-instance p0, Lcom/ss/ugc/effectplatform/exception/NetException;

    const/4 p1, 0x3

    const-string v0, "networker is null!"

    invoke-direct {p0, p1, v0}, Lcom/ss/ugc/effectplatform/exception/NetException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic doJob(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 15
    check-cast p1, Lcom/ss/ugc/effectplatform/bridge/network/NetRequest;

    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/task/pipline/NetRequestFetcherPipeLine;->doJob(Lcom/ss/ugc/effectplatform/bridge/network/NetRequest;)Lcom/ss/ugc/effectplatform/bridge/network/NetResponse;

    move-result-object p0

    return-object p0
.end method
