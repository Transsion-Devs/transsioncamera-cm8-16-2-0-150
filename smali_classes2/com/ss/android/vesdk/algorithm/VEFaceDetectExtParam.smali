.class public Lcom/ss/android/vesdk/algorithm/VEFaceDetectExtParam;
.super Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;
.source "SourceFile"


# instance fields
.field private dectectIntervalTime:I

.field private imageMode:Z

.field private useFastModel:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;-><init>()V

    const/16 v0, 0x1e

    .line 21
    iput v0, p0, Lcom/ss/android/vesdk/algorithm/VEFaceDetectExtParam;->dectectIntervalTime:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .registers 4

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;-><init>(ILjava/lang/String;Z)V

    const/16 p1, 0x1e

    .line 21
    iput p1, p0, Lcom/ss/android/vesdk/algorithm/VEFaceDetectExtParam;->dectectIntervalTime:I

    return-void
.end method


# virtual methods
.method public getDectectIntervalTime()I
    .registers 1

    .line 29
    iget p0, p0, Lcom/ss/android/vesdk/algorithm/VEFaceDetectExtParam;->dectectIntervalTime:I

    return p0
.end method

.method public isImageMode()Z
    .registers 1

    .line 37
    iget-boolean p0, p0, Lcom/ss/android/vesdk/algorithm/VEFaceDetectExtParam;->imageMode:Z

    return p0
.end method

.method public isUseFastModel()Z
    .registers 1

    .line 45
    iget-boolean p0, p0, Lcom/ss/android/vesdk/algorithm/VEFaceDetectExtParam;->useFastModel:Z

    return p0
.end method

.method public setDectectIntervalTime(I)V
    .registers 2

    .line 33
    iput p1, p0, Lcom/ss/android/vesdk/algorithm/VEFaceDetectExtParam;->dectectIntervalTime:I

    return-void
.end method

.method public setImageMode(Z)V
    .registers 2

    .line 41
    iput-boolean p1, p0, Lcom/ss/android/vesdk/algorithm/VEFaceDetectExtParam;->imageMode:Z

    return-void
.end method

.method public setUseFastModel(Z)V
    .registers 2

    .line 49
    iput-boolean p1, p0, Lcom/ss/android/vesdk/algorithm/VEFaceDetectExtParam;->useFastModel:Z

    return-void
.end method
