.class final Lcom/ss/ugc/effectplatform/task/DefaultModelsMappingConfig$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ugc/effectplatform/task/DefaultModelsMappingConfig;-><init>(Lcom/ss/ugc/effectplatform/EffectConfig;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $config:Lcom/ss/ugc/effectplatform/EffectConfig;


# direct methods
.method constructor <init>(Lcom/ss/ugc/effectplatform/EffectConfig;)V
    .registers 2

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/DefaultModelsMappingConfig$2;->$config:Lcom/ss/ugc/effectplatform/EffectConfig;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 108
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ss/ugc/effectplatform/task/DefaultModelsMappingConfig$2;->invoke(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ljava/lang/String;)Ljava/util/List;
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_9b

    .line 125
    iget-object p0, p0, Lcom/ss/ugc/effectplatform/task/DefaultModelsMappingConfig$2;->$config:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/EffectConfig;->getJsonConverter()Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 9
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IJsonConverter;->getIJsonConverter()Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IAndroidJsonConverter;

    move-result-object p0

    const-class v1, Lcom/ss/ugc/effectplatform/model/net/DownloadableModelResponse;

    invoke-interface {p0, p1, v1}, Lcom/ss/ugc/effectplatform/bridge/jsonconverter/IAndroidJsonConverter;->convertJsonToObj(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/ugc/effectplatform/model/net/DownloadableModelResponse;

    goto :goto_19

    :cond_18
    move-object p0, v0

    :goto_19
    if-eqz p0, :cond_9b

    .line 127
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 128
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/DownloadableModelResponse;->getStatus_code()I

    move-result v0

    if-nez v0, :cond_7f

    .line 130
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/DownloadableModelResponse;->getData()Lcom/ss/ugc/effectplatform/model/net/DownloadableModelResponse$Data;

    move-result-object p0

    if-eqz p0, :cond_77

    .line 131
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/model/net/DownloadableModelResponse$Data;->getArithmetics()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_77

    .line 132
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_76

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 133
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_6e

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/ugc/effectplatform/model/algorithm/ModelInfo;

    .line 134
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 133
    :cond_6e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "modelInfo list is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_76
    return-object p1

    .line 138
    :cond_77
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "status_code == 0 but data == null, indicates there may be an internal server error"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 141
    :cond_7f
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status code == "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , indicates there is no model config from server"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9b
    return-object v0
.end method
