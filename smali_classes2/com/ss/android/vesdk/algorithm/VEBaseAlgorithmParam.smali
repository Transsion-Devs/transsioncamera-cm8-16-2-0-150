.class public Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAlgorithmName:Ljava/lang/String;

.field private mAlgorithmType:I

.field private mForInit:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;->mForInit:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .registers 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;->mAlgorithmType:I

    .line 28
    iput-object p2, p0, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;->mAlgorithmName:Ljava/lang/String;

    .line 29
    iput-boolean p3, p0, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;->mForInit:Z

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;->mAlgorithmName:Ljava/lang/String;

    return-object p0
.end method

.method public getAlgorithmType()I
    .registers 1

    .line 36
    iget p0, p0, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;->mAlgorithmType:I

    return p0
.end method

.method public getForInit()Z
    .registers 1

    .line 50
    iget-boolean p0, p0, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;->mForInit:Z

    return p0
.end method

.method public setAlgorithmName(Ljava/lang/String;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;->mAlgorithmName:Ljava/lang/String;

    return-void
.end method

.method public setAlgorithmType(I)V
    .registers 2

    .line 61
    iput p1, p0, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;->mAlgorithmType:I

    return-void
.end method

.method public setForInit(Z)V
    .registers 2

    .line 57
    iput-boolean p1, p0, Lcom/ss/android/vesdk/algorithm/VEBaseAlgorithmParam;->mForInit:Z

    return-void
.end method
