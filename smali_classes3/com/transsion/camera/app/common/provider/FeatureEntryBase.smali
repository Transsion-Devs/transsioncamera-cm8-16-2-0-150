.class public abstract Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/provider/IFeatureEntry;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mContext:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .registers 1

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public createFeature(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 26
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->createFeature()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public createFeature(Ljava/lang/String;Lcom/transsion/camera/app/common/provider/FeatureParameters;)Ljava/lang/Object;
    .registers 3

    .line 36
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->createFeature(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public createFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract synthetic getFeatureName()Ljava/lang/String;
.end method

.method public abstract synthetic getType()Ljava/lang/Class;
.end method

.method public initResource()V
    .registers 1

    return-void
.end method

.method public isSupport()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public isSupport(Lcom/transsion/camera/adapter/ICameraDeviceInfo;)Z
    .registers 2

    .line 55
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->isSupport()Z

    move-result p0

    return p0
.end method

.method public unInitResource()V
    .registers 1

    return-void
.end method

.method public updateFeature(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    return-void
.end method
