.class public Lcom/transsion/camera/feature/setting/oneclickefficiency/OneClickEfficiencyEntry;
.super Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/transsion/camera/app/common/provider/SettingClassCategory;
    group = 0x428L
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
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/oneclickefficiency/OneClickEfficiencyEntry;->mSettingBase:Lcom/transsion/camera/app/common/setting/SettingBase;

    if-nez v0, :cond_b

    .line 27
    new-instance v0, Lcom/transsion/camera/feature/setting/oneclickefficiency/OneClickEfficiency;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/oneclickefficiency/OneClickEfficiency;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/oneclickefficiency/OneClickEfficiencyEntry;->mSettingBase:Lcom/transsion/camera/app/common/setting/SettingBase;

    .line 29
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/oneclickefficiency/OneClickEfficiencyEntry;->mSettingBase:Lcom/transsion/camera/app/common/setting/SettingBase;

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .registers 1

    .line 39
    const-class p0, Lcom/transsion/camera/feature/setting/oneclickefficiency/OneClickEfficiencyEntry;

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
    .registers 3

    .line 44
    iget-object v0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/transsion/camera/app/common/R$bool;->streetphoto_enable:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/app/common/R$bool;->motion_capture_mode_v2_support:I

    .line 45
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
