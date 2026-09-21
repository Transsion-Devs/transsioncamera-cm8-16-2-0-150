.class public interface abstract Lcom/transsion/camera/app/common/setting/ICameraSetting;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/setting/ICameraSetting$RecordingStateCallback;,
        Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;,
        Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;,
        Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;,
        Lcom/transsion/camera/app/common/setting/ICameraSetting$ISettingChangeRequester;,
        Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
    }
.end annotation


# virtual methods
.method public abstract beforeUnInit()V
.end method

.method public abstract getDevicePictureStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;
.end method

.method public abstract getEntryValues()Ljava/util/List;
.end method

.method public abstract getISetting()Lcom/transsion/camera/app/common/setting/ISetting;
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract getParametersConfigure()Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
.end method

.method public abstract getPreviewStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;
.end method

.method public abstract getRecordingStateCallback()Lcom/transsion/camera/app/common/setting/ICameraSetting$RecordingStateCallback;
.end method

.method public abstract getSettingGroup()J
.end method

.method public abstract getSettingType()Lcom/transsion/camera/app/common/setting/ICameraSetting$SettingType;
.end method

.method public abstract getSupportedPlatformValues()Ljava/util/List;
.end method

.method public abstract getValue()Ljava/lang/String;
.end method

.method public abstract init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/storage/DataStore;)V
.end method

.method public abstract initializedRestrictionDone()V
.end method

.method public abstract onCameraClosedBefore()V
.end method

.method public abstract onCameraIdChanged(Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract onModeClosed(Ljava/lang/String;)V
.end method

.method public abstract onModeOpened(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;[Ljava/lang/String;)V
.end method

.method public abstract onModeUpdate([Ljava/lang/String;)V
.end method

.method public abstract overrideValues(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
.end method

.method public abstract pause()V
.end method

.method public abstract postRestrictionAfterInitialized()V
.end method

.method public abstract restoreToSupportedPlatformValue()V
.end method

.method public abstract resume()V
.end method

.method public abstract setModeFeatureConfig(Lcom/transsion/camera/app/common/IModeFeatureConfig;)V
.end method

.method public abstract setScreenFromType(I)V
.end method

.method public abstract setSettingDeviceRequester(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
.end method

.method public abstract setSettingGroup(J)V
.end method

.method public abstract unInit()V
.end method
