.class Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;)V
    .registers 2

    .line 650
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$1;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 650
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$1;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 653
    invoke-static {}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusChanged: key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 654
    const-string v0, "key_conflict_ui_state"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_47

    .line 655
    const-string v0, "value_filter_ui_on"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    const-string v0, "value_video_filter_ui_on"

    .line 656
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3a

    goto :goto_41

    .line 659
    :cond_3a
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$1;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->-$$Nest$fputmIsInConflict(Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;Z)V

    goto :goto_56

    .line 657
    :cond_41
    :goto_41
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$1;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->-$$Nest$fputmIsInConflict(Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;Z)V

    goto :goto_56

    .line 661
    :cond_47
    const-string v0, "key_fold_switch_preview"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 662
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$1;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    iput-object p2, v0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mSwitchPreviewValue:Ljava/lang/String;

    .line 663
    # invokes: Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->updateSettingUILayout(Z)V
    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->access$400(Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;Z)V

    .line 665
    :cond_56
    :goto_56
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$1;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    iget-boolean v1, v0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mIsSupport:Z

    if-nez v1, :cond_5d

    goto :goto_a9

    .line 668
    :cond_5d
    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a9

    .line 669
    const-string p1, "torch"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_89

    .line 670
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$1;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->getLuminanceValue()I

    move-result p2

    iput p2, p1, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mLuminanceValue:I

    .line 671
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$1;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    if-eqz p1, :cond_a9

    const/4 p2, 0x4

    .line 672
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 673
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$1;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 676
    :cond_89
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$1;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    if-eqz p1, :cond_a9

    const/4 p2, 0x3

    .line 677
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 678
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$1;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 680
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$1;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 681
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI$1;->this$0:Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/AbstractFlashAdjustUI;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_a9
    :goto_a9
    return-void
.end method
