.class public Lcom/ss/android/vesdk/LandMarkFrame;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private FOVAngle:[F

.field private quaternion:[F

.field private sensorTimestamp:D


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFOVAngle()[F
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/ss/android/vesdk/LandMarkFrame;->FOVAngle:[F

    return-object p0
.end method

.method public getQuaternion()[F
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/ss/android/vesdk/LandMarkFrame;->quaternion:[F

    return-object p0
.end method

.method public getSensorTimestamp()D
    .registers 3

    .line 22
    iget-wide v0, p0, Lcom/ss/android/vesdk/LandMarkFrame;->sensorTimestamp:D

    return-wide v0
.end method

.method public setFOVAngle([F)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/ss/android/vesdk/LandMarkFrame;->FOVAngle:[F

    return-void
.end method

.method setInfo(D[F[F)V
    .registers 5

    .line 16
    iput-wide p1, p0, Lcom/ss/android/vesdk/LandMarkFrame;->sensorTimestamp:D

    .line 17
    iput-object p3, p0, Lcom/ss/android/vesdk/LandMarkFrame;->quaternion:[F

    .line 18
    iput-object p4, p0, Lcom/ss/android/vesdk/LandMarkFrame;->FOVAngle:[F

    return-void
.end method

.method public setQuaternion([F)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/ss/android/vesdk/LandMarkFrame;->quaternion:[F

    return-void
.end method

.method public setSensorTimestamp(D)V
    .registers 3

    .line 26
    iput-wide p1, p0, Lcom/ss/android/vesdk/LandMarkFrame;->sensorTimestamp:D

    return-void
.end method
