.class Lcom/transsion/camera/app/BaseCameraActivity$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/BaseCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/BaseCameraActivity;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;Landroid/os/Looper;)V
    .registers 3

    .line 353
    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$1;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 356
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_b2

    :pswitch_5
    goto/16 :goto_97

    .line 405
    :pswitch_7
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$1;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    const/16 p1, 0x1388

    invoke-static {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$mrecoverScreenBrightness(Lcom/transsion/camera/app/BaseCameraActivity;I)V

    return-void

    .line 402
    :pswitch_f
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$1;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->showVideoThermalWarning()V

    return-void

    .line 395
    :pswitch_15
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$1;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-object p1, p1, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->setVideoPowerSavingUIVisible(Z)V

    .line 396
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$1;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iput-boolean v0, p1, Lcom/transsion/camera/app/BaseCameraActivity;->mIsVideoPowerSavingUIShowing:Z

    .line 397
    invoke-static {p1}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fgetmState(Lcom/transsion/camera/app/BaseCameraActivity;)Lcom/transsion/camera/app/common/IApp$State;

    move-result-object p1

    sget-object v0, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_97

    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$1;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-boolean v0, p1, Lcom/transsion/camera/app/BaseCameraActivity;->mIsResumed:Z

    if-eqz v0, :cond_97

    iget-boolean p1, p1, Lcom/transsion/camera/app/BaseCameraActivity;->mIsVideoPowerSavingUISupport:Z

    if-eqz p1, :cond_97

    .line 398
    invoke-static {}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$sfgetVIDEO_POWER_SAVING_UI_SHOW_DELAY_MILLS()I

    move-result p1

    int-to-long v0, p1

    const/16 p1, 0xb

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 389
    :pswitch_42
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$1;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-static {p1}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$fgetmState(Lcom/transsion/camera/app/BaseCameraActivity;)Lcom/transsion/camera/app/common/IApp$State;

    move-result-object p1

    sget-object v0, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_97

    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$1;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-boolean v0, p1, Lcom/transsion/camera/app/BaseCameraActivity;->mIsResumed:Z

    if-eqz v0, :cond_97

    .line 390
    iget-object p1, p1, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->setVideoPowerSavingUIVisible(Z)V

    .line 391
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$1;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iput-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mIsVideoPowerSavingUIShowing:Z

    return-void

    .line 384
    :pswitch_61
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$1;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {p1}, Lcom/transsion/camera/app/QuickActivity;->isTopResumedActivity()Z

    move-result p1

    if-nez p1, :cond_97

    .line 385
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$1;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 381
    :pswitch_6f
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$1;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    const/4 p1, -0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$mrecoverScreenBrightness(Lcom/transsion/camera/app/BaseCameraActivity;I)V

    return-void

    .line 378
    :pswitch_76
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$1;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->handleReduceScreenBrightness(F)V

    return-void

    .line 375
    :pswitch_84
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$1;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->handleReduceScreenBrightnessGradually()V

    return-void

    .line 367
    :pswitch_8a
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$1;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-boolean v0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mLensDirtyHintSupported:Z

    if-eqz v0, :cond_97

    .line 368
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->doShowLensDirtyHintIfNeed(Ljava/lang/String;)V

    :cond_97
    :goto_97
    return-void

    .line 364
    :pswitch_98
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$1;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->hideErrorAndFinish()V

    return-void

    .line 372
    :pswitch_9e
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$1;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->showThermalThrottleUrgent()V

    return-void

    .line 361
    :pswitch_a4
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$1;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->showErrorAndFinish(I)V

    return-void

    .line 358
    :pswitch_ac
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$1;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {p0}, Lcom/transsion/camera/app/BaseCameraActivity;->showWaitPage()V

    return-void

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_ac
        :pswitch_a4
        :pswitch_9e
        :pswitch_98
        :pswitch_8a
        :pswitch_84
        :pswitch_76
        :pswitch_6f
        :pswitch_61
        :pswitch_5
        :pswitch_5
        :pswitch_42
        :pswitch_15
        :pswitch_f
        :pswitch_7
    .end packed-switch
.end method
