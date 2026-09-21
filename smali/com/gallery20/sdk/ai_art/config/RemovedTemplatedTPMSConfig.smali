.class public final Lcom/gallery20/sdk/ai_art/config/RemovedTemplatedTPMSConfig;
.super Lcom/gallery20/sdk/ai_art/config/TPMSConfig;
.source "SourceFile"


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 93
    const-string v0, "os_gallery_ai_art_removed_template"

    invoke-direct {p0, v0}, Lcom/gallery20/sdk/ai_art/config/TPMSConfig;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/gallery20/sdk/ai_art/config/TPMSConfig;->getJson()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "list"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_17

    # invokes: Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->toStringList(Lorg/json/JSONArray;)Ljava/util/List;
    invoke-static {v0}, Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->access$toStringList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1b

    :cond_17
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 97
    :cond_1b
    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 98
    # invokes: Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->getModrianSupprot()Z
    invoke-static {}, Lcom/gallery20/sdk/ai_art/config/AIArtConfigKt;->access$getModrianSupprot()Z

    move-result v1

    const-string v2, "style_mondrian"

    if-nez v1, :cond_2c

    .line 99
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_2c
    invoke-static {}, Lcom/gallery20/sdk/ai_art/ext/CommonExtKt;->isEE1()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 102
    const-string v1, "style_babylon"

    const-string v3, "style_frida_kahlo"

    const-string v4, "style_tinga_tinga"

    filled-new-array {v4, v1, v3, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 104
    :cond_45
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 95
    iput-object v0, p0, Lcom/gallery20/sdk/ai_art/config/RemovedTemplatedTPMSConfig;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object p0, p0, Lcom/gallery20/sdk/ai_art/config/RemovedTemplatedTPMSConfig;->list:Ljava/util/List;

    return-object p0
.end method
