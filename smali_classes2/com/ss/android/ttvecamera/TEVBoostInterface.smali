.class public Lcom/ss/android/ttvecamera/TEVBoostInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;
    }
.end annotation


# static fields
.field public static final SHORTEST_TIMEOUT:I = 0x32

.field private static final TAG:Ljava/lang/String; = "TEVBoostInterface"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelRequest(Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;)I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public static getSupportCapabilities()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 1

    return-void
.end method

.method public static isSupportCapability(Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public static requestCpuBoost()V
    .registers 0

    return-void
.end method

.method public static requestCpuBoostLong()V
    .registers 0

    return-void
.end method

.method public static requestCpuLimit()V
    .registers 0

    return-void
.end method

.method public static requestCpuLimitLong()V
    .registers 0

    return-void
.end method

.method public static requestCustomBoost(Lcom/ss/android/ttvecamera/TEVBoostInterface$VBoostCapabilityType;IJ)I
    .registers 4

    const/4 p0, 0x0

    return p0
.end method

.method public static restoreCpuBoost()V
    .registers 0

    return-void
.end method

.method public static restoreCpuLimit()V
    .registers 0

    return-void
.end method
