.class Lcom/transsion/camera/feature/setting/livephoto/LivePhoto$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;)V
    .registers 2

    .line 256
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto$1;->this$0:Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .registers 4

    .line 272
    invoke-static {}, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewStarted, mModeSupportLivePhoto: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto$1;->this$0:Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->-$$Nest$fgetmModeSupportLivePhoto(Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto$1;->this$0:Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->-$$Nest$fgetmModeSupportLivePhoto(Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;)Z

    move-result v0

    if-nez v0, :cond_27

    goto :goto_40

    .line 276
    :cond_27
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto$1;->this$0:Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->access$200(Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 277
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto$1;->this$0:Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;
    invoke-static {p0}, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->access$300(Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    const-string v0, "key_live_photo_state"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, "start"

    .line 278
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_40
    :goto_40
    return-void
.end method

.method public onPreviewStopped()V
    .registers 4

    .line 260
    invoke-static {}, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreviewStopped, mModeSupportLivePhoto: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto$1;->this$0:Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;

    invoke-static {v2}, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->-$$Nest$fgetmModeSupportLivePhoto(Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto$1;->this$0:Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->-$$Nest$fgetmModeSupportLivePhoto(Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;)Z

    move-result v0

    if-nez v0, :cond_27

    goto :goto_40

    .line 264
    :cond_27
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto$1;->this$0:Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->access$000(Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 265
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto$1;->this$0:Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;
    invoke-static {p0}, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;->access$100(Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;)Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object p0

    const-string v0, "key_live_photo_state"

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string v1, "stop"

    .line 266
    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_40
    :goto_40
    return-void
.end method
