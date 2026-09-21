.class Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$1;
.super Lcom/transsion/campostalgo/ICamPostAlgoCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->startPostAlgo(Landroid/view/Surface;Landroid/util/Size;Landroid/util/Size;Ljava/util/List;Landroid/util/Size;III)[Lcom/transsion/camera/app/common/mode/SurfaceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;


# direct methods
.method public static synthetic $r8$lambda$QDUEL2qVKXt0G5SRxhsrYYpnwvE(Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$1;ZLcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$1;->lambda$onNextCapture$0(ZLcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$1;->this$0:Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;

    invoke-direct {p0}, Lcom/transsion/campostalgo/ICamPostAlgoCallback$Stub;-><init>()V

    return-void
.end method

.method private synthetic lambda$onNextCapture$0(ZLcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;
    .registers 5

    if-nez p2, :cond_7

    .line 113
    new-instance p2, Lcom/transsion/camera/adapter/NullCameraCaptureState;

    invoke-direct {p2}, Lcom/transsion/camera/adapter/NullCameraCaptureState;-><init>()V

    .line 115
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$1;->this$0:Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;

    new-instance v1, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;

    invoke-direct {v1, p2}, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;-><init>(Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    .line 119
    filled-new-array {p1, p1, p1}, [I

    move-result-object p1

    .line 116
    invoke-virtual {v1, p1}, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->setCusDeferRequestMode([I)Lcom/transsion/camera/adapter/CameraCaptureState$Builder;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraCaptureState$Builder;->build()Lcom/transsion/camera/adapter/CameraCaptureState;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->-$$Nest$fputmCameraCaptureState(Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;Lcom/transsion/camera/adapter/CameraCaptureState;)V

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$1;->this$0:Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;

    invoke-static {p0}, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->-$$Nest$fgetmCameraCaptureState(Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;)Lcom/transsion/camera/adapter/CameraCaptureState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onNextCapture(I)V
    .registers 5

    .line 101
    invoke-static {}, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNextCapture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mReceiveFraming = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$1;->this$0:Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;

    invoke-static {v2}, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->-$$Nest$fgetmReceiveFraming(Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$1;->this$0:Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;

    invoke-static {v0}, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->-$$Nest$fgetmReceiveFraming(Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;)Z

    move-result v0

    if-nez v0, :cond_31

    if-nez p1, :cond_31

    goto :goto_8f

    .line 105
    :cond_31
    iget-object v0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$1;->this$0:Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->-$$Nest$fputmReceiveFraming(Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;Z)V

    if-nez p1, :cond_3f

    .line 107
    iget-object p0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$1;->this$0:Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;

    invoke-static {p0}, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->-$$Nest$mresetCaptureState(Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;)V

    return-void

    :cond_3f
    const/4 v0, 0x2

    if-ne p1, v0, :cond_43

    const/4 v1, 0x1

    .line 111
    :cond_43
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$1$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$1;Z)V

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->onCaptureProgressed(Ljava/util/function/UnaryOperator;)V

    .line 124
    iget-object p1, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$1;->this$0:Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;

    invoke-static {p1}, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->-$$Nest$fgetmShot2ShotCallback(Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;)Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    move-result-object p1

    if-eqz p1, :cond_66

    .line 125
    iget-object p1, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$1;->this$0:Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;

    invoke-static {p1}, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->-$$Nest$fgetmShot2ShotCallback(Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;)Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$1;->this$0:Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;

    invoke-static {v0}, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->-$$Nest$fgetmCameraCaptureState(Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;)Lcom/transsion/camera/adapter/CameraCaptureState;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;->onNextReady(Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    .line 127
    :cond_66
    iget-object p1, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$1;->this$0:Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;

    invoke-static {p1}, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->-$$Nest$fgetmSettingShot2ShotCallback(Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_8f

    iget-object p1, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$1;->this$0:Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;

    invoke-static {p1}, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->-$$Nest$fgetmSettingShot2ShotCallback(Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8f

    .line 128
    iget-object p1, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$1;->this$0:Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;

    invoke-static {p1}, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->-$$Nest$fgetmSettingShot2ShotCallback(Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;

    iget-object p0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$1;->this$0:Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;

    invoke-static {p0}, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->-$$Nest$fgetmCameraCaptureState(Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;)Lcom/transsion/camera/adapter/CameraCaptureState;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy$Shot2ShotCallback;->onNextReady(Lcom/transsion/camera/adapter/CameraProxy$ICameraCaptureState;)V

    :cond_8f
    :goto_8f
    return-void
.end method

.method public processPreview(J)Landroid/os/ParcelFileDescriptor;
    .registers 6

    .line 134
    invoke-static {}, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processPreview = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 135
    iget-object p0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl$1;->this$0:Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;

    iget-object p0, p0, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->mCallBack:Lcom/transsion/camera/app/common/isphidl/IISPHidlService$IISPHidlServiceCallback;

    if-eqz p0, :cond_23

    .line 136
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/isphidl/IISPHidlService$IISPHidlServiceCallback;->processPreview(J)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public processResult(Lcom/transsion/campostalgo/FeatureParam;)V
    .registers 2

    .line 96
    invoke-static {}, Lcom/transsion/camera/feature/isphidl/ISPHidlImpl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "processResult"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
