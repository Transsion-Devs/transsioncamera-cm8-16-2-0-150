.class abstract Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BaseIndicator"
.end annotation


# static fields
.field private static final sRegionAfricaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRegionOrderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sRegionPublicList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRegionSouthAsiaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRegionSoutheastAsiaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mIndicator:Ljava/lang/String;

.field private final mTitle:I


# direct methods
.method public static synthetic $r8$lambda$T-jnqLPMPnvdibqwFRz58-kNg8s(Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;Ljava/util/List;Ljava/lang/Integer;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;->lambda$buildItemList$0(Ljava/util/List;Ljava/lang/Integer;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmIndicator(Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;->mIndicator:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTitle(Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;->mTitle:I

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetsRegionAfricaList()Ljava/util/List;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;->sRegionAfricaList:Ljava/util/List;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsRegionPublicList()Ljava/util/List;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;->sRegionPublicList:Ljava/util/List;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsRegionSouthAsiaList()Ljava/util/List;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;->sRegionSouthAsiaList:Ljava/util/List;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsRegionSoutheastAsiaList()Ljava/util/List;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;->sRegionSoutheastAsiaList:Ljava/util/List;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x5

    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    .line 52
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    .line 53
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Integer;

    move-result-object v4

    .line 49
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sput-object v4, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;->sRegionAfricaList:Ljava/util/List;

    .line 60
    filled-new-array {v1, v2, v3, v0}, [Ljava/lang/Integer;

    move-result-object v4

    .line 56
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sput-object v4, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;->sRegionSouthAsiaList:Ljava/util/List;

    .line 67
    filled-new-array {v2, v1, v3, v0}, [Ljava/lang/Integer;

    move-result-object v4

    .line 63
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    sput-object v4, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;->sRegionSoutheastAsiaList:Ljava/util/List;

    .line 74
    filled-new-array {v3, v1, v2, v0}, [Ljava/lang/Integer;

    move-result-object v0

    .line 70
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;->sRegionPublicList:Ljava/util/List;

    .line 77
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;->sRegionOrderMap:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;->mIndicator:Ljava/lang/String;

    .line 92
    iput p2, p0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;->mTitle:I

    return-void
.end method

.method private synthetic lambda$buildItemList$0(Ljava/util/List;Ljava/lang/Integer;)V
    .registers 3

    .line 116
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;->getRegionList(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public buildItemList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;",
            ">;"
        }
    .end annotation

    .line 104
    sget v0, Lcom/transsion/camera/feature/mode/aigc/util/RegionUtil;->CURRENT_REGION:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_6

    const/4 v0, 0x1

    .line 109
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 111
    sget-object v2, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;->sRegionOrderMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v3, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;->sRegionPublicList:Ljava/util/List;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2a

    .line 112
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_2a

    .line 116
    :cond_22
    new-instance v2, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_2a
    :goto_2a
    return-object v1
.end method

.method public abstract getRegionList(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;",
            ">;"
        }
    .end annotation
.end method

.method public indicator()Ljava/lang/String;
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;->mIndicator:Ljava/lang/String;

    return-object p0
.end method

.method public title()I
    .registers 1

    .line 100
    iget p0, p0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$BaseIndicator;->mTitle:I

    return p0
.end method
