.class public Lcom/transsion/camera/feature/setting/zoom/ZoomEntry;
.super Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/transsion/camera/app/common/provider/SettingClassCategory;
    group = 0x1L
.end annotation


# instance fields
.field mZoom:Lcom/transsion/camera/app/common/setting/ICameraSetting;


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
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomEntry;->mZoom:Lcom/transsion/camera/app/common/setting/ICameraSetting;

    if-nez v0, :cond_17

    .line 25
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Lcom/transsion/camera/feature/setting/zoom/Zoom5;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom5;-><init>()V

    goto :goto_15

    :cond_10
    new-instance v0, Lcom/transsion/camera/feature/setting/zoom/Zoom;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/zoom/Zoom;-><init>()V

    :goto_15
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomEntry;->mZoom:Lcom/transsion/camera/app/common/setting/ICameraSetting;

    .line 27
    :cond_17
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zoom/ZoomEntry;->mZoom:Lcom/transsion/camera/app/common/setting/ICameraSetting;

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .registers 1

    .line 37
    const-class p0, Lcom/transsion/camera/feature/setting/zoom/ZoomEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .registers 1

    .line 32
    const-class p0, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    return-object p0
.end method
