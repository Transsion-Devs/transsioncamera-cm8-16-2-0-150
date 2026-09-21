.class public Lcom/transsion/camera/feature/setting/flash/FlashEntry;
.super Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/transsion/camera/app/common/provider/SettingClassCategory;
    group = 0x1L
.end annotation


# instance fields
.field private mFlash:Lcom/transsion/camera/app/common/setting/SettingBase;

.field private final mFlashFacadeSupport:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 3

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 35
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mFlashFacadeSupport:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flash/FlashEntry;->mFlashFacadeSupport:Z

    return-void
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flash/FlashEntry;->mFlash:Lcom/transsion/camera/app/common/setting/SettingBase;

    if-nez v0, :cond_17

    .line 42
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flash/FlashEntry;->mFlashFacadeSupport:Z

    if-eqz v0, :cond_10

    .line 43
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/flashfacade/FlashFacade;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flash/FlashEntry;->mFlash:Lcom/transsion/camera/app/common/setting/SettingBase;

    goto :goto_17

    .line 45
    :cond_10
    new-instance v0, Lcom/transsion/camera/feature/setting/flash/Flash;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/flash/Flash;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flash/FlashEntry;->mFlash:Lcom/transsion/camera/app/common/setting/SettingBase;

    .line 48
    :cond_17
    :goto_17
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flash/FlashEntry;->mFlash:Lcom/transsion/camera/app/common/setting/SettingBase;

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .registers 1

    .line 58
    const-class p0, Lcom/transsion/camera/feature/setting/flash/FlashEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .registers 1

    .line 53
    const-class p0, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    return-object p0
.end method
