.class public interface abstract Lcom/ss/android/medialib/camera/IESCameraInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/medialib/camera/IESCameraInterface$CameraPreviewListener;,
        Lcom/ss/android/medialib/camera/IESCameraInterface$FrameCallback;,
        Lcom/ss/android/medialib/camera/IESCameraInterface$CaptureListener;,
        Lcom/ss/android/medialib/camera/IESCameraInterface$PictureSize;,
        Lcom/ss/android/medialib/camera/IESCameraInterface$ShaderZoomListener;,
        Lcom/ss/android/medialib/camera/IESCameraInterface$ZoomListener;,
        Lcom/ss/android/medialib/camera/IESCameraInterface$CameraErrorCode;,
        Lcom/ss/android/medialib/camera/IESCameraInterface$CameraRatio;,
        Lcom/ss/android/medialib/camera/IESCameraInterface$FlashMode;
    }
.end annotation


# static fields
.field public static final CAMERA_1:I = 0x1

.field public static final CAMERA_2:I = 0x2

.field public static final CAMERA_BACK:I = 0x0

.field public static final CAMERA_BEWO:I = 0x5

.field public static final CAMERA_FRONT:I = 0x1

.field public static final CAMERA_GNOB:I = 0x4

.field public static final CAMERA_OGXM:I = 0x3

.field public static final CAMERA_WIDE_ANGLE:I = 0x2

.field public static final CameraHWLevelAndroid2VE:[I

.field public static final CameraHWLevelVE2Android:[I

.field public static final FLASH_AUTO:I = 0x3

.field public static final FLASH_OFF:I = 0x0

.field public static final FLASH_ON:I = 0x1

.field public static final FLASH_RED_EYE:I = 0x4

.field public static final FLASH_TORCH:I = 0x2

.field public static final HW_CHECK_LEVEL_3:I = 0x3

.field public static final HW_CHECK_LEVEL_FULL:I = 0x2

.field public static final HW_CHECK_LEVEL_LEGACY:I = 0x0

.field public static final HW_CHECK_LEVEL_LIMITED:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x3

    .line 52
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v4

    sput-object v4, Lcom/ss/android/medialib/camera/IESCameraInterface;->CameraHWLevelVE2Android:[I

    .line 53
    filled-new-array {v2, v0, v1, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/ss/android/medialib/camera/IESCameraInterface;->CameraHWLevelAndroid2VE:[I

    return-void
.end method


# virtual methods
.method public abstract cancelAutoFocus()V
.end method

.method public abstract changeCamera(ILcom/ss/android/medialib/camera/CameraOpenListener;)Z
.end method

.method public abstract close()V
.end method

.method public abstract currentValid()Z
.end method

.method public abstract enableTorch(Z)V
.end method

.method public abstract getCameraPosition()I
.end method

.method public abstract getImageFormat()I
.end method

.method public abstract getMaxZoom()F
.end method

.method public abstract getOrientationDegrees()I
.end method

.method public abstract getPreviewWH()[I
.end method

.method public abstract getShaderStep()F
.end method

.method public abstract getSupportedPreviewSizes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end method

.method public abstract init(Lcom/ss/android/medialib/camera/CameraParams;)V
.end method

.method public abstract initCameraParam()[I
.end method

.method public abstract isCapturing()Z
.end method

.method public abstract isTorchSupported()Z
.end method

.method public abstract isVideoStabilizationSupported()Z
.end method

.method public abstract open(ILcom/ss/android/medialib/camera/CameraOpenListener;)Z
.end method

.method public abstract release()V
.end method

.method public abstract setCameraPreviewListener(Lcom/ss/android/medialib/camera/IESCameraInterface$CameraPreviewListener;)V
.end method

.method public abstract setEnableAntiShake(Z)V
.end method

.method public abstract setFocusAreas(IIF[FI)Z
.end method

.method public abstract setFrameCallback(Lcom/ss/android/medialib/camera/IESCameraInterface$FrameCallback;)V
.end method

.method public abstract setOrientationDegrees(I)I
.end method

.method public abstract setPreviewRatio(F)V
.end method

.method public abstract setShaderZoomListener(Lcom/ss/android/medialib/camera/IESCameraInterface$ShaderZoomListener;)V
.end method

.method public abstract setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
.end method

.method public abstract setVideoStabilization(Z)Z
.end method

.method public abstract setZoom(F)V
.end method

.method public abstract setZoomListener(Lcom/ss/android/medialib/camera/IESCameraInterface$ZoomListener;)V
.end method

.method public abstract startPreview()V
.end method

.method public abstract startPreview(Landroid/graphics/SurfaceTexture;)V
.end method

.method public abstract startPreviewWithCallback()V
.end method

.method public abstract startZoom(F)V
.end method

.method public abstract stopPreview()V
.end method

.method public abstract stopZoom()V
.end method

.method public abstract switchFlashMode(I)Z
    .param p1    # I
        .annotation build Lcom/ss/android/medialib/camera/IESCameraInterface$FlashMode;
        .end annotation
    .end param
.end method

.method public abstract takePicture(IILcom/ss/android/medialib/camera/IESCameraInterface$CaptureListener;)V
.end method
