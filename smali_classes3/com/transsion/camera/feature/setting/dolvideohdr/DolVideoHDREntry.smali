.class public Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDREntry;
.super Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/transsion/camera/app/common/provider/SettingClassCategory;
    group = 0x10L
.end annotation


# instance fields
.field private mHdr:Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 3

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDREntry;->mHdr:Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR;

    if-nez v0, :cond_b

    .line 33
    new-instance v0, Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDREntry;->mHdr:Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR;

    .line 35
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDREntry;->mHdr:Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDR;

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .registers 1

    .line 45
    const-class p0, Lcom/transsion/camera/feature/setting/dolvideohdr/DolVideoHDREntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .registers 1

    .line 40
    const-class p0, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    return-object p0
.end method

.method public isSupport()Z
    .registers 2

    .line 50
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->getHdr10PlusSupport()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x1

    return p0

    .line 53
    :cond_c
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/app/common/R$bool;->dol_video_hdr_support:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method
