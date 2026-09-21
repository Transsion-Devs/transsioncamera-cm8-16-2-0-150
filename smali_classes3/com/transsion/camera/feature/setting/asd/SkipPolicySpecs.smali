.class public Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LIMIT_MEM_INDEX:I = 0x2

.field private static final LIMIT_MEM_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOW_MEM_INDEX:I = 0x1

.field private static final LOW_MEM_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_COUNT_LIMIT_MEM:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_COUNT_LOW_MEM:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_COUNT_PLATFORM_10:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final MAX_COUNT_PLATFORM_20:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final MAX_COUNT_PLATFORM_20_AIRAW_LITE:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final MAX_COUNT_PLATFORM_30:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field static final PLATFORM_10:I = 0xa

.field static final PLATFORM_20:I = 0x14

.field static final PLATFORM_30:I = 0x1e

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static bridge synthetic -$$Nest$sfgetMAX_COUNT_LIMIT_MEM()Landroid/util/SparseArray;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs;->MAX_COUNT_LIMIT_MEM:Landroid/util/SparseArray;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetMAX_COUNT_LOW_MEM()Landroid/util/SparseArray;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs;->MAX_COUNT_LOW_MEM:Landroid/util/SparseArray;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 17
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Shot2ShotPolicy"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 28
    new-instance v0, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs;->LOW_MEM_MAP:Landroid/util/SparseArray;

    .line 38
    new-instance v0, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs$2;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs$2;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs;->LIMIT_MEM_MAP:Landroid/util/SparseArray;

    .line 55
    new-instance v0, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs$3;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs$3;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs;->MAX_COUNT_LOW_MEM:Landroid/util/SparseArray;

    .line 93
    new-instance v0, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs$4;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs$4;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs;->MAX_COUNT_LIMIT_MEM:Landroid/util/SparseArray;

    .line 123
    new-instance v0, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs$5;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs$5;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs;->MAX_COUNT_PLATFORM_10:Landroid/util/SparseArray;

    .line 170
    new-instance v0, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs$6;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs$6;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs;->MAX_COUNT_PLATFORM_20:Landroid/util/SparseArray;

    .line 217
    new-instance v0, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs$7;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs$7;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs;->MAX_COUNT_PLATFORM_20_AIRAW_LITE:Landroid/util/SparseArray;

    .line 264
    new-instance v0, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs$8;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs$8;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs;->MAX_COUNT_PLATFORM_30:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chooseSpec(IIZ)Landroid/util/SparseArray;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    .line 355
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xa

    if-ne p0, v1, :cond_c

    .line 342
    sget-object p0, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs;->MAX_COUNT_PLATFORM_10:Landroid/util/SparseArray;

    goto :goto_20

    :cond_c
    const/16 v1, 0x14

    if-ne p0, v1, :cond_15

    if-eqz p2, :cond_15

    .line 344
    sget-object p0, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs;->MAX_COUNT_PLATFORM_20_AIRAW_LITE:Landroid/util/SparseArray;

    goto :goto_20

    :cond_15
    if-ne p0, v1, :cond_1a

    .line 346
    sget-object p0, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs;->MAX_COUNT_PLATFORM_20:Landroid/util/SparseArray;

    goto :goto_20

    :cond_1a
    const/16 p2, 0x1e

    if-ne p0, p2, :cond_7f

    .line 348
    sget-object p0, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs;->MAX_COUNT_PLATFORM_30:Landroid/util/SparseArray;

    .line 353
    :goto_20
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getAvailableMemory()J

    move-result-wide v1

    .line 354
    sget-object p2, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chooseSpec memIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", availMem: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 355
    sget-object p2, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs;->LIMIT_MEM_MAP:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-lez p2, :cond_5d

    int-to-long v3, p2

    cmp-long p2, v1, v3

    if-gez p2, :cond_5d

    const/4 p1, 0x2

    .line 357
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    return-object p0

    .line 359
    :cond_5d
    sget-object p2, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs;->LOW_MEM_MAP:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-lez p2, :cond_78

    int-to-long v3, p2

    cmp-long p2, v1, v3

    if-gez p2, :cond_78

    const/4 p1, 0x1

    .line 361
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    return-object p0

    .line 363
    :cond_78
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    return-object p0

    :cond_7f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static overlayLowMemSpec([I)V
    .registers 5

    if-eqz p0, :cond_36

    .line 324
    array-length v0, p0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_7

    goto :goto_36

    .line 328
    :cond_7
    :goto_7
    array-length v0, p0

    if-ge v1, v0, :cond_1e

    add-int/lit8 v0, v1, -0x1

    .line 329
    aget v0, p0, v0

    .line 330
    aget v2, p0, v1

    if-ltz v2, :cond_1b

    .line 332
    sget-object v3, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs;->LOW_MEM_MAP:Landroid/util/SparseArray;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1b
    add-int/lit8 v1, v1, 0x2

    goto :goto_7

    .line 335
    :cond_1e
    sget-object p0, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "overlayLowMemSpec LOW_MEM_MAP: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/transsion/camera/feature/setting/asd/SkipPolicySpecs;->LOW_MEM_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_36
    :goto_36
    return-void
.end method
