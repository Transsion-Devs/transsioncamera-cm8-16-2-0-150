.class public Lcom/ss/android/vesdk/algorithm/VEFaceBeautyDetectExtParam;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private useV3Model:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isUseV3Model()Z
    .registers 1

    .line 9
    iget-boolean p0, p0, Lcom/ss/android/vesdk/algorithm/VEFaceBeautyDetectExtParam;->useV3Model:Z

    return p0
.end method

.method public setUseV3Model(Z)V
    .registers 2

    .line 13
    iput-boolean p1, p0, Lcom/ss/android/vesdk/algorithm/VEFaceBeautyDetectExtParam;->useV3Model:Z

    return-void
.end method
