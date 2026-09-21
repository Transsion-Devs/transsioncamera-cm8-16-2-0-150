.class public Lcom/transsion/camera/ui/setting/flash/FlashSettingUIFactory$Params;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/flash/FlashSettingUIFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Params"
.end annotation


# instance fields
.field private final mDefaultFlashStrengthMode:I

.field private final mFrontDualFlashSupport:Z

.field private final mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

.field private final mUseNewLuminanceInteraction:Z


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;IZZ)V
    .registers 5

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIFactory$Params;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 41
    iput p2, p0, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIFactory$Params;->mDefaultFlashStrengthMode:I

    .line 42
    iput-boolean p3, p0, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIFactory$Params;->mUseNewLuminanceInteraction:Z

    .line 43
    iput-boolean p4, p0, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIFactory$Params;->mFrontDualFlashSupport:Z

    return-void
.end method


# virtual methods
.method public getDefaultFlashStrengthMode()I
    .registers 1

    .line 51
    iget p0, p0, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIFactory$Params;->mDefaultFlashStrengthMode:I

    return p0
.end method

.method public getSettingUISpec()Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIFactory$Params;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    return-object p0
.end method

.method public isFrontDualFlashSupport()Z
    .registers 1

    .line 59
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIFactory$Params;->mFrontDualFlashSupport:Z

    return p0
.end method

.method public isUseNewLuminanceInteraction()Z
    .registers 1

    .line 55
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/flash/FlashSettingUIFactory$Params;->mUseNewLuminanceInteraction:Z

    return p0
.end method
