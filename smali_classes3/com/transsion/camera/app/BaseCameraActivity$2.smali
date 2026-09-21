.class Lcom/transsion/camera/app/BaseCameraActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/BaseCameraActivity;->initAppStorageManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/BaseCameraActivity;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;)V
    .registers 2

    .line 860
    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$2;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaScannerFinished()V
    .registers 3

    .line 874
    invoke-static {}, Lcom/transsion/camera/app/BaseCameraActivity;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "loadLatestThumbnail when onMediaScannerFinished."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 875
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$2;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/BaseCameraActivity;->loadLatestThumbnail(Z)V

    return-void
.end method

.method public onOperatorChanged(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V
    .registers 4

    .line 863
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$2;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-object v0, v0, Lcom/transsion/camera/app/BaseCameraActivity;->mModeManager:Lcom/transsion/camera/app/common/mode/ModeManager;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/common/mode/ModeManager;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    .line 864
    invoke-static {}, Lcom/transsion/camera/app/common/ai/AIGCManager;->getInstance()Lcom/transsion/camera/app/common/ai/AIGCManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ai/AIGCManager;->setStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V

    .line 865
    invoke-static {}, Lcom/transsion/camera/app/common/ai/AIArtManager;->getInstance()Lcom/transsion/camera/app/common/ai/AIArtManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ai/AIArtManager;->setStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_23

    .line 867
    iget-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$2;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {p1}, Lcom/transsion/camera/app/BaseCameraActivity;->showExternalStorageUnmountedTip()V

    .line 868
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$2;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/BaseCameraActivity;->loadLatestThumbnail(Z)V

    :cond_23
    return-void
.end method

.method public onSDCardMounted()V
    .registers 1

    .line 880
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$2;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->exitAllFragments()V

    return-void
.end method

.method public onSDCardUnMounted()V
    .registers 1

    .line 885
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$2;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity;->mAppUI:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/BaseAppUI;->exitAllFragments()V

    return-void
.end method
