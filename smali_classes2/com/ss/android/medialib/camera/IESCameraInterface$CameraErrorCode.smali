.class public Lcom/ss/android/medialib/camera/IESCameraInterface$CameraErrorCode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/medialib/camera/IESCameraInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraErrorCode"
.end annotation


# static fields
.field public static final CAM1_ERROR_EVICTED:I = 0x2

.field public static final CAM1_ERROR_SERVER_DIED:I = 0x64

.field public static final CAM1_ERROR_UNKNOWN:I = 0x1

.field public static final CAM_DEVICE_ERROR:I = 0x4

.field public static final CAM_DISABLED:I = 0x3

.field public static final CAM_INVALID_PARAM:I = -0x2

.field public static final CAM_IN_USE:I = 0x1

.field public static final CAM_MAX_IN_USE:I = 0x2

.field public static final CAM_OK:I = 0x0

.field public static final CAM_SERVICE_ERROR:I = 0x5

.field public static final CAM_UNAUTHORIZED:I = -0x3

.field public static final CAM_UNKNOWN:I = -0x1

.field public static final CAM_UNSUPPORTED:I = -0x4


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
