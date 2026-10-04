.class public final Lcom/transsion/camera/feature/setting/liveresult/LiveResult$mPreviewStateCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/setting/liveresult/LiveResult;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/liveresult/LiveResult;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/liveresult/LiveResult;)V
    .registers 2

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/liveresult/LiveResult$mPreviewStateCallback$1;->this$0:Lcom/transsion/camera/feature/setting/liveresult/LiveResult;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .registers 3

    .line 107
    # getter for: Lcom/transsion/camera/feature/setting/liveresult/LiveResult;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {}, Lcom/transsion/camera/feature/setting/liveresult/LiveResult;->access$getTAG$cp()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onPreviewStarted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/liveresult/LiveResult$mPreviewStateCallback$1;->this$0:Lcom/transsion/camera/feature/setting/liveresult/LiveResult;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/liveresult/LiveResult;->access$getMSettingDeviceRequester$p$s-1473126327(Lcom/transsion/camera/feature/setting/liveresult/LiveResult;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/liveresult/LiveResult$mPreviewStateCallback$1;->this$0:Lcom/transsion/camera/feature/setting/liveresult/LiveResult;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/liveresult/LiveResult;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public onPreviewStopped()V
    .registers 3

    .line 102
    # getter for: Lcom/transsion/camera/feature/setting/liveresult/LiveResult;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;
    invoke-static {}, Lcom/transsion/camera/feature/setting/liveresult/LiveResult;->access$getTAG$cp()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onPreviewStopped"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 103
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/liveresult/LiveResult$mPreviewStateCallback$1;->this$0:Lcom/transsion/camera/feature/setting/liveresult/LiveResult;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/setting/liveresult/LiveResult;->access$setMIsWorking$p(Lcom/transsion/camera/feature/setting/liveresult/LiveResult;Z)V

    return-void
.end method
