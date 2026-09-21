.class public Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$UIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;


# direct methods
.method protected constructor <init>(Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;)V
    .registers 2

    .line 610
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 613
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->handlerMsgExt(Landroid/os/Message;)V

    .line 614
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_60

    const/4 p1, 0x2

    if-eq v0, p1, :cond_55

    const/4 p1, 0x3

    if-eq v0, p1, :cond_4f

    const/4 p1, 0x4

    if-eq v0, p1, :cond_2f

    const/4 p1, 0x5

    if-eq v0, p1, :cond_17

    goto :goto_4e

    .line 631
    :cond_17
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->access$200(Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object p1

    if-eqz p1, :cond_4e

    .line 632
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->access$300(Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->-$$Nest$fgetmFlashAdjustHintInfo(Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void

    .line 626
    :cond_2f
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->access$000(Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object p1

    if-eqz p1, :cond_4e

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->-$$Nest$mcanShowHint(Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;)Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 627
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->access$100(Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;)Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->-$$Nest$fgetmFlashAdjustHintInfo(Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_4e
    :goto_4e
    return-void

    .line 623
    :cond_4f
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->doHideAnimation()V

    return-void

    .line 619
    :cond_55
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->showAdjustUI()V

    .line 620
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->doShowAnimation()V

    return-void

    .line 616
    :cond_60
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$UIHandler;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->updateAdjustUI(I)V

    return-void
.end method
