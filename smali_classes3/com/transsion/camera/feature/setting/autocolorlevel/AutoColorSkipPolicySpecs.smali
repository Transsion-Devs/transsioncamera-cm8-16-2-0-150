.class public Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_COUNT_NO_SKIP:I = -0x1

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

.field private static final STAGE_1_LIMIT_MEM_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final STAGE_2_LIMIT_MEM_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ACL_Shot2ShotPolicy"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 27
    new-instance v0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs;->STAGE_2_LIMIT_MEM_MAP:Landroid/util/SparseArray;

    .line 36
    new-instance v0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs$2;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs$2;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs;->STAGE_1_LIMIT_MEM_MAP:Landroid/util/SparseArray;

    .line 48
    new-instance v0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs$3;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs$3;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs;->MAX_COUNT_PLATFORM_30:Landroid/util/SparseArray;

    .line 83
    new-instance v0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs$4;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs$4;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs;->MAX_COUNT_PLATFORM_20:Landroid/util/SparseArray;

    .line 118
    new-instance v0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs$5;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs$5;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs;->MAX_COUNT_PLATFORM_10:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chooseSpec(I)I
    .registers 8

    const/4 v0, -0x1

    .line 167
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x1e

    if-ne p0, v1, :cond_c

    .line 156
    sget-object p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs;->MAX_COUNT_PLATFORM_30:Landroid/util/SparseArray;

    goto :goto_15

    :cond_c
    const/16 v1, 0x14

    if-ne p0, v1, :cond_13

    .line 158
    sget-object p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs;->MAX_COUNT_PLATFORM_20:Landroid/util/SparseArray;

    goto :goto_15

    .line 160
    :cond_13
    sget-object p0, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs;->MAX_COUNT_PLATFORM_10:Landroid/util/SparseArray;

    .line 163
    :goto_15
    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getRam()I

    move-result v1

    .line 164
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getAvailableMemory()J

    move-result-wide v2

    .line 165
    sget-object v4, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chooseSpec memIndex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", availMem: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 167
    sget-object v4, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs;->STAGE_2_LIMIT_MEM_MAP:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_61

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_61

    const/16 v0, 0xca

    .line 169
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    .line 170
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 172
    :cond_61
    sget-object v4, Lcom/transsion/camera/feature/setting/autocolorlevel/AutoColorSkipPolicySpecs;->STAGE_1_LIMIT_MEM_MAP:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_87

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gez v0, :cond_87

    const/16 v0, 0xc9

    .line 174
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    .line 175
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_87
    const/16 v0, 0xc8

    .line 177
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    .line 178
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
