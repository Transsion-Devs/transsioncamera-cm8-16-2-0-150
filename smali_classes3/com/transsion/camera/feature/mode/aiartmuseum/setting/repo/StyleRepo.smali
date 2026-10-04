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
.method public static synthetic $r8$lambda$Zs3Gbhfw2d4oa0scQgjC2e2xbJg(ZLjava/util/List;Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;)Z
    .registers 4

    if-nez p0, :cond_f

    .line 126
    const-string p0, "style_mondrian"

    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_1c

    :cond_f
    if-eqz p1, :cond_1e

    .line 129
    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1c

    goto :goto_1e

    :cond_1c
    :goto_1c
    const/4 p0, 0x0

    return p0

    :cond_1e
    :goto_1e
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$gV_ehIp88Ghlyn2EK-_x0t93rpU(ZLjava/util/List;Ljava/lang/String;)Z
    .registers 3

    if-nez p0, :cond_b

    .line 113
    const-string p0, "style_mondrian"

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_14

    :cond_b
    if-eqz p1, :cond_16

    .line 116
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto :goto_16

    :cond_14
    :goto_14
    const/4 p0, 0x0

    return p0

    :cond_16
    :goto_16
    const/4 p0, 0x1

    return p0
.end method

.method static constructor <clinit>()V
    .registers 14

    .line 38
    const-string v8, "style_frida_kahlo"

    const-string v9, "style_mondrian"

    const-string v0, "style_malevich"

    const-string v1, "style_monet"

    const-string v2, "style_picasso"

    const-string v3, "style_van_gogh"

    const-string v4, "style_anime"

    const-string v5, "style_glass"

    const-string v6, "style_tinga_tinga"

    const-string v7, "style_babylon"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/StyleRepo;->sValueList:Ljava/util/List;

    .line 56
    const-string v0, "style_tinga_tinga"

    const-string v1, "style_babylon"

    const-string v2, "style_frida_kahlo"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/StyleRepo;->sNewValueList:Ljava/util/List;

    .line 62
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

    new-instance v13, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;

    sget v0, Lcom/transsion/camera/feature/aiartmuseum/R$string;->ai_art_museum_style_mondrian:I

    sget v1, Lcom/transsion/camera/feature/aiartmuseum/R$drawable;->ai_art_museum_style_mondrian:I

    const-string v2, "style_mondrian"

    invoke-direct {v13, v2, v0, v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;-><init>(Ljava/lang/String;II)V

    filled-new-array/range {v4 .. v13}, [Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/StyleRepo;->sItemList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static itemList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;",
            ">;"
        }
    .end annotation

    .line 122
    invoke-static {}, Lcom/transsion/camera/app/common/ai/AIArtManager;->getInstance()Lcom/transsion/camera/app/common/ai/AIArtManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ai/AIArtManager;->removedTemplate()Ljava/util/List;

    move-result-object v0

    .line 123
    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/aiartmuseum/R$bool;->ai_art_style_mondrian_support:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 124
    sget-object v2, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/StyleRepo;->sItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/StyleRepo$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/StyleRepo$$ExternalSyntheticLambda0;-><init>(ZLjava/util/List;)V

    .line 125
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 131
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static valueList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 109
    invoke-static {}, Lcom/transsion/camera/app/common/ai/AIArtManager;->getInstance()Lcom/transsion/camera/app/common/ai/AIArtManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ai/AIArtManager;->removedTemplate()Ljava/util/List;

    move-result-object v0

    .line 110
    sget-object v1, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/aiartmuseum/R$bool;->ai_art_style_mondrian_support:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 111
    sget-object v2, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/StyleRepo;->sValueList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/StyleRepo$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/StyleRepo$$ExternalSyntheticLambda1;-><init>(ZLjava/util/List;)V

    .line 112
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 118
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
