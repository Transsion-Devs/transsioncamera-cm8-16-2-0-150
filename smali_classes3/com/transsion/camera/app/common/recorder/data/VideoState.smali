.class public final enum Lcom/transsion/camera/app/common/recorder/data/VideoState;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/app/common/recorder/data/VideoState;

.field public static final enum STATE_PAUSED:Lcom/transsion/camera/app/common/recorder/data/VideoState;

.field public static final enum STATE_PREVIEW:Lcom/transsion/camera/app/common/recorder/data/VideoState;

.field public static final enum STATE_PREVIEWING:Lcom/transsion/camera/app/common/recorder/data/VideoState;

.field public static final enum STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/recorder/data/VideoState;

.field public static final enum STATE_PRE_SAVING:Lcom/transsion/camera/app/common/recorder/data/VideoState;

.field public static final enum STATE_RECORDING:Lcom/transsion/camera/app/common/recorder/data/VideoState;

.field public static final enum STATE_SAVING:Lcom/transsion/camera/app/common/recorder/data/VideoState;

.field public static final enum STATE_UNKNOWN:Lcom/transsion/camera/app/common/recorder/data/VideoState;


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/app/common/recorder/data/VideoState;
    .registers 8

    .line 16
    sget-object v0, Lcom/transsion/camera/app/common/recorder/data/VideoState;->STATE_UNKNOWN:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    sget-object v1, Lcom/transsion/camera/app/common/recorder/data/VideoState;->STATE_PREVIEWING:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    sget-object v2, Lcom/transsion/camera/app/common/recorder/data/VideoState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    sget-object v3, Lcom/transsion/camera/app/common/recorder/data/VideoState;->STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    sget-object v4, Lcom/transsion/camera/app/common/recorder/data/VideoState;->STATE_RECORDING:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    sget-object v5, Lcom/transsion/camera/app/common/recorder/data/VideoState;->STATE_PAUSED:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    sget-object v6, Lcom/transsion/camera/app/common/recorder/data/VideoState;->STATE_PRE_SAVING:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    sget-object v7, Lcom/transsion/camera/app/common/recorder/data/VideoState;->STATE_SAVING:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    filled-new-array/range {v0 .. v7}, [Lcom/transsion/camera/app/common/recorder/data/VideoState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 20
    new-instance v0, Lcom/transsion/camera/app/common/recorder/data/VideoState;

    const-string v1, "STATE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/recorder/data/VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/recorder/data/VideoState;->STATE_UNKNOWN:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    .line 25
    new-instance v0, Lcom/transsion/camera/app/common/recorder/data/VideoState;

    const-string v1, "STATE_PREVIEWING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/recorder/data/VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/recorder/data/VideoState;->STATE_PREVIEWING:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    .line 31
    new-instance v0, Lcom/transsion/camera/app/common/recorder/data/VideoState;

    const-string v1, "STATE_PREVIEW"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/recorder/data/VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/recorder/data/VideoState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    .line 36
    new-instance v0, Lcom/transsion/camera/app/common/recorder/data/VideoState;

    const-string v1, "STATE_PRE_RECORDING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/recorder/data/VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/recorder/data/VideoState;->STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    .line 42
    new-instance v0, Lcom/transsion/camera/app/common/recorder/data/VideoState;

    const-string v1, "STATE_RECORDING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/recorder/data/VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/recorder/data/VideoState;->STATE_RECORDING:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    .line 47
    new-instance v0, Lcom/transsion/camera/app/common/recorder/data/VideoState;

    const-string v1, "STATE_PAUSED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/recorder/data/VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/recorder/data/VideoState;->STATE_PAUSED:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    .line 53
    new-instance v0, Lcom/transsion/camera/app/common/recorder/data/VideoState;

    const-string v1, "STATE_PRE_SAVING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/recorder/data/VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/recorder/data/VideoState;->STATE_PRE_SAVING:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    .line 58
    new-instance v0, Lcom/transsion/camera/app/common/recorder/data/VideoState;

    const-string v1, "STATE_SAVING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/app/common/recorder/data/VideoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/app/common/recorder/data/VideoState;->STATE_SAVING:Lcom/transsion/camera/app/common/recorder/data/VideoState;

    .line 16
    invoke-static {}, Lcom/transsion/camera/app/common/recorder/data/VideoState;->$values()[Lcom/transsion/camera/app/common/recorder/data/VideoState;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/recorder/data/VideoState;->$VALUES:[Lcom/transsion/camera/app/common/recorder/data/VideoState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/app/common/recorder/data/VideoState;
    .registers 2

    .line 16
    const-class v0, Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/recorder/data/VideoState;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/app/common/recorder/data/VideoState;
    .registers 1

    .line 16
    sget-object v0, Lcom/transsion/camera/app/common/recorder/data/VideoState;->$VALUES:[Lcom/transsion/camera/app/common/recorder/data/VideoState;

    invoke-virtual {v0}, [Lcom/transsion/camera/app/common/recorder/data/VideoState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/app/common/recorder/data/VideoState;

    return-object v0
.end method
