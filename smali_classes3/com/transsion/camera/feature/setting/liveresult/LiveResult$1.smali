.class Lcom/transsion/camera/feature/setting/liveresult/LiveResult$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/liveresult/LiveResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/liveresult/LiveResult;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/liveresult/LiveResult;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/liveresult/LiveResult$1;->this$0:Lcom/transsion/camera/feature/setting/liveresult/LiveResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .registers 3

    .line 118
    invoke-static {}, Lcom/transsion/camera/feature/setting/liveresult/LiveResult;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onPreviewStarted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/liveresult/LiveResult$1;->this$0:Lcom/transsion/camera/feature/setting/liveresult/LiveResult;

    # getter for: Lcom/transsion/camera/app/common/setting/SettingBase;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;
    invoke-static {v0}, Lcom/transsion/camera/feature/setting/liveresult/LiveResult;->access$000(Lcom/transsion/camera/feature/setting/liveresult/LiveResult;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/liveresult/LiveResult$1;->this$0:Lcom/transsion/camera/feature/setting/liveresult/LiveResult;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/liveresult/LiveResult;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public onPreviewStopped()V
    .registers 3

    .line 112
    invoke-static {}, Lcom/transsion/camera/feature/setting/liveresult/LiveResult;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onPreviewStopped"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 113
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/liveresult/LiveResult$1;->this$0:Lcom/transsion/camera/feature/setting/liveresult/LiveResult;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/setting/liveresult/LiveResult;->-$$Nest$fputmIsWorking(Lcom/transsion/camera/feature/setting/liveresult/LiveResult;Z)V

    return-void
.end method
