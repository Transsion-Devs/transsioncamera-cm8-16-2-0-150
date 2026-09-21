.class public final Lcom/imaging/libwatermark/ai_art/AIArtWatermarkFactoryKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final newAIArtWatermarkHelper(Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;)Lcom/imaging/libwatermark/ai_art/IAIArtWatermarkHelper;
    .registers 2

    const-string v0, "param"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkHelper;

    invoke-direct {v0, p0}, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkHelper;-><init>(Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;)V

    return-object v0
.end method

.method public static final newAIArtWatermarkHelper(Ljava/lang/String;Z)Lcom/imaging/libwatermark/ai_art/IAIArtWatermarkHelper;
    .registers 9

    const-string v0, "itemName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    const-string v0, "persist.sys.tran.device.name"

    const-string v1, "ro.product.marketname"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 13
    check-cast v2, Ljava/lang/String;

    .line 8
    invoke-static {v2, v3}, Lcom/transsion/hubsdk/api/os/TranSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 15
    :cond_38
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :cond_3d
    if-ge v2, v0, :cond_53

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_3d

    .line 8
    invoke-static {v5}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    if-ne v5, v6, :cond_3d

    goto :goto_54

    :cond_53
    const/4 v4, 0x0

    :goto_54
    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_59

    goto :goto_5a

    :cond_59
    move-object v3, v4

    .line 9
    :goto_5a
    new-instance v0, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;

    invoke-direct {v0, p0, p1, v3, v3}, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/imaging/libwatermark/ai_art/AIArtWatermarkFactoryKt;->newAIArtWatermarkHelper(Lcom/imaging/libwatermark/ai_art/AIArtWatermarkParam;)Lcom/imaging/libwatermark/ai_art/IAIArtWatermarkHelper;

    move-result-object p0

    return-object p0
.end method
