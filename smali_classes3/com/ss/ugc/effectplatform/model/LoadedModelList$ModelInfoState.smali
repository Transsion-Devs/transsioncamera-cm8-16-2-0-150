.class public final Lcom/ss/ugc/effectplatform/model/LoadedModelList$ModelInfoState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ugc/effectplatform/model/LoadedModelList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModelInfoState"
.end annotation


# instance fields
.field private modelInfo:Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;


# direct methods
.method public constructor <init>(Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;)V
    .registers 3

    const-string v0, "modelInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/LoadedModelList$ModelInfoState;->modelInfo:Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 2

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    if-eqz p1, :cond_11

    .line 62
    check-cast p1, Lcom/ss/ugc/effectplatform/model/LoadedModelList$ModelInfoState;

    .line 63
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/LoadedModelList$ModelInfoState;->modelInfo:Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    iget-object p1, p1, Lcom/ss/ugc/effectplatform/model/LoadedModelList$ModelInfoState;->modelInfo:Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 62
    :cond_11
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type com.ss.ugc.effectplatform.model.LoadedModelList.ModelInfoState"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getModelInfo()Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/LoadedModelList$ModelInfoState;->modelInfo:Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/LoadedModelList$ModelInfoState;->modelInfo:Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getUrl()Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/LoadedModelList$ModelInfoState;->modelInfo:Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getFile_url()Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 67
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/LoadedModelList$ModelInfoState;->modelInfo:Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
