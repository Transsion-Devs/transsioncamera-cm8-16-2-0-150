.class public Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpSettingEntry;
.super Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/transsion/camera/app/common/provider/SettingClassCategory;
    group = 0x10L
.end annotation


# instance fields
.field private mVideoMakeUpSetting:Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpSetting;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 3

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpSettingEntry;->mVideoMakeUpSetting:Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpSetting;

    if-nez v0, :cond_b

    .line 35
    new-instance v0, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpSetting;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpSetting;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpSettingEntry;->mVideoMakeUpSetting:Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpSetting;

    .line 37
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpSettingEntry;->mVideoMakeUpSetting:Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpSetting;

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .registers 1

    .line 47
    const-class p0, Lcom/transsion/camera/feature/setting/makeup/VideoMakeUpSettingEntry;

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

    .line 42
    const-class p0, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    return-object p0
.end method
