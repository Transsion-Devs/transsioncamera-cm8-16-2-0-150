.class public Lcom/transsion/camera/feature/setting/zsl/ZSLEntry;
.super Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/transsion/camera/app/common/provider/SettingClassCategory;
    group = 0x2L
.end annotation


# instance fields
.field private mZSL:Lcom/transsion/camera/feature/setting/zsl/ZSL;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 3

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/zsl/ZSLEntry;->mZSL:Lcom/transsion/camera/feature/setting/zsl/ZSL;

    if-nez v0, :cond_b

    .line 23
    new-instance v0, Lcom/transsion/camera/feature/setting/zsl/ZSL;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/zsl/ZSL;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/zsl/ZSLEntry;->mZSL:Lcom/transsion/camera/feature/setting/zsl/ZSL;

    .line 25
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/zsl/ZSLEntry;->mZSL:Lcom/transsion/camera/feature/setting/zsl/ZSL;

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .registers 1

    .line 35
    const-class p0, Lcom/transsion/camera/feature/setting/zsl/ZSL;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .registers 1

    .line 30
    const-class p0, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    return-object p0
.end method
