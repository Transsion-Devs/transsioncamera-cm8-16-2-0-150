.class Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)V
    .registers 2

    .line 521
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    .line 524
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_238

    const/4 p1, 0x2

    const/16 v2, 0xee

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x6

    const/4 v6, 0x0

    if-eq v0, p1, :cond_138

    const/4 p1, 0x3

    if-eq v0, p1, :cond_132

    const/4 p1, 0x4

    const-string v7, "value_super_night_capture_end"

    if-eq v0, p1, :cond_76

    if-eq v0, v5, :cond_1a

    goto/16 :goto_237

    .line 589
    :cond_1a
    sget-object p1, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mNextCaptureReady = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {v5}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmNextCaptureReady(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 590
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1, v1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fputmTimerDelayReady(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V

    .line 591
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmNextCaptureReady(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z

    move-result p1

    if-eqz p1, :cond_237

    .line 592
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmUIStateControl(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    move-result-object p1

    invoke-interface {p1, v1, v4, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 593
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmIAppUI(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    if-eqz p1, :cond_6c

    .line 594
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmIAppUI(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 595
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1, v6}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fputmSuperNightCaptureBegin(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V

    .line 596
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1, v7}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$mchangeSuperNightCaptureStatus(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Ljava/lang/String;)V

    .line 597
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1, v6}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fputmTimerDelayReady(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V

    .line 599
    :cond_6c
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateSwitchVisibility(Ljava/lang/String;)V

    return-void

    .line 564
    :cond_76
    sget-object p1, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNextReady, mLoadingAnimEnd = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {v5}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmLoadingAnimEnd(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mTimerDelayReady = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {v5}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmTimerDelayReady(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mIsShowSelfTimer= "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {v5}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmIsShowSelfTimer(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 566
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1, v1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fputmNextCaptureReady(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V

    .line 567
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmLoadingAnimEnd(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z

    move-result p1

    if-eqz p1, :cond_237

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmTimerDelayReady(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z

    move-result p1

    if-eqz p1, :cond_237

    .line 568
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmIsShowSelfTimer(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z

    move-result p1

    if-nez p1, :cond_d4

    .line 569
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmUIStateControl(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    move-result-object p1

    invoke-interface {p1, v1, v4, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 571
    :cond_d4
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmIAppUI(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    if-eqz p1, :cond_237

    .line 572
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmIAppUI(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 573
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mLivePhotoSupport:Z

    if-nez p1, :cond_f5

    .line 574
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mIsFlareCaptureSupport:Z

    if-eqz p1, :cond_127

    .line 575
    :cond_f5
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1, v6}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fputmSuperNightCaptureBegin(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V

    .line 576
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    .line 577
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    if-eqz v0, :cond_127

    if-nez p1, :cond_127

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->mNightLiteSwitch:Lcom/transsion/camera/app/ui/widget/RotateLottieAnimationView;

    .line 578
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_127

    .line 579
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p1

    const-string v0, "key_super_night_lite_switch_state"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    const-string v1, "value_super_night_lite_switch_off"

    .line 580
    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 583
    :cond_127
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1, v7}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$mchangeSuperNightCaptureStatus(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Ljava/lang/String;)V

    .line 584
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p0, v6}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fputmTimerDelayReady(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V

    return-void

    .line 526
    :cond_132
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$mupdateLoadingTime(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)V

    return-void

    .line 532
    :cond_138
    const-string p1, "NightLiteTimerEnd"

    invoke-static {p1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 533
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 534
    sget-object p1, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mLoadingAnimEnd, onNextReady = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {v7}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmNextCaptureReady(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 536
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmActionSound(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Lcom/transsion/camera/utils/sound/IActionSound;

    move-result-object p1

    if-eqz p1, :cond_183

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmSoundEnable(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z

    move-result p1

    if-eqz p1, :cond_183

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmSoundLoaded(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z

    move-result p1

    if-eqz p1, :cond_183

    .line 537
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmActionSound(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Lcom/transsion/camera/utils/sound/IActionSound;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmShutterClickSampleId(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/utils/sound/IActionSound;->play(I)V

    .line 539
    :cond_183
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->hookDisturbStatus()V

    .line 540
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmIsPostAlgoOn(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z

    move-result p1

    if-eqz p1, :cond_1a0

    .line 541
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1, v6}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fputmTimerDelayReady(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V

    .line 542
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmShot2seeCircleAnimTime(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {p0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1fd

    .line 543
    :cond_1a0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmSuperAiRawSupport(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z

    move-result p1

    if-nez p1, :cond_1ec

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmTurboFusionSupport(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z

    move-result p1

    if-eqz p1, :cond_1b1

    goto :goto_1ec

    .line 547
    :cond_1b1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1, v1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fputmTimerDelayReady(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V

    .line 548
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmNextCaptureReady(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z

    move-result p1

    if-eqz p1, :cond_1fd

    .line 549
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmUIStateControl(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;

    move-result-object p1

    invoke-interface {p1, v1, v4, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 550
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmIAppUI(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    if-eqz p1, :cond_1e2

    .line 551
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmIAppUI(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 552
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1, v6}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fputmSuperNightCaptureBegin(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V

    .line 553
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1, v6}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fputmTimerDelayReady(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V

    .line 555
    :cond_1e2
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateSwitchVisibility(Ljava/lang/String;)V

    goto :goto_1fd

    .line 544
    :cond_1ec
    :goto_1ec
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1, v6}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fputmTimerDelayReady(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V

    .line 545
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmShot2seeCircleAnimTime(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)I

    move-result p1

    div-int/lit8 p1, p1, 0x5

    int-to-long v2, p1

    invoke-virtual {p0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 558
    :cond_1fd
    :goto_1fd
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1, v1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fputmLoadingAnimEnd(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;Z)V

    .line 559
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmNextCaptureReady(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z

    move-result p1

    if-eqz p1, :cond_22a

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmIsPostAlgoOn(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z

    move-result p1

    if-nez p1, :cond_22a

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmSuperAiRawSupport(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z

    move-result p1

    if-nez p1, :cond_22a

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmTurboFusionSupport(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z

    move-result p1

    if-nez p1, :cond_22a

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmAiRawSprdSupport(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z

    move-result p1

    if-eqz p1, :cond_237

    :cond_22a
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$fgetmIsPause(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)Z

    move-result p1

    if-nez p1, :cond_237

    .line 560
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->-$$Nest$mstartNightProcessAnim(Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;)V

    :cond_237
    :goto_237
    return-void

    .line 529
    :cond_238
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/supernightlite/SuperNightLiteUI;->updateSwitchVisibility(Ljava/lang/String;)V

    return-void
.end method
