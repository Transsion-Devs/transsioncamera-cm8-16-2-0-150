.class public Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private m4CellSupport:Z

.field private mFastSuperNightSupport:Z

.field private mRawSRSupport:Z

.field private mSatSupport:Z

.field private mSensorRect:Landroid/graphics/Rect;

.field private mSuperDefinitionSupport:Z

.field private mSuperResolutionSupport:Z

.field private mTranssionHdrSupport:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSensorRect()Landroid/graphics/Rect;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->mSensorRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public isHwSupport4Cell()Z
    .registers 1

    .line 71
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->m4CellSupport:Z

    return p0
.end method

.method public isHwSupportFastSuperNight()Z
    .registers 1

    .line 55
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->mFastSuperNightSupport:Z

    return p0
.end method

.method public isHwSupportRawSR()Z
    .registers 1

    .line 39
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->mRawSRSupport:Z

    return p0
.end method

.method public isHwSupportSat()Z
    .registers 1

    .line 63
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->mSatSupport:Z

    return p0
.end method

.method public isHwSupportSuperDefinition()Z
    .registers 1

    .line 79
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->mSuperDefinitionSupport:Z

    return p0
.end method

.method public isHwSupportSuperResolution()Z
    .registers 1

    .line 47
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->mSuperResolutionSupport:Z

    return p0
.end method

.method public isHwSupportTranssionHdr()Z
    .registers 1

    .line 87
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->mTranssionHdrSupport:Z

    return p0
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->mRawSRSupport:Z

    .line 25
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->mSuperResolutionSupport:Z

    .line 26
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->mFastSuperNightSupport:Z

    .line 27
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->mSatSupport:Z

    .line 28
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->m4CellSupport:Z

    .line 29
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->mSuperDefinitionSupport:Z

    .line 30
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->mTranssionHdrSupport:Z

    .line 31
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->mSensorRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setHwSupport4Cell(Z)V
    .registers 2

    .line 67
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->m4CellSupport:Z

    return-void
.end method

.method public setHwSupportFastSuperNight(Z)V
    .registers 2

    .line 51
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->mFastSuperNightSupport:Z

    return-void
.end method

.method public setHwSupportRawSR(Z)V
    .registers 2

    .line 35
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->mRawSRSupport:Z

    return-void
.end method

.method public setHwSupportSat(Z)V
    .registers 2

    .line 59
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->mSatSupport:Z

    return-void
.end method

.method public setHwSupportSuperDefinition(Z)V
    .registers 2

    .line 75
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->mSuperDefinitionSupport:Z

    return-void
.end method

.method public setHwSupportSuperResolution(Z)V
    .registers 2

    .line 43
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->mSuperResolutionSupport:Z

    return-void
.end method

.method public setHwSupportTranssionHdr(Z)V
    .registers 2

    .line 83
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->mTranssionHdrSupport:Z

    return-void
.end method

.method public setSensorRect(Landroid/graphics/Rect;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/asd/features/HardwareFeatures;->mSensorRect:Landroid/graphics/Rect;

    return-void
.end method
