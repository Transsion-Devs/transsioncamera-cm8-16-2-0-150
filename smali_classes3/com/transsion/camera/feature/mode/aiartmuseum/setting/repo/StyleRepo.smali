.class public Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/StyleRepo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final sItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final sNewValueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final sValueList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0xq_gUb2-w3iwM4w9wISzbY_vVQ(Ljava/util/List;Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;)Z
    .registers 2

    if-eqz p0, :cond_f

    .line 110
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$FhqSMn-Vvw7knY3mVKxUFm1aZjo(Ljava/util/List;Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_b

    .line 103
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method static constructor <clinit>()V
    .registers 13

    .line 34
    const-string v7, "style_babylon"

    const-string v8, "style_frida_kahlo"

    const-string v0, "style_malevich"

    const-string v1, "style_monet"

    const-string v2, "style_picasso"

    const-string v3, "style_van_gogh"

    const-string v4, "style_anime"

    const-string v5, "style_glass"

    const-string v6, "style_tinga_tinga"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/StyleRepo;->sValueList:Ljava/util/List;

    .line 51
    const-string v0, "style_tinga_tinga"

    const-string v1, "style_babylon"

    const-string v2, "style_frida_kahlo"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/StyleRepo;->sNewValueList:Ljava/util/List;

    .line 57
    new-instance v4, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;

    sget v3, Lcom/transsion/camera/feature/aiartmuseum/R$string;->ai_art_museum_style_geom_abstract:I

    sget v5, Lcom/transsion/camera/feature/aiartmuseum/R$drawable;->ai_art_museum_style_geom_abstract:I

    const-string v6, "style_malevich"

    invoke-direct {v4, v6, v3, v5}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;-><init>(Ljava/lang/String;II)V

    new-instance v5, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;

    sget v3, Lcom/transsion/camera/feature/aiartmuseum/R$string;->ai_art_museum_style_monet:I

    sget v6, Lcom/transsion/camera/feature/aiartmuseum/R$drawable;->ai_art_museum_style_monet:I

    const-string v7, "style_monet"

    invoke-direct {v5, v7, v3, v6}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;

    sget v3, Lcom/transsion/camera/feature/aiartmuseum/R$string;->ai_art_museum_style_picasso:I

    sget v7, Lcom/transsion/camera/feature/aiartmuseum/R$drawable;->ai_art_museum_style_picasso:I

    const-string v8, "style_picasso"

    invoke-direct {v6, v8, v3, v7}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;-><init>(Ljava/lang/String;II)V

    new-instance v7, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;

    sget v3, Lcom/transsion/camera/feature/aiartmuseum/R$string;->ai_art_museum_style_van_gogh:I

    sget v8, Lcom/transsion/camera/feature/aiartmuseum/R$drawable;->ai_art_museum_style_van_gogh:I

    const-string v9, "style_van_gogh"

    invoke-direct {v7, v9, v3, v8}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;

    sget v3, Lcom/transsion/camera/feature/aiartmuseum/R$string;->ai_art_museum_style_anime:I

    sget v9, Lcom/transsion/camera/feature/aiartmuseum/R$drawable;->ai_art_museum_style_anime:I

    const-string v10, "style_anime"

    invoke-direct {v8, v10, v3, v9}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;-><init>(Ljava/lang/String;II)V

    new-instance v9, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;

    sget v3, Lcom/transsion/camera/feature/aiartmuseum/R$string;->ai_art_museum_style_glass_art:I

    sget v10, Lcom/transsion/camera/feature/aiartmuseum/R$drawable;->ai_art_museum_style_glass_art:I

    const-string v11, "style_glass"

    invoke-direct {v9, v11, v3, v10}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;

    sget v3, Lcom/transsion/camera/feature/aiartmuseum/R$string;->ai_art_museum_style_tinga_tinga:I

    sget v11, Lcom/transsion/camera/feature/aiartmuseum/R$drawable;->ai_art_museum_style_tinga_tinga:I

    invoke-direct {v10, v0, v3, v11}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;-><init>(Ljava/lang/String;II)V

    new-instance v11, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;

    sget v0, Lcom/transsion/camera/feature/aiartmuseum/R$string;->ai_art_museum_style_babylon:I

    sget v3, Lcom/transsion/camera/feature/aiartmuseum/R$drawable;->ai_art_museum_style_babylon:I

    invoke-direct {v11, v1, v0, v3}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;-><init>(Ljava/lang/String;II)V

    new-instance v12, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;

    sget v0, Lcom/transsion/camera/feature/aiartmuseum/R$string;->ai_art_museum_style_frida_kahlo:I

    sget v1, Lcom/transsion/camera/feature/aiartmuseum/R$drawable;->ai_art_museum_style_frida_kahlo:I

    invoke-direct {v12, v2, v0, v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;-><init>(Ljava/lang/String;II)V

    filled-new-array/range {v4 .. v12}, [Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/StyleRepo;->sItemList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static itemList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;",
            ">;"
        }
    .end annotation

    .line 108
    invoke-static {}, Lcom/transsion/camera/app/common/ai/AIArtManager;->getInstance()Lcom/transsion/camera/app/common/ai/AIArtManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ai/AIArtManager;->removedTemplate()Ljava/util/List;

    move-result-object v0

    .line 109
    sget-object v1, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/StyleRepo;->sItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/StyleRepo$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/StyleRepo$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    .line 110
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 111
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static valueList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 101
    invoke-static {}, Lcom/transsion/camera/app/common/ai/AIArtManager;->getInstance()Lcom/transsion/camera/app/common/ai/AIArtManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ai/AIArtManager;->removedTemplate()Ljava/util/List;

    move-result-object v0

    .line 102
    sget-object v1, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/StyleRepo;->sValueList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/StyleRepo$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/StyleRepo$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    .line 103
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 104
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
