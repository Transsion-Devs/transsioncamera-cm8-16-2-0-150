.class public Lcom/transsion/camera/feature/setting/flarecapture/FlareCaptureEntry;
.super Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/transsion/camera/app/common/provider/SettingClassCategory;
    group = 0x8L
.end annotation


# instance fields
.field private mSettingBase:Lcom/transsion/camera/app/common/setting/SettingBase;


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
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flarecapture/FlareCaptureEntry;->mSettingBase:Lcom/transsion/camera/app/common/setting/SettingBase;

    if-nez v0, :cond_b

    .line 27
    new-instance v0, Lcom/transsion/camera/feature/setting/flarecapture/FlareCapture;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/flarecapture/FlareCapture;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flarecapture/FlareCaptureEntry;->mSettingBase:Lcom/transsion/camera/app/common/setting/SettingBase;

    .line 29
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flarecapture/FlareCaptureEntry;->mSettingBase:Lcom/transsion/camera/app/common/setting/SettingBase;

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .registers 1

    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .registers 1

    .line 34
    const-class p0, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    return-object p0
.end method

.method public isSupport()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public isSupport(Lcom/transsion/camera/adapter/ICameraDeviceInfo;)Z
    .registers 2

    .line 49
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isFlareCaptureSupport()Z

    move-result p0

    return p0
.end method
