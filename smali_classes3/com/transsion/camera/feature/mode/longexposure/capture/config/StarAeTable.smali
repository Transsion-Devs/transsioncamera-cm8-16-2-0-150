.class public Lcom/transsion/camera/feature/mode/longexposure/capture/config/StarAeTable;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final mParamMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$9AhPbf-FDQ7w2Iel95P26FY8hOA(ILjava/util/Map$Entry;)Z
    .registers 3

    .line 75
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Range;

    .line 76
    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le p0, v0, :cond_20

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gt p0, p1, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$i4zIcORdwgSb6DkKeb-vP8KcX3E(ILjava/util/Map$Entry;)Z
    .registers 3

    .line 66
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Range;

    .line 67
    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le p0, v0, :cond_20

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gt p0, p1, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 23
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/capture/config/StarAeTable$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/config/StarAeTable$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/longexposure/capture/config/StarAeTable;->mParamMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParam(II)Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;
    .registers 4

    .line 62
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/capture/config/StarAeTable;->mParamMap:Ljava/util/Map;

    .line 63
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 64
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/longexposure/capture/config/StarAeTable$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/longexposure/capture/config/StarAeTable$$ExternalSyntheticLambda0;-><init>(I)V

    .line 65
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 69
    invoke-interface {p0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/capture/config/LightPaintingAeTable$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/config/LightPaintingAeTable$$ExternalSyntheticLambda1;-><init>()V

    .line 70
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/capture/config/LightPaintingAeTable$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/longexposure/capture/config/LightPaintingAeTable$$ExternalSyntheticLambda2;-><init>()V

    .line 71
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 72
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 73
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/capture/config/StarAeTable$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/longexposure/capture/config/StarAeTable$$ExternalSyntheticLambda1;-><init>(I)V

    .line 74
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 78
    invoke-interface {p0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/transsion/camera/feature/mode/longexposure/capture/config/LightPaintingAeTable$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcom/transsion/camera/feature/mode/longexposure/capture/config/LightPaintingAeTable$$ExternalSyntheticLambda5;-><init>()V

    .line 79
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    .line 80
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/longexposure/capture/param/ConfigParam;

    return-object p0
.end method
