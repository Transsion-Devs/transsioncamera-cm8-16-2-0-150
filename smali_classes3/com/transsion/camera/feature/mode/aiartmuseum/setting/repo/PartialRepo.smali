.class public Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/PartialRepo;
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
.method public static synthetic $r8$lambda$ugMG2FWZdv8vpf62Ty_QTkU5kh0(Ljava/util/List;Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_b

    .line 71
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

.method public static synthetic $r8$lambda$xNGZGNf4wXnsnsduprUrzmlmvtE(Ljava/util/List;Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;)Z
    .registers 2

    if-eqz p0, :cond_f

    .line 78
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

.method static constructor <clinit>()V
    .registers 6

    .line 28
    const-string v0, "partial_indonesian_batik"

    const-string v1, "partial_khokhloma_gold_patterned"

    const-string v2, "partial_painted_tattoo"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/PartialRepo;->sValueList:Ljava/util/List;

    .line 40
    new-instance v3, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;

    sget v4, Lcom/transsion/camera/feature/aiartmuseum/R$string;->ai_art_museum_partial_batik:I

    sget v5, Lcom/transsion/camera/feature/aiartmuseum/R$drawable;->ai_art_museum_partial_batik:I

    invoke-direct {v3, v0, v4, v5}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;-><init>(Ljava/lang/String;II)V

    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;

    sget v4, Lcom/transsion/camera/feature/aiartmuseum/R$string;->ai_art_museum_partial_khokhloma_cloth:I

    sget v5, Lcom/transsion/camera/feature/aiartmuseum/R$drawable;->ai_art_museum_partial_khokhloma_cloth:I

    invoke-direct {v0, v1, v4, v5}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;

    sget v4, Lcom/transsion/camera/feature/aiartmuseum/R$string;->ai_art_museum_partial_ocean_ink:I

    sget v5, Lcom/transsion/camera/feature/aiartmuseum/R$drawable;->ai_art_museum_partial_ocean_ink:I

    invoke-direct {v1, v2, v4, v5}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;-><init>(Ljava/lang/String;II)V

    filled-new-array {v3, v0, v1}, [Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/PartialRepo;->sItemList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
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

    .line 76
    invoke-static {}, Lcom/transsion/camera/app/common/ai/AIArtManager;->getInstance()Lcom/transsion/camera/app/common/ai/AIArtManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ai/AIArtManager;->removedTemplate()Ljava/util/List;

    move-result-object v0

    .line 77
    sget-object v1, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/PartialRepo;->sItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/PartialRepo$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/PartialRepo$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    .line 78
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 79
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

    .line 69
    invoke-static {}, Lcom/transsion/camera/app/common/ai/AIArtManager;->getInstance()Lcom/transsion/camera/app/common/ai/AIArtManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ai/AIArtManager;->removedTemplate()Ljava/util/List;

    move-result-object v0

    .line 70
    sget-object v1, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/PartialRepo;->sValueList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/PartialRepo$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/repo/PartialRepo$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    .line 71
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 72
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
