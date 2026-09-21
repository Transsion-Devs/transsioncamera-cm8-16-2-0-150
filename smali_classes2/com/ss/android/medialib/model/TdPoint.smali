.class public Lcom/ss/android/medialib/model/TdPoint;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field x:F

.field y:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getX()F
    .registers 1

    .line 11
    iget p0, p0, Lcom/ss/android/medialib/model/TdPoint;->x:F

    return p0
.end method

.method public getY()F
    .registers 1

    .line 19
    iget p0, p0, Lcom/ss/android/medialib/model/TdPoint;->y:F

    return p0
.end method

.method public setX(F)V
    .registers 2

    .line 15
    iput p1, p0, Lcom/ss/android/medialib/model/TdPoint;->x:F

    return-void
.end method

.method public setY(F)V
    .registers 2

    .line 23
    iput p1, p0, Lcom/ss/android/medialib/model/TdPoint;->y:F

    return-void
.end method
