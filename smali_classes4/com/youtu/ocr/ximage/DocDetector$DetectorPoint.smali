.class public Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youtu/ocr/ximage/DocDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DetectorPoint"
.end annotation


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(FF)V
    .registers 3

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput p1, p0, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->x:F

    .line 281
    iput p2, p0, Lcom/youtu/ocr/ximage/DocDetector$DetectorPoint;->y:F

    return-void
.end method
