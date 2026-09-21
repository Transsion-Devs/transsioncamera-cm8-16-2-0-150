.class public final Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 49
    invoke-direct {p0}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final findResourceUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string p0, "nameStr"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget-object p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;->Companion:Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager$Companion;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager$Companion;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_10

    .line 57
    const-string p0, "asset://not_initialized"

    return-object p0

    .line 59
    :cond_10
    sget-object v0, Lbytekn/foundation/concurrent/clock/DefaultClock;->INSTANCE:Lbytekn/foundation/concurrent/clock/DefaultClock;

    invoke-virtual {v0}, Lbytekn/foundation/concurrent/clock/DefaultClock;->getCurrentTimeMillis()J

    move-result-wide v1

    .line 60
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager$Companion;->getInstance()Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;->getResourceFinder()Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder;

    move-result-object v3

    const/4 v4, 0x0

    .line 61
    invoke-virtual {v3, v4, p1, p2}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceFinder;->realFindResourceUri(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 62
    sget-boolean v3, Lcom/ss/ugc/effectplatform/algorithm/EnableCustomResourceFinder;->enabled:Z

    if-eqz v3, :cond_36

    const-string v3, "asset://not_found"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 63
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager$Companion;->getInstance()Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;->getCustomResourceFinder()Lcom/ss/ugc/effectplatform/algorithm/IResourceFinder;

    .line 67
    :cond_36
    sget-object p0, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findResourceUri name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", result: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", time cost: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lbytekn/foundation/concurrent/clock/DefaultClock;->getCurrentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " ms"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "checkEffect"

    invoke-virtual {p0, v0, p2}, Lbytekn/foundation/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public final modelNotFound(Ljava/lang/String;)V
    .registers 8

    const-string p0, "nameStr"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    sget-object v0, Lbytekn/foundation/logger/Logger;->INSTANCE:Lbytekn/foundation/logger/Logger;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modelNotFound:nameStr="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "ResourceFinder"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lbytekn/foundation/logger/Logger;->e$default(Lbytekn/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 74
    sget-object p0, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;->Companion:Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager$Companion;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager$Companion;->getInstance()Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmResourceManager;->getResourceFinder()Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder;

    move-result-object p0

    const-string v0, "asset://not_found"

    invoke-virtual {p0, p1, v0}, Lcom/ss/ugc/effectplatform/algorithm/AlgorithmModelResourceFinder;->onModelNotFound(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
