.class public final Lcom/ss/ugc/effectplatform/model/LoadedModelList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ugc/effectplatform/model/LoadedModelList$ModelInfoState;
    }
.end annotation


# instance fields
.field private mLoadedModelInfos:Lbytekn/foundation/collections/SharedMutableMap;

.field private requirementModelInfoStateList:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/model/LoadedModelList;->requirementModelInfoStateList:Ljava/util/List;

    .line 22
    new-instance v0, Lbytekn/foundation/collections/SharedMutableMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lbytekn/foundation/collections/SharedMutableMap;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/ss/ugc/effectplatform/model/LoadedModelList;->mLoadedModelInfos:Lbytekn/foundation/collections/SharedMutableMap;

    return-void
.end method


# virtual methods
.method public final getDownloadUrl(Ljava/lang/String;)Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;
    .registers 4

    const-string v0, "modelName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/LoadedModelList;->requirementModelInfoStateList:Ljava/util/List;

    if-eqz p0, :cond_2a

    check-cast p0, Ljava/lang/Iterable;

    .line 1642
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/ugc/effectplatform/model/LoadedModelList$ModelInfoState;

    .line 27
    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/model/LoadedModelList$ModelInfoState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 28
    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/model/LoadedModelList$ModelInfoState;->getUrl()Lcom/ss/ugc/effectplatform/model/algorithm/ExtendedUrlModel;

    move-result-object p0

    return-object p0

    .line 31
    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modelName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t exist"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getModelInfoList()Ljava/util/Map;
    .registers 5

    .line 35
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/LoadedModelList;->mLoadedModelInfos:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-virtual {v0}, Lbytekn/foundation/collections/SharedMutableMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 36
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/LoadedModelList;->requirementModelInfoStateList:Ljava/util/List;

    if-eqz v0, :cond_30

    check-cast v0, Ljava/lang/Iterable;

    .line 1642
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/ugc/effectplatform/model/LoadedModelList$ModelInfoState;

    .line 37
    iget-object v2, p0, Lcom/ss/ugc/effectplatform/model/LoadedModelList;->mLoadedModelInfos:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/model/LoadedModelList$ModelInfoState;->getModelInfo()Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/model/LoadedModelList$ModelInfoState;->getModelInfo()Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lbytekn/foundation/collections/SharedMutableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 40
    :cond_30
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/LoadedModelList;->mLoadedModelInfos:Lbytekn/foundation/collections/SharedMutableMap;

    return-object p0
.end method

.method public final getRequirementModelInfoStateList()Ljava/util/List;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/LoadedModelList;->requirementModelInfoStateList:Ljava/util/List;

    return-object p0
.end method

.method public final setRequirementModelInfoStateList(Ljava/util/List;)V
    .registers 5

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/LoadedModelList;->requirementModelInfoStateList:Ljava/util/List;

    .line 16
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/LoadedModelList;->mLoadedModelInfos:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-virtual {v0}, Lbytekn/foundation/collections/SharedMutableMap;->clear()V

    .line 17
    check-cast p1, Ljava/lang/Iterable;

    .line 1642
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/ugc/effectplatform/model/LoadedModelList$ModelInfoState;

    .line 18
    iget-object v1, p0, Lcom/ss/ugc/effectplatform/model/LoadedModelList;->mLoadedModelInfos:Lbytekn/foundation/collections/SharedMutableMap;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/model/LoadedModelList$ModelInfoState;->getModelInfo()Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/model/LoadedModelList$ModelInfoState;->getModelInfo()Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    :cond_31
    return-void
.end method
