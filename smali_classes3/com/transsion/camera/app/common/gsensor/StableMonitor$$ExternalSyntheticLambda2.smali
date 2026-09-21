.class public final synthetic Lcom/transsion/camera/app/common/gsensor/StableMonitor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsDouble(Ljava/lang/Object;)D
    .registers 2

    .line 0
    check-cast p1, Lcom/transsion/camera/app/common/gsensor/GyroData;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/gsensor/GyroData;->getGyroYAbsValue()F

    move-result p0

    float-to-double p0, p0

    return-wide p0
.end method
