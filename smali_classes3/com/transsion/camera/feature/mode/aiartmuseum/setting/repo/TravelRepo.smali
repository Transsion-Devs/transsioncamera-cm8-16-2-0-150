.class public Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/TravelRepo;
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
.method public static synthetic $r8$lambda$JE0dk9WHnv4pjzC_7LIE1kcqxk4(Ljava/util/List;Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;)Z
    .registers 2

    if-eqz p0, :cond_f

    .line 80
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

.method public static synthetic $r8$lambda$PAcIpkhZY37Z54bcxaJEh-ZiFuI(Ljava/util/List;Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_b

    .line 73
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
    .registers 8

    .line 30
    const-string/jumbo v0, "travel_volcano"

    const-string/jumbo v1, "travel_taj_mahal"

    const-string/jumbo v2, "travel_penida"

    const-string/jumbo v3, "travel_kremlin"

    const-string/jumbo v4, "travel_sun_temple"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    sput-object v5, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/TravelRepo;->sValueList:Ljava/util/List;

    .line 42
    new-instance v5, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;

    sget v6, Lcom/transsion/camera/feature/aiartmuseum/R$string;->ai_art_museum_travel_volcano:I

    sget v7, Lcom/transsion/camera/feature/aiartmuseum/R$drawable;->ai_art_museum_travel_volcano:I

    invoke-direct {v5, v0, v6, v7}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;

    sget v6, Lcom/transsion/camera/feature/aiartmuseum/R$string;->ai_art_museum_travel_moon_mausoleum:I

    sget v7, Lcom/transsion/camera/feature/aiartmuseum/R$drawable;->ai_art_museum_travel_moon_mausoleum:I

    invoke-direct {v0, v1, v6, v7}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;

    sget v6, Lcom/transsion/camera/feature/aiartmuseum/R$string;->ai_art_museum_travel_isle:I

    sget v7, Lcom/transsion/camera/feature/aiartmuseum/R$drawable;->ai_art_museum_travel_isle:I

    invoke-direct {v1, v2, v6, v7}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;

    sget v6, Lcom/transsion/camera/feature/aiartmuseum/R$string;->ai_art_museum_travel_kremlin_style:I

    sget v7, Lcom/transsion/camera/feature/aiartmuseum/R$drawable;->ai_art_museum_travel_kremlin_style:I

    invoke-direct {v2, v3, v6, v7}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;

    sget v6, Lcom/transsion/camera/feature/aiartmuseum/R$string;->ai_art_museum_travel_temple:I

    sget v7, Lcom/transsion/camera/feature/aiartmuseum/R$drawable;->ai_art_museum_travel_temple:I

    invoke-direct {v3, v4, v6, v7}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;-><init>(Ljava/lang/String;II)V

    filled-new-array {v5, v0, v1, v2, v3}, [Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/TravelRepo;->sItemList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 28
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

    .line 78
    invoke-static {}, Lcom/transsion/camera/app/common/ai/AIArtManager;->getInstance()Lcom/transsion/camera/app/common/ai/AIArtManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ai/AIArtManager;->removedTemplate()Ljava/util/List;

    move-result-object v0

    .line 79
    sget-object v1, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/TravelRepo;->sItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/TravelRepo$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/TravelRepo$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    .line 80
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 81
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

    .line 71
    invoke-static {}, Lcom/transsion/camera/app/common/ai/AIArtManager;->getInstance()Lcom/transsion/camera/app/common/ai/AIArtManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ai/AIArtManager;->removedTemplate()Ljava/util/List;

    move-result-object v0

    .line 72
    sget-object v1, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/TravelRepo;->sValueList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/TravelRepo$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/TravelRepo$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    .line 73
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 74
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
