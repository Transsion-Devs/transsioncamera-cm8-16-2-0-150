.class public Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;
.super Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TEImageFocus"


# instance fields
.field private ifFinalize:Z

.field private mManualFocusEngaged:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mNormalCallbackRequest:Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;


# direct methods
.method public constructor <init>(Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;)V
    .registers 3

    .line 28
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;-><init>()V

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;->ifFinalize:Z

    .line 29
    iput-object p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;->mNormalCallbackRequest:Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;->mManualFocusEngaged:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;)Z
    .registers 1

    .line 21
    iget-boolean p0, p0, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;->ifFinalize:Z

    return p0
.end method

.method static synthetic access$102(Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;Z)Z
    .registers 2

    .line 21
    iput-boolean p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;->ifFinalize:Z

    return p1
.end method


# virtual methods
.method public cancelFocus()I
    .registers 1

    .line 192
    iget-object p0, p0, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;->mNormalCallbackRequest:Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;

    invoke-interface {p0}, Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;->rollbackNormalSessionRequest()I

    move-result p0

    return p0
.end method

.method public configMeter(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;)V
    .registers 5

    .line 35
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 37
    invoke-super {p0, p1, p2}, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;->configMeter(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;)V

    return-void
.end method

.method public enableCaf(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 186
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 187
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public getFocusCaptureCallback(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/concurrent/atomic/AtomicBoolean;Z)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .registers 4

    .line 42
    iput-object p2, p0, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;->mManualFocusEngaged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    new-instance p2, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$1;

    invoke-direct {p2, p0, p3, p1}, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$1;-><init>(Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-object p2
.end method

.method public getMeteringCaptureCallback(Landroid/hardware/camera2/CaptureRequest$Builder;Z)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .registers 3

    .line 150
    new-instance p1, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$2;

    invoke-direct {p1, p0, p2}, Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus$2;-><init>(Lcom/ss/android/ttvecamera/focusmanager/TEImageFocus;Z)V

    return-object p1
.end method
