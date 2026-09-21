.class public interface abstract Lcom/transsion/camera/app/common/setting/ISetting;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;
    }
.end annotation


# virtual methods
.method public forceApplyValue(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public forceUpdateValue(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public abstract getCurrentCameraId()Ljava/lang/String;
.end method

.method public abstract getCurrentStreamIds()[I
.end method

.method public abstract getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;
.end method

.method public abstract getDefaultValue()Ljava/lang/String;
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract getModeKey()Ljava/lang/String;
.end method

.method public abstract getSecondSettingValue()Ljava/lang/String;
.end method

.method public getSeekBarValue(I)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getSettingValue()Ljava/lang/String;
.end method

.method public abstract getStoreScope()Ljava/lang/String;
.end method

.method public abstract getSupport()Ljava/util/List;
.end method

.method public getTempSettingValue()Ljava/lang/String;
    .registers 1

    .line 46
    const-string p0, ""

    return-object p0
.end method

.method public abstract isModeSupport()Z
.end method

.method public abstract notifyCameraStable(Z)V
.end method

.method public abstract notifyGroupCaptureIconHide()V
.end method

.method public abstract notifyGroupCaptureIconShow()V
.end method

.method public abstract onExtraValueChanged(Ljava/lang/String;)V
.end method

.method public onSatCameraChanged(I)V
    .registers 2

    return-void
.end method

.method public abstract onValueChanged(Ljava/lang/String;)V
.end method

.method public onValueChangedOnly(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onZoomUIStateChanged(Z)V
    .registers 2

    return-void
.end method

.method public querySupportedEntryValue(Ljava/lang/String;)Ljava/util/List;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract queryValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public setRealZoomValue(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setRestrict3ATouchArea(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method public abstract setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V
.end method

.method public storeCameraIdBeforeSAT(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public abstract turnOnSwitch(Z)V
.end method

.method public updateEntryValueList(Z)V
    .registers 2

    return-void
.end method
