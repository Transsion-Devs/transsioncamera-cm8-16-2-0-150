.class Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterMotionEventListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/view/ShutterButtonView$IMotionEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractShutterUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnShutterMotionEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V
    .registers 2

    .line 771
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterMotionEventListener;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;Lcom/transsion/camera/app/ui/AbstractShutterUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterMotionEventListener;-><init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V

    return-void
.end method


# virtual methods
.method public onTransmitMotionEvent(Landroid/view/MotionEvent;)V
    .registers 4

    .line 775
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterMotionEventListener;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$mshutterUINewStyleSupport(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_32

    .line 778
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterMotionEventListener;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterMotionEventListener;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Ljava/lang/String;

    move-result-object v0

    .line 779
    const-string v1, "com.transsion.camera.feature.mode.motioncapture.MotionCaptureModeEntry"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_32

    .line 782
    :cond_26
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterMotionEventListener;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/AbstractShutterUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->isFromIntent()Z

    move-result v0

    if-eqz v0, :cond_33

    :goto_32
    return-void

    .line 785
    :cond_33
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$OnShutterMotionEventListener;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->-$$Nest$mtransmitMotionEvent(Lcom/transsion/camera/app/ui/AbstractShutterUI;Landroid/view/MotionEvent;)V

    return-void
.end method
