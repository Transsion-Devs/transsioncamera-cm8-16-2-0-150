.class public Lcom/transsion/camera/feature/setting/autovideofps/AutoVideoFPSEntry;
.super Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/transsion/camera/app/common/provider/SettingClassCategory;
    group = 0x4000010L
.end annotation


# instance fields
.field private final mIsSupported:Z

.field private mSettingBase:Lcom/transsion/camera/app/common/setting/SettingBase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 3

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 29
    const-string p1, "auto_video_fps_support"

    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/autovideofps/AutoVideoFPSEntry;->mIsSupported:Z

    return-void
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/autovideofps/AutoVideoFPSEntry;->mSettingBase:Lcom/transsion/camera/app/common/setting/SettingBase;

    if-nez v0, :cond_b

    .line 38
    new-instance v0, Lcom/transsion/camera/feature/setting/autovideofps/AutoVideoFPS;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/autovideofps/AutoVideoFPS;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/autovideofps/AutoVideoFPSEntry;->mSettingBase:Lcom/transsion/camera/app/common/setting/SettingBase;

    .line 40
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autovideofps/AutoVideoFPSEntry;->mSettingBase:Lcom/transsion/camera/app/common/setting/SettingBase;

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .registers 1

    .line 55
    const-class p0, Lcom/transsion/camera/feature/setting/autovideofps/AutoVideoFPSEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .registers 1

    .line 45
    const-class p0, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    return-object p0
.end method

.method public isSupport()Z
    .registers 1

    .line 50
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/autovideofps/AutoVideoFPSEntry;->mIsSupported:Z

    return p0
.end method
