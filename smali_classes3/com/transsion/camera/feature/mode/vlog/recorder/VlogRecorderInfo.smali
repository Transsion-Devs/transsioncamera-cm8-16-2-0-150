.class public Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final COMMANDS:[Ljava/lang/String;

.field public static final VLOG_MSG_MAX:I = 0x9

.field public static final VLOG_MSG_MIN:I = 0x0

.field public static final VLOG_MSG_OPERATION_PREPARED:I = 0x1

.field public static final VLOG_MSG_PAUSE_RESUME:I = 0x3

.field public static final VLOG_MSG_PREPARE_VIDEO_SURFACE:I = 0x0

.field public static final VLOG_MSG_RELEASE:I = 0x8

.field public static final VLOG_MSG_SNAP_SHOT:I = 0x7

.field public static final VLOG_MSG_START_MEDIA_RECORDER:I = 0x5

.field public static final VLOG_MSG_START_STOP:I = 0x2

.field public static final VLOG_MSG_STOP:I = 0x4

.field public static final VLOG_MSG_STORAGE_UNMOUNTED:I = 0x6

.field public static final VLOG_MSG_UPDATE_MUTERECORDER:I = 0x9


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 26
    const-string v8, "releaseRecorder"

    const-string/jumbo v9, "updateMuteRecorder"

    const-string v0, "configRecorder"

    const-string v1, "operationPrepared"

    const-string v2, "startStop"

    const-string v3, "pauseResume"

    const-string v4, "stop"

    const-string v5, "startMediaRecorder"

    const-string v6, "storageUnMounted"

    const-string v7, "snapShot"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderInfo;->COMMANDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpCommand(ILcom/transsion/camera/utils/debug/Log$Tag;)Ljava/lang/String;
    .registers 4

    if-ltz p0, :cond_c

    const/16 v0, 0x9

    if-le p0, v0, :cond_7

    goto :goto_c

    .line 45
    :cond_7
    sget-object p1, Lcom/transsion/camera/feature/mode/vlog/recorder/VlogRecorderInfo;->COMMANDS:[Ljava/lang/String;

    aget-object p0, p1, p0

    return-object p0

    .line 41
    :cond_c
    :goto_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processMessage wrong command\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
