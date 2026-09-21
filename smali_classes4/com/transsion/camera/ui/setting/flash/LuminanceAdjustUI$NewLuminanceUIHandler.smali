.class Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$NewLuminanceUIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NewLuminanceUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;)V
    .registers 2

    .line 503
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$NewLuminanceUIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$NewLuminanceUIHandler;-><init>(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 506
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 507
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_78

    goto :goto_6e

    .line 545
    :pswitch_b
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$NewLuminanceUIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->processLuminanceFlashClick()V

    return-void

    .line 542
    :pswitch_11
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$NewLuminanceUIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->processLuminancePreviewStart()V

    return-void

    .line 527
    :pswitch_17
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$NewLuminanceUIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mFlashAdjustView:Landroid/view/View;

    if-eqz p1, :cond_22

    const/16 v2, 0x8

    .line 528
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 531
    :cond_22
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$NewLuminanceUIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->access$200(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object p1

    if-eqz p1, :cond_33

    .line 532
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$NewLuminanceUIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->access$300(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->setEnableHintUI(Z)V

    .line 535
    :cond_33
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$NewLuminanceUIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mLuminanceSpreadProgressBar:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;

    if-eqz p1, :cond_3c

    .line 536
    invoke-virtual {p1, v0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustProgressBar;->setAllowedMove(Z)V

    .line 539
    :cond_3c
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$NewLuminanceUIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->updateLuminanceUIState(I)V

    return-void

    .line 513
    :pswitch_43
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$NewLuminanceUIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->updateLuminanceUIState(I)V

    .line 514
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$NewLuminanceUIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;

    iput-boolean v0, p1, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->isAnimationRunning:Z

    .line 515
    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->hideSpreadUI()V

    .line 516
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$NewLuminanceUIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;

    iget-boolean v0, p1, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->mHintShown:Z

    if-nez v0, :cond_58

    .line 517
    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->showShrinkUI()V

    .line 519
    :cond_58
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$NewLuminanceUIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->setShrinkUIProgress()V

    .line 520
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$NewLuminanceUIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->access$000(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object p1

    if-eqz p1, :cond_6e

    .line 521
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$NewLuminanceUIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->access$100(Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->setEnableHintUI(Z)V

    :cond_6e
    :goto_6e
    return-void

    .line 509
    :pswitch_6f
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI$NewLuminanceUIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;

    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->isAnimationRunning:Z

    .line 510
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/LuminanceAdjustUI;->doHideAnimation()V

    return-void

    nop

    :pswitch_data_78
    .packed-switch 0x8
        :pswitch_6f
        :pswitch_43
        :pswitch_17
        :pswitch_11
        :pswitch_b
    .end packed-switch
.end method
