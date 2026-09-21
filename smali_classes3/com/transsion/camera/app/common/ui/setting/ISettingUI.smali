.class public interface abstract Lcom/transsion/camera/app/common/ui/setting/ISettingUI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;
    }
.end annotation


# virtual methods
.method public getExtraKey()Ljava/lang/String;
    .registers 1

    .line 44
    const-string p0, ""

    return-object p0
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract getKeys(Ljava/lang/String;)Ljava/util/List;
.end method

.method public abstract getValue()Ljava/lang/String;
.end method

.method public abstract notifyCameraOperateAction(I)V
.end method

.method public abstract setActionSound(Lcom/transsion/camera/utils/sound/IActionSound;)V
.end method

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    return-void
.end method

.method public abstract setAppUIRect(Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V
.end method

.method public abstract setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
.end method

.method public abstract setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
.end method

.method public abstract setDeviceSettingData(Ljava/util/List;)V
.end method

.method public setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    return-void
.end method

.method public abstract setHintControl(Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;)V
.end method

.method public abstract setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
.end method

.method public abstract setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V
.end method

.method public abstract setUIStateControl(Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;)V
.end method

.method public abstract unInit()V
.end method
