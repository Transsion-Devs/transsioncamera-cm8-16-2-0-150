.class final Lcom/ss/ugc/effectplatform/task/DefaultModelsMappingConfig$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ugc/effectplatform/task/DefaultModelsMappingConfig;-><init>(Lcom/ss/ugc/effectplatform/EffectConfig;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $businessId:I

.field final synthetic $config:Lcom/ss/ugc/effectplatform/EffectConfig;


# direct methods
.method constructor <init>(Lcom/ss/ugc/effectplatform/EffectConfig;I)V
    .registers 3

    iput-object p1, p0, Lcom/ss/ugc/effectplatform/task/DefaultModelsMappingConfig$1;->$config:Lcom/ss/ugc/effectplatform/EffectConfig;

    iput p2, p0, Lcom/ss/ugc/effectplatform/task/DefaultModelsMappingConfig$1;->$businessId:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    .line 108
    invoke-virtual {p0}, Lcom/ss/ugc/effectplatform/task/DefaultModelsMappingConfig$1;->invoke()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/util/Map;
    .registers 7

    .line 112
    iget-object v0, p0, Lcom/ss/ugc/effectplatform/task/DefaultModelsMappingConfig$1;->$config:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {v0}, Lcom/ss/ugc/effectplatform/EffectConfig;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_b

    goto :goto_c

    :cond_b
    move-object v0, v1

    :goto_c
    const-string v2, "sdk_version"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 113
    iget-object v3, p0, Lcom/ss/ugc/effectplatform/task/DefaultModelsMappingConfig$1;->$config:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {v3}, Lcom/ss/ugc/effectplatform/EffectConfig;->getDeviceType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1b

    goto :goto_1c

    :cond_1b
    move-object v3, v1

    :goto_1c
    const-string v4, "device_type"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    .line 114
    iget-object v4, p0, Lcom/ss/ugc/effectplatform/task/DefaultModelsMappingConfig$1;->$config:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {v4}, Lcom/ss/ugc/effectplatform/EffectConfig;->getModelFileEnv()Lcom/ss/ugc/effectplatform/EffectConfig$ModelFileEnv;

    move-result-object v4

    if-eqz v4, :cond_2b

    goto :goto_2d

    .line 115
    :cond_2b
    sget-object v4, Lcom/ss/ugc/effectplatform/EffectConfig$ModelFileEnv;->ONLINE:Lcom/ss/ugc/effectplatform/EffectConfig$ModelFileEnv;

    :goto_2d
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 114
    const-string v5, "status"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 116
    iget-object v5, p0, Lcom/ss/ugc/effectplatform/task/DefaultModelsMappingConfig$1;->$config:Lcom/ss/ugc/effectplatform/EffectConfig;

    invoke-virtual {v5}, Lcom/ss/ugc/effectplatform/EffectConfig;->getSdkVersion()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_44

    move-object v1, v5

    :cond_44
    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    filled-new-array {v0, v3, v4, v1}, [Lkotlin/Pair;

    move-result-object v0

    .line 111
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 118
    iget p0, p0, Lcom/ss/ugc/effectplatform/task/DefaultModelsMappingConfig$1;->$businessId:I

    if-lez p0, :cond_5d

    .line 119
    const-string v1, "busi_id"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5d
    return-object v0
.end method
