.class public Lcom/transsion/camera/feature/setting/antivideo/AntiVideoEntry;
.super Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/transsion/camera/app/common/provider/SettingClassCategory;
    group = 0x1040c0010L
.end annotation


# instance fields
.field private mAntiVideo:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 3

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoEntry;->mAntiVideo:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;

    if-nez v0, :cond_b

    .line 28
    new-instance v0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoEntry;->mAntiVideo:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;

    .line 30
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoEntry;->mAntiVideo:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .registers 1

    .line 40
    const-class p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .registers 1

    .line 35
    const-class p0, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    return-object p0
.end method
