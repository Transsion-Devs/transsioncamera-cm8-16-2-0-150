.class Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/ConfirmDialog$ICallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->showResetDialog(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

.field final synthetic val$featureId:I

.field final synthetic val$isCloseOrAi:Z


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 524
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$5;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    iput p2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$5;->val$featureId:I

    iput-boolean p3, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$5;->val$isCloseOrAi:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 1

    return-void
.end method

.method public bridge synthetic onCheckedChanged(Z)V
    .registers 2

    .line 0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog$ICallBack;->onCheckedChanged(Z)V

    return-void
.end method

.method public onConfirm()V
    .registers 6

    .line 527
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$5;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->access$300(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onConfirm"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$5;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->getDefaultSkin()Ljava/lang/String;

    .line 529
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$5;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->-$$Nest$mgetDefaultSlimBodySetting(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Ljava/lang/String;

    move-result-object v0

    .line 530
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$5;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->-$$Nest$fputmCustomDataInfo(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)V

    .line 531
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$5;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->-$$Nest$fgetmCustomDataInfo(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    move-result-object v0

    iget v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$5;->val$featureId:I

    iput v1, v0, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->featureId:I

    .line 532
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$5;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->-$$Nest$mupdateProgressBar(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;I)V

    .line 533
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$5;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->-$$Nest$fgetmCurSelectFeatureId(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$5;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->-$$Nest$fgetmCustomDataInfo(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->-$$Nest$mupdateItemProgress(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;ILcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;Z)V

    .line 534
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$5;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->-$$Nest$fgetmCustomDataInfo(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;->toJson(Lcom/transsion/camera/app/common/setting/makeup/SlimBodyItemInfo;)Ljava/lang/String;

    move-result-object v0

    .line 535
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$5;->val$isCloseOrAi:Z

    if-nez v1, :cond_55

    .line 536
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$5;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mSetting:Lcom/transsion/camera/app/common/setting/ISetting;
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->access$400(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 538
    :cond_55
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$5;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->access$700(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$5;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->access$600(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$5;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mLensFacing:Ljava/lang/String;
    invoke-static {v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->access$500(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_mu_slimbody_value_change"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 539
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$5;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->access$1000(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$5;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->access$900(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$5;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mLensFacing:Ljava/lang/String;
    invoke-static {v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->access$800(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_mu_slimbody_custom"

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 540
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$5;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->access$1300(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$5;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->access$1200(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$5;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mLensFacing:Ljava/lang/String;
    invoke-static {v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->access$1100(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_mu_slimbody_custom_b"

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 541
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$5;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->access$1600(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$5;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->access$1500(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$5;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mLensFacing:Ljava/lang/String;
    invoke-static {v2}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->access$1400(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_mu_slimbody_custom_c"

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 542
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$5;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;
    invoke-static {v0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->access$1900(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$5;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->access$1800(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$5;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    # getter for: Lcom/transsion/camera/feature/mode/pmaster/ui/interactive/AbstractRoot;->mLensFacing:Ljava/lang/String;
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->access$1700(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getCameraFacingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "key_mu_slimbody_custom_b_southasia"

    invoke-virtual {v0, v1, v3, p0, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onDismiss()V
    .registers 2

    .line 551
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot$5;->this$0:Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;->-$$Nest$fgetmIAppUI(Lcom/transsion/camera/feature/mode/pmaster/ui/SlimbodyRoot;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 v0, 0x88

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method
