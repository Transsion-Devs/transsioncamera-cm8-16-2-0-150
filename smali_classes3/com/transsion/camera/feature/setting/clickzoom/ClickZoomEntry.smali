.class public Lcom/transsion/camera/feature/setting/clickzoom/ClickZoomEntry;
.super Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/transsion/camera/app/common/provider/SettingClassCategory;
    group = 0x40810bc8L
.end annotation


# instance fields
.field mClickZoom:Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 3

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoomEntry;->mClickZoom:Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;

    if-nez v0, :cond_b

    .line 34
    new-instance v0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoomEntry;->mClickZoom:Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;

    .line 36
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoomEntry;->mClickZoom:Lcom/transsion/camera/feature/setting/clickzoom/ClickZoom;

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .registers 1

    .line 46
    const-class p0, Lcom/transsion/camera/feature/setting/clickzoom/ClickZoomEntry;

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
