.class Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MainHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;


# direct methods
.method public static synthetic $r8$lambda$91g98Oi933viSEDkAQH7OzNez_Y(Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MainHandler;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MainHandler;->lambda$handleMessage$0()V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;)V
    .registers 2

    .line 142
    iput-object p1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MainHandler;->this$0:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    .line 143
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private synthetic lambda$handleMessage$0()V
    .registers 4

    .line 157
    iget-object p0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MainHandler;->this$0:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/4 v0, -0x1

    const-string v1, "false"

    const/16 v2, 0xc

    invoke-interface {p0, v2, v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 148
    invoke-static {}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMotionCaptureMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 149
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xc

    packed-switch p1, :pswitch_data_8e

    return-void

    .line 166
    :pswitch_22
    iget-object p0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MainHandler;->this$0:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->-$$Nest$fputmIsWaitingBestMoment(Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;Z)V

    return-void

    .line 161
    :pswitch_29
    iget-object p1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MainHandler;->this$0:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->-$$Nest$fputmCaptureType(Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;I)V

    .line 162
    invoke-static {}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v1, "DO_SILENT_CAPTURE"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 163
    iget-object p0, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MainHandler;->this$0:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-static {p0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->triggerShutterClick(I)V

    return-void

    .line 151
    :pswitch_42
    iget-object p1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MainHandler;->this$0:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->-$$Nest$fputmLastCaptureTime(Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;J)V

    .line 152
    iget-object p1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MainHandler;->this$0:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->-$$Nest$fgetmIsBirdBMDetected(Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;)Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MainHandler;->this$0:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-static {v1}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->-$$Nest$fgetmLastCaptureTime(Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;)J

    move-result-wide v1

    goto :goto_5c

    :cond_5a
    const-wide/16 v1, -0x1

    :goto_5c
    invoke-static {p1, v1, v2}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->-$$Nest$fputmLastBirdBMCaptureTime(Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;J)V

    .line 153
    iget-object p1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MainHandler;->this$0:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    const/4 v1, 0x3

    invoke-static {p1, v1}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->-$$Nest$fputmCaptureType(Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;I)V

    .line 154
    iget-object p1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MainHandler;->this$0:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    const/16 v1, 0xb

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->triggerShutterClick(I)V

    .line 155
    iget-object p1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MainHandler;->this$0:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    const/4 v1, -0x1

    const-string/jumbo v2, "true"

    invoke-interface {p1, v0, v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 156
    iget-object p1, p0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MainHandler;->this$0:Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;

    invoke-static {p1}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;->-$$Nest$fgetmMainHandler(Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MainHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MainHandler$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/common/motioncapture/MotionCaptureManager$MainHandler;)V

    const-wide/16 v1, 0x96

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_data_8e
    .packed-switch 0xa
        :pswitch_42
        :pswitch_29
        :pswitch_22
    .end packed-switch
.end method
