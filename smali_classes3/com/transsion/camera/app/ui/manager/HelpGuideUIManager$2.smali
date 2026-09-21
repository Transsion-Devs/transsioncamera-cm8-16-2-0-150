.class Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)V
    .registers 2

    .line 417
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 417
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$2;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 420
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    iget-object v0, p1, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    if-nez v0, :cond_8

    goto/16 :goto_a5

    .line 424
    :cond_8
    const-string/jumbo v0, "torch"

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->-$$Nest$mqueryFlashValue(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a6

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->-$$Nest$mflashLevelLuminanceFacingSupport(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Z

    move-result p1

    if-nez p1, :cond_1f

    goto/16 :goto_a6

    .line 429
    :cond_1f
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    # getter for: Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->access$500(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    .line 430
    # getter for: Lcom/transsion/camera/app/common/manager/AbstractViewManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
    invoke-static {v0}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->access$400(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    .line 429
    const-string v1, "dual_front_flash_state_key"

    const-string v2, "-1"

    invoke-virtual {p1, v1, v2, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 431
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    const-string v1, "front_dual_flash_ui_show"

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    invoke-static {v0, p2}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->-$$Nest$fputmFrontDualFlashUIShow(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;Z)V

    .line 432
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFrontDualFlashUIShow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->-$$Nest$fgetmFrontDualFlashUIShow(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " frontDualFlashState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 433
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->-$$Nest$fgetmFrontDualFlashUIShow(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_8b

    .line 434
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    iget-object p1, p1, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/ui/IHelpGuideUI;->updateVisibility(Z)V

    .line 435
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-static {p0, v0}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->-$$Nest$fputmShowByAdjustUIHide(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;Z)V

    return-void

    .line 436
    :cond_8b
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->-$$Nest$fgetmShowByAdjustUIHide(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Z

    move-result p2

    if-eqz p2, :cond_a5

    if-eq p1, v0, :cond_a5

    .line 437
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    iget-object p2, p1, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->-$$Nest$fgetmModeSupportGuideUI(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Z

    move-result p1

    invoke-interface {p2, p1}, Lcom/transsion/camera/app/ui/IHelpGuideUI;->updateVisibility(Z)V

    .line 438
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    invoke-static {p0, v1}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->-$$Nest$fputmShowByAdjustUIHide(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;Z)V

    :cond_a5
    :goto_a5
    return-void

    .line 425
    :cond_a6
    :goto_a6
    invoke-static {}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string p2, "back camera and no torch mode not support front dual flash, help guide ui should show"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 426
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager$2;->this$0:Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->mHelpGuideUI:Lcom/transsion/camera/app/ui/IHelpGuideUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;->-$$Nest$fgetmModeSupportGuideUI(Lcom/transsion/camera/app/ui/manager/HelpGuideUIManager;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/ui/IHelpGuideUI;->updateVisibility(Z)V

    return-void
.end method
