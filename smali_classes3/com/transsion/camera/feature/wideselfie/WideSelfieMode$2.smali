.class Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)V
    .registers 2

    .line 144
    iput-object p1, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$2;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateUri(Landroid/net/Uri;)V
    .registers 5

    .line 147
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$2;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$1600(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p1, :cond_2a

    .line 149
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$2;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$1700(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string/jumbo p1, "updateUri uri is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 152
    :cond_2a
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$2;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$1800(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateThumbnailUri(Landroid/net/Uri;)V

    .line 153
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$2;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;
    invoke-static {p0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$1900(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUI;->updateBrowserData(Landroid/net/Uri;)V

    return-void
.end method

.method public updateView([B)V
    .registers 4

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$2;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    # getter for: Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {v0}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$2000(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string/jumbo v1, "updateView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 159
    iget-object p0, p0, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode$2;->this$0:Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;

    # invokes: Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updateThumbnailView([B)V
    invoke-static {p0, p1}, Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;->access$2100(Lcom/transsion/camera/feature/wideselfie/WideSelfieMode;[B)V

    return-void
.end method
