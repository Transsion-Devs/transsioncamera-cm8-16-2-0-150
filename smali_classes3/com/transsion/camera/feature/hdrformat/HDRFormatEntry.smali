.class public Lcom/transsion/camera/feature/hdrformat/HDRFormatEntry;
.super Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/transsion/camera/app/common/provider/SettingClassCategory;
    group = 0x10L
.end annotation


# instance fields
.field mHDRFormat:Lcom/transsion/camera/feature/hdrformat/HDRFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 3

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/transsion/camera/feature/hdrformat/HDRFormatEntry;->mHDRFormat:Lcom/transsion/camera/feature/hdrformat/HDRFormat;

    if-nez v0, :cond_b

    .line 23
    new-instance v0, Lcom/transsion/camera/feature/hdrformat/HDRFormat;

    invoke-direct {v0}, Lcom/transsion/camera/feature/hdrformat/HDRFormat;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/hdrformat/HDRFormatEntry;->mHDRFormat:Lcom/transsion/camera/feature/hdrformat/HDRFormat;

    .line 25
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/feature/hdrformat/HDRFormatEntry;->mHDRFormat:Lcom/transsion/camera/feature/hdrformat/HDRFormat;

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .registers 1

    .line 34
    const-class p0, Lcom/transsion/camera/feature/hdrformat/HDRFormat;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .registers 1

    .line 29
    const-class p0, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    return-object p0
.end method

.method public isSupport()Z
    .registers 1

    .line 39
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mProductConfigHDRFormatSupport:Z

    return p0
.end method
