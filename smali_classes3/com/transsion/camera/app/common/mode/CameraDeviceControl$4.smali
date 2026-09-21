.class Lcom/transsion/camera/app/common/mode/CameraDeviceControl$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$CameraOfflineSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)V
    .registers 2

    .line 2201
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$4;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeSwitchToOffline()V
    .registers 2

    .line 2204
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "switchToOfflineSessionCallback, [executeSwitchToOffline]"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2205
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->countOfflineSession(Z)V

    return-void
.end method

.method public onClosed()V
    .registers 3

    .line 2247
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "switchToOfflineSessionCallback, [onClosed]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2248
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->countOfflineSession(Z)V

    .line 2249
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$4;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmDeviceState(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3a

    .line 2250
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getOfflineSessionCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_3a

    .line 2251
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getOnNextReadyFlag()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 2252
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$4;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmAppUI(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/IAppUI;

    move-result-object p0

    const/16 v0, 0x9d

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    :cond_3a
    return-void
.end method

.method public onError(IZ)V
    .registers 5

    .line 2237
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "switchToOfflineSessionCallback, [onError]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2238
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->setSwitchingOffline(Z)V

    if-eqz p2, :cond_18

    .line 2240
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$4;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->checkNotifyBgOfflineErr()V

    .line 2242
    :cond_18
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$4;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mnotifyCaptureOfflineLock(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V

    return-void
.end method

.method public onIdle()V
    .registers 2

    .line 2232
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "switchToOfflineSessionCallback, [onIdle]"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onReady(I)V
    .registers 5

    .line 2210
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchToOfflineSessionCallback, [onReady] , offlineType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,mCurrentMode\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$4;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmCurrentMode(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/mode/ICameraMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2211
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->setSwitchingOffline(Z)V

    .line 2212
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$4;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mnotifyCaptureOfflineLock(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V

    .line 2213
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$4;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmOfflineSwitchCallback(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/IAppUIListener$IBGOfflineSwitchCallback;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 2214
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$4;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmOfflineSwitchCallback(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/IAppUIListener$IBGOfflineSwitchCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IBGOfflineSwitchCallback;->onOfflineSwitchFinish(I)V

    :cond_44
    return-void
.end method

.method public onSwitchFailed(I)V
    .registers 5

    .line 2220
    invoke-static {}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchToOfflineSessionCallback, [onSwitchFailed], offlineType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2221
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$4;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->checkNotifyBgOfflineErr()V

    .line 2222
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->setSwitchingOffline(Z)V

    .line 2223
    invoke-static {}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->getInstance()Lcom/transsion/camera/app/common/bgservice/BGServiceController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/bgservice/BGServiceController;->countOfflineSession(Z)V

    .line 2224
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$4;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0, p1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$mnotifyCaptureOfflineLock(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;I)V

    .line 2225
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$4;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {v0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmOfflineSwitchCallback(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/IAppUIListener$IBGOfflineSwitchCallback;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 2226
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraDeviceControl$4;->this$0:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->-$$Nest$fgetmOfflineSwitchCallback(Lcom/transsion/camera/app/common/mode/CameraDeviceControl;)Lcom/transsion/camera/app/common/IAppUIListener$IBGOfflineSwitchCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IBGOfflineSwitchCallback;->onOfflineSwitchFinish(I)V

    :cond_42
    return-void
.end method
