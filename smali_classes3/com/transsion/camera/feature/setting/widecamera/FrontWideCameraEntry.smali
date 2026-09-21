.class public Lcom/transsion/camera/feature/setting/widecamera/FrontWideCameraEntry;
.super Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/transsion/camera/app/common/provider/SettingClassCategory;
    group = 0x1L
.end annotation


# instance fields
.field private mWideCamera:Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;


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
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCameraEntry;->mWideCamera:Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;

    if-nez v0, :cond_b

    .line 24
    new-instance v0, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCameraEntry;->mWideCamera:Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;

    .line 26
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCameraEntry;->mWideCamera:Lcom/transsion/camera/feature/setting/widecamera/FrontWideCamera;

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .registers 1

    .line 36
    const-class p0, Lcom/transsion/camera/feature/setting/widecamera/FrontWideCameraEntry;

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
    .registers 1

    .line 41
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/CameraRepository;->getFrontWideCamera()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method
