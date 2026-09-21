.class public final enum Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DualVideoRecordState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

.field public static final enum STATE_INIT:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

.field public static final enum STATE_PAUSED:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

.field public static final enum STATE_STARTED:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

.field public static final enum STATE_STOPING:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;
    .registers 4

    .line 42
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;->STATE_INIT:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    sget-object v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;->STATE_STARTED:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    sget-object v2, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;->STATE_PAUSED:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    sget-object v3, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;->STATE_STOPING:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    filled-new-array {v0, v1, v2, v3}, [Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 43
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    const-string v1, "STATE_INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;->STATE_INIT:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    .line 44
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    const-string v1, "STATE_STARTED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;->STATE_STARTED:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    .line 45
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    const-string v1, "STATE_PAUSED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;->STATE_PAUSED:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    .line 46
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    const-string v1, "STATE_STOPING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;->STATE_STOPING:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    .line 42
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;->$values()[Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;->$VALUES:[Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;
    .registers 2

    .line 42
    const-class v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;
    .registers 1

    .line 42
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;->$VALUES:[Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    invoke-virtual {v0}, [Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    return-object v0
.end method
