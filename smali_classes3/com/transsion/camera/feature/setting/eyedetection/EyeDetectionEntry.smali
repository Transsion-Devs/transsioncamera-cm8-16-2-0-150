.class public Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionEntry;
.super Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/transsion/camera/app/common/provider/SettingClassCategory;
    group = 0x30001418L
.end annotation


# instance fields
.field private mEyeDetection:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 3

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionEntry;->mEyeDetection:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

    if-nez v0, :cond_b

    .line 30
    new-instance v0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionEntry;->mEyeDetection:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

    .line 32
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionEntry;->mEyeDetection:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .registers 1

    .line 42
    const-class p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .registers 1

    .line 37
    const-class p0, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    return-object p0
.end method
