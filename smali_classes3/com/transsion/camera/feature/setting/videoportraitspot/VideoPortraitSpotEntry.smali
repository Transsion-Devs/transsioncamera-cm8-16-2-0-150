.class public Lcom/transsion/camera/feature/setting/videoportraitspot/VideoPortraitSpotEntry;
.super Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/transsion/camera/app/common/provider/SettingClassCategory;
    group = 0x10L
.end annotation


# instance fields
.field private mVideoPortraitSpot:Lcom/transsion/camera/feature/setting/videoportraitspot/VideoPortraitSpot;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 3

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoportraitspot/VideoPortraitSpotEntry;->mVideoPortraitSpot:Lcom/transsion/camera/feature/setting/videoportraitspot/VideoPortraitSpot;

    if-nez v0, :cond_b

    .line 25
    new-instance v0, Lcom/transsion/camera/feature/setting/videoportraitspot/VideoPortraitSpot;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/videoportraitspot/VideoPortraitSpot;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/videoportraitspot/VideoPortraitSpotEntry;->mVideoPortraitSpot:Lcom/transsion/camera/feature/setting/videoportraitspot/VideoPortraitSpot;

    .line 28
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoportraitspot/VideoPortraitSpotEntry;->mVideoPortraitSpot:Lcom/transsion/camera/feature/setting/videoportraitspot/VideoPortraitSpot;

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .registers 1

    .line 38
    const-class p0, Lcom/transsion/camera/feature/setting/videoportraitspot/VideoPortraitSpotEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 33
    const-class p0, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    return-object p0
.end method

.method public isSupport()Z
    .registers 2

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/app/common/R$bool;->video_portrait_spot_enable:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method
