.class public final enum Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/ttvecamera/TEVBoostInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VBoostCapabilityType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

.field public static final enum BUS_FREQ_MAX:Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

.field public static final enum BUS_FREQ_MIN:Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

.field public static final enum CPU_AFFINITY:Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

.field public static final enum CPU_CORE_MAX:Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

.field public static final enum CPU_CORE_MIN:Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

.field public static final enum CPU_FREQ_MAX:Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

.field public static final enum CPU_FREQ_MIN:Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

.field public static final enum GPU_FREQ_MAX:Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

.field public static final enum GPU_FREQ_MIN:Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

.field public static final enum IDLE_STATE:Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

.field public static final enum IO_PRELOAD:Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

.field public static final enum NETWORK_ENHANCE:Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

.field public static final enum PRESET_SCENE:Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

.field public static final enum TASK_PRIORITY:Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

.field public static final enum THUMB_FETCH:Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

.field public static final enum UFS_FREQ_MAX:Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

.field public static final enum UFS_FREQ_MIN:Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

.field public static final enum UNKNOWN:Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

.field public static final enum VIBRATE_ENHANCE:Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;


# direct methods
.method static constructor <clinit>()V
    .registers 21

    .line 13
    new-instance v1, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    const-string v0, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;->UNKNOWN:Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    .line 14
    new-instance v2, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    const-string v0, "CPU_FREQ_MIN"

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;->CPU_FREQ_MIN:Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    .line 15
    new-instance v3, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    const-string v0, "CPU_FREQ_MAX"

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;->CPU_FREQ_MAX:Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    .line 16
    new-instance v4, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    const-string v0, "CPU_CORE_MIN"

    const/4 v5, 0x3

    invoke-direct {v4, v0, v5}, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;->CPU_CORE_MIN:Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    .line 17
    new-instance v5, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    const-string v0, "CPU_CORE_MAX"

    const/4 v6, 0x4

    invoke-direct {v5, v0, v6}, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;->CPU_CORE_MAX:Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    .line 18
    new-instance v6, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    const-string v0, "GPU_FREQ_MIN"

    const/4 v7, 0x5

    invoke-direct {v6, v0, v7}, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;->GPU_FREQ_MIN:Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    .line 19
    new-instance v7, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    const-string v0, "GPU_FREQ_MAX"

    const/4 v8, 0x6

    invoke-direct {v7, v0, v8}, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;->GPU_FREQ_MAX:Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    .line 20
    new-instance v8, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    const-string v0, "BUS_FREQ_MIN"

    const/4 v9, 0x7

    invoke-direct {v8, v0, v9}, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;->BUS_FREQ_MIN:Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    .line 21
    new-instance v9, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    const-string v0, "BUS_FREQ_MAX"

    const/16 v10, 0x8

    invoke-direct {v9, v0, v10}, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;->BUS_FREQ_MAX:Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    .line 22
    new-instance v10, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    const-string v0, "UFS_FREQ_MIN"

    const/16 v11, 0x9

    invoke-direct {v10, v0, v11}, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;->UFS_FREQ_MIN:Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    .line 23
    new-instance v11, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    const-string v0, "UFS_FREQ_MAX"

    const/16 v12, 0xa

    invoke-direct {v11, v0, v12}, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;->UFS_FREQ_MAX:Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    .line 24
    new-instance v12, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    const-string v0, "TASK_PRIORITY"

    const/16 v13, 0xb

    invoke-direct {v12, v0, v13}, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;->TASK_PRIORITY:Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    .line 25
    new-instance v13, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    const-string v0, "CPU_AFFINITY"

    const/16 v14, 0xc

    invoke-direct {v13, v0, v14}, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;->CPU_AFFINITY:Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    .line 26
    new-instance v14, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    const-string v0, "IDLE_STATE"

    const/16 v15, 0xd

    invoke-direct {v14, v0, v15}, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;->IDLE_STATE:Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    .line 27
    new-instance v15, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    const-string v0, "IO_PRELOAD"

    move-object/from16 v16, v1

    const/16 v1, 0xe

    invoke-direct {v15, v0, v1}, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;->IO_PRELOAD:Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    .line 28
    new-instance v0, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    const-string v1, "NETWORK_ENHANCE"

    move-object/from16 v17, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;->NETWORK_ENHANCE:Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    .line 29
    new-instance v1, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    const-string v2, "PRESET_SCENE"

    move-object/from16 v18, v0

    const/16 v0, 0x10

    invoke-direct {v1, v2, v0}, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;->PRESET_SCENE:Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    .line 30
    new-instance v0, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    const-string v2, "THUMB_FETCH"

    move-object/from16 v19, v1

    const/16 v1, 0x11

    invoke-direct {v0, v2, v1}, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;->THUMB_FETCH:Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    .line 31
    new-instance v1, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    const-string v2, "VIBRATE_ENHANCE"

    move-object/from16 v20, v0

    const/16 v0, 0x12

    invoke-direct {v1, v2, v0}, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;->VIBRATE_ENHANCE:Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    move-object/from16 v2, v17

    move-object/from16 v17, v19

    move-object/from16 v19, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v20

    .line 12
    filled-new-array/range {v1 .. v19}, [Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    move-result-object v0

    sput-object v0, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;->$VALUES:[Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;
    .registers 2

    .line 12
    const-class v0, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    return-object p0
.end method

.method public static values()[Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;
    .registers 1

    .line 12
    sget-object v0, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;->$VALUES:[Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    invoke-virtual {v0}, [Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    return-object v0
.end method
