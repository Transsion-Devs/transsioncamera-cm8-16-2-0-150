.class Lcom/transsion/camera/app/common/mode/CommonPhotoMode$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$PreviewCoverCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/CommonPhotoMode;)V
    .registers 2

    .line 3548
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$5;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewCover()V
    .registers 2

    .line 3551
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$5;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->currentModeNeedNewCaptureAnimation()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3552
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoMode$5;->this$0:Lcom/transsion/camera/app/common/mode/CommonPhotoMode;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v0, 0x187

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_11
    return-void
.end method
