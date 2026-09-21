.class public Lcom/transsion/camera/feature/setting/whitebalance/WhiteBalanceEntry;
.super Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/transsion/camera/app/common/provider/SettingClassCategory;
    group = 0x1L
.end annotation


# instance fields
.field mWhiteBalance:Lcom/transsion/camera/feature/setting/whitebalance/WhiteBalance;


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
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/whitebalance/WhiteBalanceEntry;->mWhiteBalance:Lcom/transsion/camera/feature/setting/whitebalance/WhiteBalance;

    if-nez v0, :cond_b

    .line 24
    new-instance v0, Lcom/transsion/camera/feature/setting/whitebalance/WhiteBalance;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/whitebalance/WhiteBalance;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/whitebalance/WhiteBalanceEntry;->mWhiteBalance:Lcom/transsion/camera/feature/setting/whitebalance/WhiteBalance;

    .line 26
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/whitebalance/WhiteBalanceEntry;->mWhiteBalance:Lcom/transsion/camera/feature/setting/whitebalance/WhiteBalance;

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .registers 1

    .line 36
    const-class p0, Lcom/transsion/camera/feature/setting/whitebalance/WhiteBalanceEntry;

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
