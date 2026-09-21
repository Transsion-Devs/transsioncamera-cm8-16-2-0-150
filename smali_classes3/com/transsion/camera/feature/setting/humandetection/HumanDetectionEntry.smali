.class public Lcom/transsion/camera/feature/setting/humandetection/HumanDetectionEntry;
.super Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/transsion/camera/app/common/provider/SettingClassCategory;
    group = 0x1418L
.end annotation


# instance fields
.field private mHumanDetection:Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 3

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetectionEntry;->mHumanDetection:Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;

    if-nez v0, :cond_b

    .line 37
    new-instance v0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetectionEntry;->mHumanDetection:Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;

    .line 39
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetectionEntry;->mHumanDetection:Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .registers 1

    .line 49
    const-class p0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetectionEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .registers 1

    .line 44
    const-class p0, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    return-object p0
.end method
