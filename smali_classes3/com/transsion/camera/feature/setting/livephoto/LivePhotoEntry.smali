.class public Lcom/transsion/camera/feature/setting/livephoto/LivePhotoEntry;
.super Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/transsion/camera/app/common/provider/SettingClassCategory;
    group = 0x8L
.end annotation


# instance fields
.field private mLivePhoto:Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 3

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhotoEntry;->mLivePhoto:Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;

    if-nez v0, :cond_b

    .line 26
    new-instance v0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhotoEntry;->mLivePhoto:Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;

    .line 28
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhotoEntry;->mLivePhoto:Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .registers 1

    .line 38
    const-class p0, Lcom/transsion/camera/feature/setting/livephoto/LivePhoto;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .registers 1

    .line 33
    const-class p0, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    return-object p0
.end method

.method public isSupport()Z
    .registers 1

    .line 43
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mLivePhotoSupport:Z

    return p0
.end method
