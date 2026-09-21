.class public Lcom/meicam/sdk/NvsPosition2D;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(FF)V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/meicam/sdk/NvsPosition2D;->x:F

    .line 39
    iput p2, p0, Lcom/meicam/sdk/NvsPosition2D;->y:F

    return-void
.end method
