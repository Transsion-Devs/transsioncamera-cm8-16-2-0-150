.class public Lcom/ss/android/vesdk/VEOptBitrate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public min_optBitrate:F

.field public min_optBitrate_HD:F

.field public optBitrate:F

.field public optBitrate_HD:F


# direct methods
.method public constructor <init>(FFFF)V
    .registers 5

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/ss/android/vesdk/VEOptBitrate;->min_optBitrate:F

    .line 36
    iput p2, p0, Lcom/ss/android/vesdk/VEOptBitrate;->optBitrate:F

    .line 37
    iput p3, p0, Lcom/ss/android/vesdk/VEOptBitrate;->min_optBitrate_HD:F

    .line 38
    iput p4, p0, Lcom/ss/android/vesdk/VEOptBitrate;->optBitrate_HD:F

    return-void
.end method
