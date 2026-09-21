.class public Lcom/ss/android/ttvecamera/hardware/TECameraBEWOProxy;
.super Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;
.source "SourceFile"


# static fields
.field public static final CAMERA_TYPE_MASTER:Ljava/lang/String; = "Master"

.field public static final CAMERA_TYPE_PERISCOPE:Ljava/lang/String; = "Periscope"

.field public static final CAMERA_TYPE_SAT:Ljava/lang/String; = "SAT"

.field public static final CAMERA_TYPE_TELE:Ljava/lang/String; = "Tele"

.field public static final CAMERA_TYPE_WIDE:Ljava/lang/String; = "Wide"

.field private static final TAG:Ljava/lang/String; = "TECameraBEWOProxy"

.field public static final VO_PHYSICAL_CAMERA_TYPES:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[B>;"
        }
    .end annotation
.end field

.field public static final VO_SAT_CURRENT_CAMERA_TYPE:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final VO_ZOOM_RATIO:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 44
    invoke-direct {p0, p1}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fillWideCameraID(ILandroid/hardware/camera2/CameraManager;)V
    .registers 3

    return-void
.end method

.method public getWideAngleID()Ljava/lang/String;
    .registers 1

    .line 87
    const-string p0, "Wide"

    return-object p0
.end method

.method public isSupportWideAngle()Z
    .registers 1

    .line 70
    invoke-super {p0}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->isSupportWideAngle()Z

    move-result p0

    return p0
.end method

.method public isSupportWideAngle(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .registers 2

    .line 81
    invoke-super {p0, p1}, Lcom/ss/android/ttvecamera/hardware/TECameraHardware2Proxy;->isSupportWideAngle(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method
