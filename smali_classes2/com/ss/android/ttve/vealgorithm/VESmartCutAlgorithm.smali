.class public Lcom/ss/android/ttve/vealgorithm/VESmartCutAlgorithm;
.super Lcom/ss/android/ttve/vealgorithm/VEAlgorithm;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Lcom/ss/android/ttve/vealgorithm/VEAlgorithm;-><init>()V

    return-void
.end method


# virtual methods
.method public getRandomResult()Lcom/ss/android/ttve/vealgorithm/params/VESmartCutResult;
    .registers 5

    .line 11
    iget-wide v0, p0, Lcom/ss/android/ttve/vealgorithm/VEAlgorithm;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 15
    :cond_a
    invoke-virtual {p0, v0, v1}, Lcom/ss/android/ttve/vealgorithm/VEAlgorithm;->nativeAlgorithmGetRandomResult(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ss/android/ttve/vealgorithm/params/VESmartCutResult;

    return-object p0
.end method
