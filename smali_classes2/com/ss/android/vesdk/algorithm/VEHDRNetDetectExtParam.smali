.class public Lcom/ss/android/vesdk/algorithm/VEHDRNetDetectExtParam;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field modelPath:Ljava/lang/String;

.field useExternalModel:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getModelPath()Ljava/lang/String;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/ss/android/vesdk/algorithm/VEHDRNetDetectExtParam;->modelPath:Ljava/lang/String;

    return-object p0
.end method

.method public isUseExternalModel()Z
    .registers 1

    .line 11
    iget-boolean p0, p0, Lcom/ss/android/vesdk/algorithm/VEHDRNetDetectExtParam;->useExternalModel:Z

    return p0
.end method

.method public setModelPath(Ljava/lang/String;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/ss/android/vesdk/algorithm/VEHDRNetDetectExtParam;->modelPath:Ljava/lang/String;

    return-void
.end method

.method public setUseExternalModel(Z)V
    .registers 2

    .line 15
    iput-boolean p1, p0, Lcom/ss/android/vesdk/algorithm/VEHDRNetDetectExtParam;->useExternalModel:Z

    return-void
.end method
