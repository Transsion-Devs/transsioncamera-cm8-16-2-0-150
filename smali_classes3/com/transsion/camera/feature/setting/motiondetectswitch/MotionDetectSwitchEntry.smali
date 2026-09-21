.class public Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitchEntry;
.super Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/transsion/camera/app/common/provider/SettingClassCategory;
    group = 0x408L
.end annotation


# instance fields
.field private mSetting:Lcom/transsion/camera/app/common/setting/SettingBase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 3

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitchEntry;->mSetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    if-nez v0, :cond_3a

    .line 27
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->supportMotionCaptureInAICAM()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 28
    new-instance v0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapLite;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitchEntry;->mSetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    goto :goto_3a

    .line 29
    :cond_16
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isSupportFlashSnapV2()Z

    move-result v0

    if-nez v0, :cond_33

    .line 30
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isSupportFlashSnapV2_G100_ForOSUpToW()Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_33

    .line 33
    :cond_2b
    new-instance v0, Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitch;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitch;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitchEntry;->mSetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    goto :goto_3a

    .line 31
    :cond_33
    :goto_33
    new-instance v0, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapV2;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/motiondetectswitch/FlashSnapV2;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitchEntry;->mSetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    .line 36
    :cond_3a
    :goto_3a
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitchEntry;->mSetting:Lcom/transsion/camera/app/common/setting/SettingBase;

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .registers 1

    .line 46
    const-class p0, Lcom/transsion/camera/feature/setting/motiondetectswitch/MotionDetectSwitchEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .registers 1

    .line 41
    const-class p0, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    return-object p0
.end method

.method public isSupport()Z
    .registers 3

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/app/common/R$bool;->motion_capture_mode_support:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/app/common/R$bool;->motion_capture_mode_v2_support:I

    .line 52
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method
