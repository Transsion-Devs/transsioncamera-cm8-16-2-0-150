.class public abstract Lcom/transsion/camera/utils/CameraConstant;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TP_PICTURE_FPS_SUPPORT_LIST:[Ljava/lang/String;

.field public static final TP_PICTURE_SIZE_SUPPORT_LIST:[Ljava/lang/String;

.field public static final UNSUPPORTZOOMINGMAP:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 138
    const-string v0, "1920x1080"

    const-string v1, "1280x720"

    const-string v2, "3840x2160"

    const-string v3, "2560x1440"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/CameraConstant;->TP_PICTURE_SIZE_SUPPORT_LIST:[Ljava/lang/String;

    .line 139
    const-string v0, "1080P/30fps"

    const-string v1, "720P/30fps"

    const-string v2, "4K/30fps"

    const-string v3, "2K/30fps"

    filled-new-array {v2, v3, v0, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/CameraConstant;->TP_PICTURE_FPS_SUPPORT_LIST:[Ljava/lang/String;

    .line 202
    new-instance v0, Lcom/transsion/camera/utils/CameraConstant$1;

    invoke-direct {v0}, Lcom/transsion/camera/utils/CameraConstant$1;-><init>()V

    sput-object v0, Lcom/transsion/camera/utils/CameraConstant;->UNSUPPORTZOOMINGMAP:Ljava/util/HashMap;

    return-void
.end method
