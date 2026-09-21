.class public Lcom/transsion/camera/app/common/livephoto/GyroTimeStampData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mGSensorX:F

.field mGSensorY:F

.field mGSensorZ:F

.field mGyroX:F

.field mGyroY:F

.field mGyroZ:F

.field mTimeStamp:J


# direct methods
.method public constructor <init>(JFFFFFF)V
    .registers 9

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide p1, p0, Lcom/transsion/camera/app/common/livephoto/GyroTimeStampData;->mTimeStamp:J

    .line 23
    iput p3, p0, Lcom/transsion/camera/app/common/livephoto/GyroTimeStampData;->mGSensorX:F

    .line 24
    iput p4, p0, Lcom/transsion/camera/app/common/livephoto/GyroTimeStampData;->mGSensorY:F

    .line 25
    iput p5, p0, Lcom/transsion/camera/app/common/livephoto/GyroTimeStampData;->mGSensorZ:F

    .line 26
    iput p6, p0, Lcom/transsion/camera/app/common/livephoto/GyroTimeStampData;->mGyroX:F

    .line 27
    iput p7, p0, Lcom/transsion/camera/app/common/livephoto/GyroTimeStampData;->mGyroY:F

    .line 28
    iput p8, p0, Lcom/transsion/camera/app/common/livephoto/GyroTimeStampData;->mGyroZ:F

    return-void
.end method


# virtual methods
.method public getGSensorX()F
    .registers 1

    .line 32
    iget p0, p0, Lcom/transsion/camera/app/common/livephoto/GyroTimeStampData;->mGSensorX:F

    return p0
.end method

.method public getGSensorY()F
    .registers 1

    .line 40
    iget p0, p0, Lcom/transsion/camera/app/common/livephoto/GyroTimeStampData;->mGSensorY:F

    return p0
.end method

.method public getGSensorZ()F
    .registers 1

    .line 48
    iget p0, p0, Lcom/transsion/camera/app/common/livephoto/GyroTimeStampData;->mGSensorZ:F

    return p0
.end method

.method public getGyroX()F
    .registers 1

    .line 64
    iget p0, p0, Lcom/transsion/camera/app/common/livephoto/GyroTimeStampData;->mGyroX:F

    return p0
.end method

.method public getGyroY()F
    .registers 1

    .line 72
    iget p0, p0, Lcom/transsion/camera/app/common/livephoto/GyroTimeStampData;->mGyroY:F

    return p0
.end method

.method public getGyroZ()F
    .registers 1

    .line 80
    iget p0, p0, Lcom/transsion/camera/app/common/livephoto/GyroTimeStampData;->mGyroZ:F

    return p0
.end method

.method public getTimeStamp()J
    .registers 3

    .line 56
    iget-wide v0, p0, Lcom/transsion/camera/app/common/livephoto/GyroTimeStampData;->mTimeStamp:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GyroTimeStampData{mTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/camera/app/common/livephoto/GyroTimeStampData;->mTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mGSensorX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/livephoto/GyroTimeStampData;->mGSensorX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mGSensorY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/livephoto/GyroTimeStampData;->mGSensorY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mGSensorZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/livephoto/GyroTimeStampData;->mGSensorZ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mGyroX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/livephoto/GyroTimeStampData;->mGyroX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mGyroY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/livephoto/GyroTimeStampData;->mGyroY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mGyroZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/common/livephoto/GyroTimeStampData;->mGyroZ:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
