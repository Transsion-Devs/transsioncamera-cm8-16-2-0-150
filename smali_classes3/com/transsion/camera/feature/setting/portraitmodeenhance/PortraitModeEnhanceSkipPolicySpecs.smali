.class public Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceSkipPolicySpecs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_COUNT_NO_SKIP:I = -0x1

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

    .line 18
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PME_Shot2ShotPolicy"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceSkipPolicySpecs;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 26
    new-instance v0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceSkipPolicySpecs$1;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceSkipPolicySpecs$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceSkipPolicySpecs;->STAGE_2_LIMIT_MEM_MAP:Landroid/util/SparseArray;

    .line 35
    new-instance v0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceSkipPolicySpecs$2;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceSkipPolicySpecs$2;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceSkipPolicySpecs;->STAGE_1_LIMIT_MEM_MAP:Landroid/util/SparseArray;

    .line 47
    new-instance v0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceSkipPolicySpecs$3;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceSkipPolicySpecs$3;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceSkipPolicySpecs;->MAX_COUNT_PLATFORM_30:Landroid/util/SparseArray;

    .line 82
    new-instance v0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceSkipPolicySpecs$4;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceSkipPolicySpecs$4;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceSkipPolicySpecs;->MAX_COUNT_PLATFORM_20:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chooseSpec(I)I
    .registers 8

    const/4 v0, -0x1

    .line 131
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1e

    if-ne p0, v2, :cond_c

    .line 120
    sget-object p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceSkipPolicySpecs;->MAX_COUNT_PLATFORM_30:Landroid/util/SparseArray;

    goto :goto_12

    :cond_c
    const/16 v2, 0x14

    if-ne p0, v2, :cond_97

    .line 122
    sget-object p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceSkipPolicySpecs;->MAX_COUNT_PLATFORM_20:Landroid/util/SparseArray;

    .line 127
    :goto_12
    invoke-static {}, Lcom/transsion/camera/utils/CameraUtil;->getRam()I

    move-result v0

    .line 128
    invoke-static {}, Lcom/transsion/camera/utils/MemoryUtils;->getAvailableMemory()J

    move-result-wide v2

    .line 129
    sget-object v4, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceSkipPolicySpecs;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chooseSpec memIndex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", availMem: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 131
    sget-object v4, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceSkipPolicySpecs;->STAGE_2_LIMIT_MEM_MAP:Landroid/util/SparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_5e

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_5e

    const/16 v1, 0xca

    .line 133
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    .line 134
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 136
    :cond_5e
    sget-object v4, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceSkipPolicySpecs;->STAGE_1_LIMIT_MEM_MAP:Landroid/util/SparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_84

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gez v1, :cond_84

    const/16 v1, 0xc9

    .line 138
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    .line 139
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_84
    const/16 v1, 0xc8

    .line 141
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    .line 142
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_97
    return v0
.end method
