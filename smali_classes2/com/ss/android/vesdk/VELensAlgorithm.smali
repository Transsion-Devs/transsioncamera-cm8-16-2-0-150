.class public Lcom/ss/android/vesdk/VELensAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/vesdk/VELensAlgorithm$VEAlgorithmFlag;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VELensAlgorithm"


# instance fields
.field private mLensHandle:Lcom/ss/android/ttve/nativePort/TELensAlgorithm;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/ss/android/ttve/nativePort/TELensAlgorithm;

    invoke-direct {v0}, Lcom/ss/android/ttve/nativePort/TELensAlgorithm;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/VELensAlgorithm;->mLensHandle:Lcom/ss/android/ttve/nativePort/TELensAlgorithm;

    return-void
.end method


# virtual methods
.method public destroy()I
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/ss/android/vesdk/VELensAlgorithm;->mLensHandle:Lcom/ss/android/ttve/nativePort/TELensAlgorithm;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TELensAlgorithm;->destroy()I

    move-result p0

    return p0
.end method

.method public getAlgorithmResults(Lcom/ss/android/ttve/lensAlgorithm/VEBaseLensAlgorithmConfig;Lcom/ss/android/vesdk/VEListener$VELensStateListener;)Lcom/ss/android/ttve/lensAlgorithm/VEBaseLensResults;
    .registers 4

    .line 64
    new-instance v0, Lcom/ss/android/vesdk/VELensCallBacks;

    invoke-direct {v0}, Lcom/ss/android/vesdk/VELensCallBacks;-><init>()V

    .line 65
    invoke-virtual {v0, p2}, Lcom/ss/android/vesdk/VELensCallBacks;->setmLensStateListener(Ljava/lang/Object;)V

    .line 66
    iget-object p0, p0, Lcom/ss/android/vesdk/VELensAlgorithm;->mLensHandle:Lcom/ss/android/ttve/nativePort/TELensAlgorithm;

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/ttve/nativePort/TELensAlgorithm;->getAlgorithmResults(Lcom/ss/android/ttve/lensAlgorithm/VEBaseLensAlgorithmConfig;Ljava/lang/Object;)Lcom/ss/android/ttve/lensAlgorithm/VEBaseLensResults;

    move-result-object p0

    return-object p0
.end method

.method public init()I
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/ss/android/vesdk/VELensAlgorithm;->mLensHandle:Lcom/ss/android/ttve/nativePort/TELensAlgorithm;

    invoke-virtual {p0}, Lcom/ss/android/ttve/nativePort/TELensAlgorithm;->init()I

    move-result p0

    return p0
.end method
