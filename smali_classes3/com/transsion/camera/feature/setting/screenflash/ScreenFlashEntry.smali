.class public Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashEntry;
.super Lcom/transsion/camera/app/common/provider/FeatureEntryBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/transsion/camera/app/common/provider/SettingClassCategory;
    group = 0x2L
.end annotation


# instance fields
.field private final mFlashFacadeSupport:Z

.field private mScreenFlash:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 3

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 33
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p1

    iget-boolean p1, p1, Lcom/transsion/camera/utils/CustomConfigUtil;->mFlashFacadeSupport:Z

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashEntry;->mFlashFacadeSupport:Z

    return-void
.end method


# virtual methods
.method public createFeature()Ljava/lang/Object;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashEntry;->mScreenFlash:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    if-nez v0, :cond_b

    .line 39
    new-instance v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    invoke-direct {v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashEntry;->mScreenFlash:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    .line 41
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashEntry;->mScreenFlash:Lcom/transsion/camera/feature/setting/screenflash/ScreenFlash;

    return-object p0
.end method

.method public getFeatureName()Ljava/lang/String;
    .registers 1

    .line 51
    const-class p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .registers 1

    .line 46
    const-class p0, Lcom/transsion/camera/app/common/setting/ICameraSetting;

    return-object p0
.end method

.method public isSupport()Z
    .registers 1

    .line 56
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenFlashEntry;->mFlashFacadeSupport:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
