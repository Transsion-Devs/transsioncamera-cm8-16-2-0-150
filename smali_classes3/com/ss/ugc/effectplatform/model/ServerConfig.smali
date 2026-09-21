.class public final Lcom/ss/ugc/effectplatform/model/ServerConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private data:Ljava/util/List;

.field private loadedModelList:Lcom/ss/ugc/effectplatform/model/LoadedModelList;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/model/ServerConfig;->data:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final checkContent()V
    .registers 5

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 31
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/model/ServerConfig;->data:Ljava/util/List;

    if-eqz p0, :cond_5a

    .line 32
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    .line 33
    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5a

    .line 34
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 36
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    goto :goto_d

    .line 37
    :cond_36
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "model "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has different versions in ServerTable,Please modify the file to the correct format "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 40
    :cond_52
    invoke-virtual {v1}, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_5a
    return-void
.end method

.method public final getLoadedModelList()Lcom/ss/ugc/effectplatform/model/LoadedModelList;
    .registers 6

    .line 14
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/model/ServerConfig;->loadedModelList:Lcom/ss/ugc/effectplatform/model/LoadedModelList;

    if-eqz v0, :cond_5

    return-object v0

    .line 15
    :cond_5
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/ServerConfig;->checkContent()V

    .line 16
    new-instance v0, Lcom/ss/ugc/effectplatform/model/LoadedModelList;

    invoke-direct {v0}, Lcom/ss/ugc/effectplatform/model/LoadedModelList;-><init>()V

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iget-object v2, p0, Lcom/ss/ugc/effectplatform/model/ServerConfig;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    .line 19
    new-instance v4, Lcom/ss/ugc/effectplatform/model/LoadedModelList$ModelInfoState;

    invoke-direct {v4, v3}, Lcom/ss/ugc/effectplatform/model/LoadedModelList$ModelInfoState;-><init>(Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 21
    :cond_2d
    invoke-virtual {v0, v1}, Lcom/ss/ugc/effectplatform/model/LoadedModelList;->setRequirementModelInfoStateList(Ljava/util/List;)V

    .line 22
    iput-object v0, p0, Lcom/ss/ugc/effectplatform/model/ServerConfig;->loadedModelList:Lcom/ss/ugc/effectplatform/model/LoadedModelList;

    return-object v0
.end method
