.class public Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;
.super Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TEFocusAndMeterStrategy"


# instance fields
.field private mManualFocusEngaged:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mNormalCallbackRequest:Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;


# direct methods
.method public constructor <init>(Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;)V
    .registers 2

    .line 30
    invoke-direct {p0}, Lcom/ss/android/ttvecamera/focusmanager/TEFocusStrategyBase;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;->mNormalCallbackRequest:Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;

    return-void
.end method

.method static synthetic access$000(Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;->mManualFocusEngaged:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;)Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;->mNormalCallbackRequest:Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;

    return-object p0
.end method


# virtual methods
.method public cancelFocus()I
    .registers 1

    .line 216
    iget-object p0, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;->mNormalCallbackRequest:Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;

    invoke-interface {p0}, Lcom/ss/android/ttvecamera/focusmanager/ITEFocusStrategy$NormalCallbackRequest;->rollbackNormalSessionRequest()I

    move-result p0

    return p0
.end method

.method public configFocus(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;)V
    .registers 6

    .line 36
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 37
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 38
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v1, Landroid/hardware/camera2/params/MeteringRectangle;

    const/16 v2, 0x3e7

    invoke-direct {v1, p2, v2}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    filled-new-array {v1}, [Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 40
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public configMeter(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;)V
    .registers 5

    .line 45
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/params/MeteringRectangle;

    const/16 v1, 0x3e7

    invoke-direct {v0, p2, v1}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    filled-new-array {v0}, [Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public enableCaf(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .registers 3

    .line 221
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 222
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public getFocusCaptureCallback(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/concurrent/atomic/AtomicBoolean;Z)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .registers 4

    .line 51
    iput-object p2, p0, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;->mManualFocusEngaged:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    new-instance p2, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$1;

    invoke-direct {p2, p0, p3, p1}, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$1;-><init>(Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-object p2
.end method

.method public getMeteringCaptureCallback(Landroid/hardware/camera2/CaptureRequest$Builder;Z)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .registers 3

    .line 179
    new-instance p1, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$2;

    invoke-direct {p1, p0, p2}, Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy$2;-><init>(Lcom/ss/android/ttvecamera/focusmanager/TEFocusAndMeterStrategy;Z)V

    return-object p1
.end method
