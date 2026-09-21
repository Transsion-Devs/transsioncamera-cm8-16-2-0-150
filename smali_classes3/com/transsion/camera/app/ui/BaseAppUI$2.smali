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

    .line 482
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public scrollStarted()V
    .registers 4

    .line 485
    invoke-static {}, Lcom/transsion/camera/app/ui/BaseAppUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "scrollStarted."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz v0, :cond_12

    .line 487
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->hide()V

    .line 489
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v1, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    const/4 v2, 0x7

    if-eqz v1, :cond_28

    .line 490
    iget-object v0, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    if-eq v2, v0, :cond_28

    .line 491
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->hide()V

    .line 494
    :cond_28
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz v0, :cond_42

    .line 495
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->restoreInteractiveView()V

    .line 496
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result v0

    if-eq v2, v0, :cond_42

    .line 497
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->hide()V

    .line 500
    :cond_42
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeUIControl:Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;

    if-eqz v0, :cond_4b

    .line 501
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;->hideModeUI()V

    .line 503
    :cond_4b
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    const/16 v0, 0x35

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public scrollStopped(I)V
    .registers 5

    .line 514
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

    .line 515
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    const/16 v1, 0x36

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    .line 516
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object v0, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mCurrentModeName:Ljava/lang/String;

    const-string v1, "com.transsion.camera.feature.mode.more.MoreModeEntry"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 517
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget v1, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollModeIndex:I

    if-ne v1, p1, :cond_56

    .line 518
    iget-object p1, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mHintUIManager:Lcom/transsion/camera/app/ui/manager/HintUIManager;

    if-eqz p1, :cond_44

    .line 519
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/manager/AbstractViewManager;->show()V

    .line 521
    :cond_44
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/BaseAppUI;->mWideCameraUIManager:Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;

    if-eqz p1, :cond_4d

    .line 522
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/manager/WideCameraUIManager;->show()V

    .line 524
    :cond_4d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/BaseAppUI;->mModeUIControl:Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;

    if-eqz p1, :cond_56

    .line 525
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;->showModeUI()V

    .line 528
    :cond_56
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mInteractiveUIManager:Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;

    if-eqz p0, :cond_5f

    .line 529
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/InteractiveUIManager;->show()V

    :cond_5f
    return-void
.end method

.method public updateScrollIndex(I)V
    .registers 5

    .line 508
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

    .line 509
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$2;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iput p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI;->mScrollModeIndex:I

    return-void
.end method
