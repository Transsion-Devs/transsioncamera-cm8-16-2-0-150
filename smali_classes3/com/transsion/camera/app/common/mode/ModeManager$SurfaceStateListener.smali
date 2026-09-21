.class Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/ModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/ModeManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V
    .registers 2

    .line 2748
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/mode/ModeManager;Lcom/transsion/camera/app/common/mode/ModeManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;-><init>(Lcom/transsion/camera/app/common/mode/ModeManager;)V

    return-void
.end method

.method private performSurfaceChanged()V
    .registers 5

    .line 2834
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/app/common/mode/ModeManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2835
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->currentThreadIsMain()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2836
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmPreviewSurfaceObject(Lcom/transsion/camera/app/common/mode/ModeManager;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmPreviewSurfaceWidth(Lcom/transsion/camera/app/common/mode/ModeManager;)I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v3}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmPreviewSurfaceHeight(Lcom/transsion/camera/app/common/mode/ModeManager;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$mhandleSurfaceChanged(Lcom/transsion/camera/app/common/mode/ModeManager;Ljava/lang/Object;II)V

    goto :goto_53

    .line 2838
    :cond_2c
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2839
    iput v1, v0, Landroid/os/Message;->what:I

    .line 2840
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmPreviewSurfaceObject(Lcom/transsion/camera/app/common/mode/ModeManager;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2841
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmPreviewSurfaceWidth(Lcom/transsion/camera/app/common/mode/ModeManager;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2842
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmPreviewSurfaceHeight(Lcom/transsion/camera/app/common/mode/ModeManager;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 2843
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/app/common/mode/ModeManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2845
    :goto_53
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/app/common/mode/ModeManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2846
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->currentThreadIsMain()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 2847
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$mhandlerPreviewViewChanged(Lcom/transsion/camera/app/common/mode/ModeManager;)V

    return-void

    .line 2849
    :cond_6f
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/app/common/mode/ModeManager;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private updateSurface(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V
    .registers 8

    .line 2780
    invoke-static {}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSurface surfaceType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " object:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2781
    sget-object v0, Lcom/transsion/camera/app/common/mode/ModeManager$5;->$SwitchMap$com$transsion$camera$app$common$IAppUIListener$ISurfaceStatusListener$SurfaceType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_75

    const/4 v1, 0x2

    if-eq p1, v1, :cond_66

    const/4 v1, 0x3

    if-eq p1, v1, :cond_57

    .line 2795
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fputmPreviewSurfaceReady(Lcom/transsion/camera/app/common/mode/ModeManager;Z)V

    .line 2796
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1, p3}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fputmPreviewSurfaceWidth(Lcom/transsion/camera/app/common/mode/ModeManager;I)V

    .line 2797
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1, p4}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fputmPreviewSurfaceHeight(Lcom/transsion/camera/app/common/mode/ModeManager;I)V

    .line 2798
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fputmPreviewSurfaceObject(Lcom/transsion/camera/app/common/mode/ModeManager;Ljava/lang/Object;)V

    return-void

    .line 2791
    :cond_57
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fputmSlaveSurfaceReady(Lcom/transsion/camera/app/common/mode/ModeManager;Z)V

    .line 2792
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmDeviceControl(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p0

    invoke-virtual {p0, p2, p3, p4}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->updateSlavePreviewSurface(Ljava/lang/Object;II)V

    return-void

    .line 2787
    :cond_66
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fputmBackgroundSurfaceReady(Lcom/transsion/camera/app/common/mode/ModeManager;Z)V

    .line 2788
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmDeviceControl(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p0

    invoke-virtual {p0, p2, p3, p4}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->updateBackgroundPreviewSurface(Ljava/lang/Object;II)V

    return-void

    .line 2783
    :cond_75
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1, v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fputmAuxSurfaceReady(Lcom/transsion/camera/app/common/mode/ModeManager;Z)V

    .line 2784
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmDeviceControl(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p0

    invoke-virtual {p0, p2, p3, p4}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->updateAuxPreviewSurface(Ljava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public surfaceAvailable(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V
    .registers 8

    .line 2752
    invoke-static {}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceAvailable object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", surfaceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",mPreviewSurfaceReady: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmPreviewSurfaceReady(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2754
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->updateSurface(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V

    .line 2755
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmModeSupportBackgroundPreview(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p2

    if-eqz p2, :cond_76

    .line 2756
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmBackgroundSurfaceReady(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p2

    if-eqz p2, :cond_101

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmPreviewSurfaceReady(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p2

    if-eqz p2, :cond_101

    .line 2757
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmDeviceControl(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p3}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmPreviewSurfaceObject(Lcom/transsion/camera/app/common/mode/ModeManager;)Ljava/lang/Object;

    move-result-object p3

    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p4}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmPreviewSurfaceWidth(Lcom/transsion/camera/app/common/mode/ModeManager;)I

    move-result p4

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmPreviewSurfaceHeight(Lcom/transsion/camera/app/common/mode/ModeManager;)I

    move-result v0

    invoke-virtual {p2, p3, p4, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setMainPreviewDisplay(Ljava/lang/Object;II)V

    goto/16 :goto_101

    .line 2759
    :cond_76
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmModeSupportAuxPreview(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p2

    if-eqz p2, :cond_aa

    .line 2760
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmAuxSurfaceReady(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p2

    if-eqz p2, :cond_101

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmPreviewSurfaceReady(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p2

    if-eqz p2, :cond_101

    .line 2761
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmDeviceControl(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p3}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmPreviewSurfaceObject(Lcom/transsion/camera/app/common/mode/ModeManager;)Ljava/lang/Object;

    move-result-object p3

    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p4}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmPreviewSurfaceWidth(Lcom/transsion/camera/app/common/mode/ModeManager;)I

    move-result p4

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmPreviewSurfaceHeight(Lcom/transsion/camera/app/common/mode/ModeManager;)I

    move-result v0

    invoke-virtual {p2, p3, p4, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setMainPreviewDisplay(Ljava/lang/Object;II)V

    goto :goto_101

    .line 2763
    :cond_aa
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmModeSupportSlavePreview(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p2

    if-eqz p2, :cond_de

    .line 2764
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmSlaveSurfaceReady(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p2

    if-eqz p2, :cond_101

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmPreviewSurfaceReady(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p2

    if-eqz p2, :cond_101

    .line 2765
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmDeviceControl(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p3}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmPreviewSurfaceObject(Lcom/transsion/camera/app/common/mode/ModeManager;)Ljava/lang/Object;

    move-result-object p3

    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p4}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmPreviewSurfaceWidth(Lcom/transsion/camera/app/common/mode/ModeManager;)I

    move-result p4

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmPreviewSurfaceHeight(Lcom/transsion/camera/app/common/mode/ModeManager;)I

    move-result v0

    invoke-virtual {p2, p3, p4, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setMainPreviewDisplay(Ljava/lang/Object;II)V

    goto :goto_101

    .line 2768
    :cond_de
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmPreviewSurfaceReady(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p2

    if-eqz p2, :cond_101

    .line 2769
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmDeviceControl(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p3}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmPreviewSurfaceObject(Lcom/transsion/camera/app/common/mode/ModeManager;)Ljava/lang/Object;

    move-result-object p3

    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p4}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmPreviewSurfaceWidth(Lcom/transsion/camera/app/common/mode/ModeManager;)I

    move-result p4

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmPreviewSurfaceHeight(Lcom/transsion/camera/app/common/mode/ModeManager;)I

    move-result v0

    invoke-virtual {p2, p3, p4, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->setMainPreviewDisplay(Ljava/lang/Object;II)V

    .line 2773
    :cond_101
    :goto_101
    invoke-static {}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "surfaceAvailable  mModeSupportBackgroundPreview:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p4}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmModeSupportBackgroundPreview(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, " mModeSupportAuxPreview:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p4}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmModeSupportAuxPreview(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, " mModeSupportSlavePreview:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p4}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmModeSupportSlavePreview(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, " surfaceType:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " mBackgroundSurfaceReady:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmBackgroundSurfaceReady(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mAuxSurfaceReady:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmAuxSurfaceReady(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mSlaveSurfaceReady:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmSlaveSurfaceReady(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mPreviewSurfaceReady:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmPreviewSurfaceReady(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceChanged(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V
    .registers 8

    .line 2804
    invoke-static {}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceChanged object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", surfaceType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2807
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->updateSurface(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V

    .line 2809
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmModeSupportBackgroundPreview(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p2

    if-eqz p2, :cond_4f

    .line 2810
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmBackgroundSurfaceReady(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p2

    if-eqz p2, :cond_92

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmPreviewSurfaceReady(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p2

    if-eqz p2, :cond_92

    .line 2811
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->performSurfaceChanged()V

    goto :goto_92

    .line 2813
    :cond_4f
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmModeSupportAuxPreview(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p2

    if-eqz p2, :cond_6b

    .line 2814
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmAuxSurfaceReady(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p2

    if-eqz p2, :cond_92

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmPreviewSurfaceReady(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p2

    if-eqz p2, :cond_92

    .line 2815
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->performSurfaceChanged()V

    goto :goto_92

    .line 2817
    :cond_6b
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmModeSupportSlavePreview(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p2

    if-eqz p2, :cond_87

    .line 2818
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmSlaveSurfaceReady(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p2

    if-eqz p2, :cond_92

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmPreviewSurfaceReady(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p2

    if-eqz p2, :cond_92

    .line 2819
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->performSurfaceChanged()V

    goto :goto_92

    .line 2822
    :cond_87
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmPreviewSurfaceReady(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p2

    if-eqz p2, :cond_92

    .line 2823
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->performSurfaceChanged()V

    .line 2827
    :cond_92
    :goto_92
    invoke-static {}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "surfaceChanged mModeSupportBackgroundPreview:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p4}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmModeSupportBackgroundPreview(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, " mModeSupportAuxPreview:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p4}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmModeSupportAuxPreview(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, " mModeSupportSlavePreview:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p4}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmModeSupportSlavePreview(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, " surfaceType:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " mBackgroundSurfaceReady:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmBackgroundSurfaceReady(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mAuxSurfaceReady:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmAuxSurfaceReady(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mSlaveSurfaceReady:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmSlaveSurfaceReady(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mPreviewSurfaceReady:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmPreviewSurfaceReady(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public surfaceDestroyed(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;)V
    .registers 5

    .line 2855
    invoke-static {}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceDestroyed  mModeSupportBackgroundPreview:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmModeSupportBackgroundPreview(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mModeSupportAuxPreview:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v1}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmModeSupportAuxPreview(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " surfaceType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " mBackgroundSurfaceReady:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmBackgroundSurfaceReady(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mAuxSurfaceReady:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmAuxSurfaceReady(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mPreviewSurfaceReady:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmPreviewSurfaceReady(Lcom/transsion/camera/app/common/mode/ModeManager;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2859
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$mresetSurfaceStatus(Lcom/transsion/camera/app/common/mode/ModeManager;)V

    .line 2861
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmDeviceControl(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->updateAuxPreviewSurface(Ljava/lang/Object;II)V

    .line 2862
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/app/common/mode/ModeManager;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public surfaceDrawn()V
    .registers 3

    .line 2876
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    const/16 v1, 0x63

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 2877
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 2878
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/ICameraMode;->onSurfaceDrawn()V

    .line 2880
    :cond_1c
    invoke-static {}, Lcom/transsion/camera/utils/AssetLoaderUtil;->getIsSupportAssets()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-static {}, Lcom/transsion/camera/utils/AssetLoaderUtil;->getIsLoaderResource()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 2881
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$maddResourcesToContext(Lcom/transsion/camera/app/common/mode/ModeManager;)V

    :cond_2d
    return-void
.end method

.method public surfaceShow(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Z)V
    .registers 4

    .line 2867
    sget-object v0, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->AUX:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    if-ne v0, p1, :cond_e

    .line 2868
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmDeviceControl(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->updateAuxPreviewSurfaceStatus(Z)V

    return-void

    .line 2869
    :cond_e
    sget-object v0, Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;->Background:Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;

    if-ne v0, p1, :cond_1b

    .line 2870
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ModeManager$SurfaceStateListener;->this$0:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/ModeManager;->-$$Nest$fgetmDeviceControl(Lcom/transsion/camera/app/common/mode/ModeManager;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->updateBackgroundPreviewSurfaceStatus(Z)V

    :cond_1b
    return-void
.end method
