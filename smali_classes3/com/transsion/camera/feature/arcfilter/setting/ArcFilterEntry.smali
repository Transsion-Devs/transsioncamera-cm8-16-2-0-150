.class public Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterEntry;
.super Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/transsion/camera/app/common/provider/SettingClassCategory;
    group = 0x8L
.end annotation


# instance fields
.field private mArcFilter:Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 3

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterEntry;->mArcFilter:Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;

    if-nez v0, :cond_1e

    .line 24
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->supportColorStyle()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_17

    :cond_11
    new-instance v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;

    invoke-direct {v0}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;-><init>()V

    goto :goto_1c

    :cond_17
    :goto_17
    new-instance v0, Lcom/transsion/camera/feature/arcfilter/setting/SimpleArcFilter;

    invoke-direct {v0}, Lcom/transsion/camera/feature/arcfilter/setting/SimpleArcFilter;-><init>()V

    :goto_1c
    iput-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterEntry;->mArcFilter:Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;

    .line 26
    :cond_1e
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterEntry;->mArcFilter:Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .registers 1

    .line 36
    const-class p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .registers 1

    .line 31
    const-class p0, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    return-object p0
.end method

.method public isSupport()Z
    .registers 2

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/app/common/R$bool;->tran_filter_support:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method
