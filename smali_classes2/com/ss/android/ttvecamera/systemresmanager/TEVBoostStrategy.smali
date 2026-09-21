.class public Lcom/ss/android/ttvecamera/systemresmanager/TEVBoostStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttvecamera/systemresmanager/ITESystemResourceStrategy;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public boostCpuFreq(I)V
    .registers 6

    .line 16
    sget-object p0, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;->CPU_FREQ_MIN:Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    invoke-static {p0}, Lcom/ss/android/ttvecamera/TEVBoostInterface;->isSupportCapability(Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;)Z

    move-result v0

    const/16 v1, 0x9

    if-eqz v0, :cond_e

    int-to-long v2, p1

    .line 17
    invoke-static {p0, v1, v2, v3}, Lcom/ss/android/ttvecamera/TEVBoostInterface;->requestCustomBoost(Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;IJ)I

    .line 19
    :cond_e
    sget-object p0, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;->CPU_FREQ_MAX:Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    invoke-static {p0}, Lcom/ss/android/ttvecamera/TEVBoostInterface;->isSupportCapability(Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;)Z

    move-result v0

    if-eqz v0, :cond_1a

    int-to-long v2, p1

    .line 20
    invoke-static {p0, v1, v2, v3}, Lcom/ss/android/ttvecamera/TEVBoostInterface;->requestCustomBoost(Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;IJ)I

    :cond_1a
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    .line 11
    invoke-static {p1}, Lcom/ss/android/ttvecamera/TEVBoostInterface;->init(Landroid/content/Context;)V

    return-void
.end method

.method public restoreCpuFreq()V
    .registers 2

    .line 26
    sget-object p0, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;->CPU_FREQ_MIN:Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    invoke-static {p0}, Lcom/ss/android/ttvecamera/TEVBoostInterface;->isSupportCapability(Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 27
    invoke-static {p0}, Lcom/ss/android/ttvecamera/TEVBoostInterface;->cancelRequest(Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;)I

    .line 29
    :cond_b
    sget-object p0, Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;->CPU_FREQ_MAX:Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;

    invoke-static {p0}, Lcom/ss/android/ttvecamera/TEVBoostInterface;->isSupportCapability(Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 30
    invoke-static {p0}, Lcom/ss/android/ttvecamera/TEVBoostInterface;->cancelRequest(Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;)I

    :cond_16
    return-void
.end method
