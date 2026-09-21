.class public final Lcom/ss/ugc/effectplatform/model/algorithm/SingleAlgorithmModelResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private data:Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;


# direct methods
.method public constructor <init>(Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;)V
    .registers 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/algorithm/SingleAlgorithmModelResponse;->data:Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    return-void
.end method

.method public static synthetic copy$default(Lcom/ss/ugc/effectplatform/model/algorithm/SingleAlgorithmModelResponse;Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;ILjava/lang/Object;)Lcom/ss/ugc/effectplatform/model/algorithm/SingleAlgorithmModelResponse;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/ss/ugc/effectplatform/model/algorithm/SingleAlgorithmModelResponse;->data:Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    :cond_6
    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/model/algorithm/SingleAlgorithmModelResponse;->copy(Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;)Lcom/ss/ugc/effectplatform/model/algorithm/SingleAlgorithmModelResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;
    .registers 1

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/algorithm/SingleAlgorithmModelResponse;->data:Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    return-object p0
.end method

.method public final copy(Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;)Lcom/ss/ugc/effectplatform/model/algorithm/SingleAlgorithmModelResponse;
    .registers 2

    const-string p0, "data"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/ss/ugc/effectplatform/model/algorithm/SingleAlgorithmModelResponse;

    invoke-direct {p0, p1}, Lcom/ss/ugc/effectplatform/model/algorithm/SingleAlgorithmModelResponse;-><init>(Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p0, p1, :cond_15

    instance-of v0, p1, Lcom/ss/ugc/effectplatform/model/algorithm/SingleAlgorithmModelResponse;

    if-eqz v0, :cond_13

    check-cast p1, Lcom/ss/ugc/effectplatform/model/algorithm/SingleAlgorithmModelResponse;

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/algorithm/SingleAlgorithmModelResponse;->data:Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    iget-object p1, p1, Lcom/ss/ugc/effectplatform/model/algorithm/SingleAlgorithmModelResponse;->data:Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x1

    return p0
.end method

.method public final getData()Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;
    .registers 1

    .line 12
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/algorithm/SingleAlgorithmModelResponse;->data:Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/algorithm/SingleAlgorithmModelResponse;->data:Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public final setData(Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/algorithm/SingleAlgorithmModelResponse;->data:Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SingleAlgorithmModelResponse(data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/algorithm/SingleAlgorithmModelResponse;->data:Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
