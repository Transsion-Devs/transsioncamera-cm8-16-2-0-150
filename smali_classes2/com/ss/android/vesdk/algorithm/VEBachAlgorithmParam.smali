.class public Lcom/ss/android/vesdk/algorithm/VEBachAlgorithmParam;
.super Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;
.source "SourceFile"


# instance fields
.field public algorithmConfig:Ljava/lang/String;

.field public graphName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;-><init>()V

    const/16 v0, 0x8

    .line 21
    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;->setAlgorithmType(I)V

    .line 22
    const-string v0, "Bach"

    invoke-virtual {p0, v0}, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;->setAlgorithmName(Ljava/lang/String;)V

    return-void
.end method
