.class public Lcom/transsion/camera/feature/setting/asd/background/TapsAsdParameterConfig;
.super Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/asd/Asd;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 4

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;-><init>(Lcom/transsion/camera/feature/setting/asd/Asd;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V

    return-void
.end method


# virtual methods
.method protected createShot2ShotSkipPolicy(Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;)Lcom/transsion/camera/feature/setting/asd/AsdShot2ShotSkipPolicy;
    .registers 3

    .line 20
    new-instance p0, Lcom/transsion/camera/feature/setting/asd/background/TapsAsdShot2ShotSkipPolicy;

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/asd/background/TapsAsdShot2ShotSkipPolicy;-><init>(Lcom/transsion/camera/feature/setting/asd/features/GlobalFeatures;Lcom/transsion/camera/feature/setting/asd/features/ModeFeatures;)V

    return-object p0
.end method

.method protected onCaptureJpegEnd()V
    .registers 2

    .line 25
    invoke-static {}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->getInstance()Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManagerProxy;->isSupportDefer()Z

    move-result v0

    if-nez v0, :cond_e

    .line 26
    invoke-super {p0}, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->onCaptureJpegEnd()V

    return-void

    .line 28
    :cond_e
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/AsdParameterConfig;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onCaptureJpegEnd[TapsAsdParameterConfig]: ignore"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
