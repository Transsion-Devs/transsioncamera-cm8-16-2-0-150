.class public final Lcom/ss/ugc/effectplatform/algorithm/ModelInfoCache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private localModelInfo:Lcom/ss/ugc/effectplatform/model/LocalModelInfo;

.field private serverModelInfo:Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;


# direct methods
.method public constructor <init>(Lcom/ss/ugc/effectplatform/model/LocalModelInfo;Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;)V
    .registers 4

    const-string v0, "localModelInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverModelInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/algorithm/ModelInfoCache;->localModelInfo:Lcom/ss/ugc/effectplatform/model/LocalModelInfo;

    iput-object p2, p0, Lcom/ss/ugc/effectplatform/algorithm/ModelInfoCache;->serverModelInfo:Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_1f

    instance-of v0, p1, Lcom/ss/ugc/effectplatform/algorithm/ModelInfoCache;

    if-eqz v0, :cond_1d

    check-cast p1, Lcom/ss/ugc/effectplatform/algorithm/ModelInfoCache;

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/algorithm/ModelInfoCache;->localModelInfo:Lcom/ss/ugc/effectplatform/model/LocalModelInfo;

    iget-object v1, p1, Lcom/ss/ugc/effectplatform/algorithm/ModelInfoCache;->localModelInfo:Lcom/ss/ugc/effectplatform/model/LocalModelInfo;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/algorithm/ModelInfoCache;->serverModelInfo:Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    iget-object p1, p1, Lcom/ss/ugc/effectplatform/algorithm/ModelInfoCache;->serverModelInfo:Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    return p0

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    return p0
.end method

.method public final getLocalModelInfo()Lcom/ss/ugc/effectplatform/model/LocalModelInfo;
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/algorithm/ModelInfoCache;->localModelInfo:Lcom/ss/ugc/effectplatform/model/LocalModelInfo;

    return-object p0
.end method

.method public final getServerModelInfo()Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;
    .registers 1

    .line 146
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/algorithm/ModelInfoCache;->serverModelInfo:Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/ss/ugc/effectplatform/algorithm/ModelInfoCache;->localModelInfo:Lcom/ss/ugc/effectplatform/model/LocalModelInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/algorithm/ModelInfoCache;->serverModelInfo:Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_15
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModelInfoCache(localModelInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/ugc/effectplatform/algorithm/ModelInfoCache;->localModelInfo:Lcom/ss/ugc/effectplatform/model/LocalModelInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", serverModelInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/algorithm/ModelInfoCache;->serverModelInfo:Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
