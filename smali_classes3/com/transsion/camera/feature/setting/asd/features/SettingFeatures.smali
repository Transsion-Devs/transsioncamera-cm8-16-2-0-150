.class public Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mIsNightLiteOpened:Z

.field public mIsNightShotOpened:Z

.field public mIsSuperResolutionOpend:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;->mIsNightLiteOpened:Z

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;->mIsSuperResolutionOpend:Z

    .line 6
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;->mIsNightShotOpened:Z

    return-void
.end method


# virtual methods
.method public isNightLiteOpened()Z
    .registers 1

    .line 13
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;->mIsNightLiteOpened:Z

    return p0
.end method

.method public isNightShotOpened()Z
    .registers 1

    .line 29
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;->mIsNightShotOpened:Z

    return p0
.end method

.method public isSuperResolutionOpend()Z
    .registers 1

    .line 21
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;->mIsSuperResolutionOpend:Z

    return p0
.end method

.method public setNightLiteOpened(Z)V
    .registers 2

    .line 9
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;->mIsNightLiteOpened:Z

    return-void
.end method

.method public setNightShotOpenState(Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;->mIsNightShotOpened:Z

    return-void
.end method

.method public setSuperResolutionOpend(Z)V
    .registers 2

    .line 17
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/features/SettingFeatures;->mIsSuperResolutionOpend:Z

    return-void
.end method
