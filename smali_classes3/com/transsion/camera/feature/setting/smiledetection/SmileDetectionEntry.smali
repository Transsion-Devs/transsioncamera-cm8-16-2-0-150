.class public Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectionEntry;
.super Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/transsion/camera/app/common/provider/SettingClassCategory;
    group = 0x100283c8L
.end annotation


# instance fields
.field private mSmileDetection:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 3

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectionEntry;->mSmileDetection:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    if-nez v0, :cond_b

    .line 32
    new-instance v0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectionEntry;->mSmileDetection:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    .line 34
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectionEntry;->mSmileDetection:Lcom/transsion/camera/feature/setting/smiledetection/SmileDetection;

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .registers 1

    .line 44
    const-class p0, Lcom/transsion/camera/feature/setting/smiledetection/SmileDetectionEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .registers 1

    .line 39
    const-class p0, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    return-object p0
.end method

.method public isSupport()Z
    .registers 2

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/transsion/camera/app/common/R$bool;->smile_detection_support:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method
