.class Lcom/transsion/camera/app/ui/BaseAppUI$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/IModeScrollUI$ModeScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/BaseAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/BaseAppUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 2

    .line 478
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public scrollStarted()V
    .registers 4

    .line 481
    invoke-static {}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "scrollStarted."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz v0, :cond_12

    .line 483
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    .line 485
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v1, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    const/4 v2, 0x7

    if-eqz v1, :cond_28

    .line 486
    iget-object v0, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    if-eq v2, v0, :cond_28

    .line 487
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->hide()V

    .line 490
    :cond_28
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz v0, :cond_42

    .line 491
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->restoreInteractiveView()V

    .line 492
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    if-eq v2, v0, :cond_42

    .line 493
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->hide()V

    .line 496
    :cond_42
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeUIControl:Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;

    if-eqz v0, :cond_4b

    .line 497
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;->hideModeUI()V

    .line 499
    :cond_4b
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    const/16 v0, 0x35

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public scrollStopped(I)V
    .registers 5

    .line 510
    invoke-static {}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollStopped, index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cur index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget v2, v2, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollModeIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    const/16 v1, 0x36

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    .line 512
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 513
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget v1, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollModeIndex:I

    if-ne v1, p1, :cond_56

    .line 514
    iget-object p1, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p1, :cond_44

    .line 515
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->show()V

    .line 517
    :cond_44
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p1, :cond_4d

    .line 518
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->show()V

    .line 520
    :cond_4d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeUIControl:Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;

    if-eqz p1, :cond_56

    .line 521
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;->showModeUI()V

    .line 524
    :cond_56
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz p0, :cond_5f

    .line 525
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->show()V

    :cond_5f
    return-void
.end method

.method public updateScrollIndex(I)V
    .registers 5

    .line 504
    invoke-static {}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateScrollIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 505
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iput p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollModeIndex:I

    return-void
.end method
