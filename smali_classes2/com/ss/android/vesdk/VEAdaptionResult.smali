.class public Lcom/ss/android/vesdk/VEAdaptionResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public diffBitrate:F

.field public optBitrate:F


# direct methods
.method public constructor <init>(FF)V
    .registers 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/ss/android/vesdk/VEAdaptionResult;->optBitrate:F

    .line 24
    iput p2, p0, Lcom/ss/android/vesdk/VEAdaptionResult;->diffBitrate:F

    return-void
.end method
