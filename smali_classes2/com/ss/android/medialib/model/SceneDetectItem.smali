.class public Lcom/ss/android/medialib/model/SceneDetectItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field prob:F

.field satisfied:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProb()F
    .registers 1

    .line 13
    iget p0, p0, Lcom/ss/android/medialib/model/SceneDetectItem;->prob:F

    return p0
.end method

.method public isSatisfied()Z
    .registers 1

    .line 21
    iget-boolean p0, p0, Lcom/ss/android/medialib/model/SceneDetectItem;->satisfied:Z

    return p0
.end method

.method public setProb(F)V
    .registers 2

    .line 17
    iput p1, p0, Lcom/ss/android/medialib/model/SceneDetectItem;->prob:F

    return-void
.end method

.method public setSatisfied(Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/ss/android/medialib/model/SceneDetectItem;->satisfied:Z

    return-void
.end method
