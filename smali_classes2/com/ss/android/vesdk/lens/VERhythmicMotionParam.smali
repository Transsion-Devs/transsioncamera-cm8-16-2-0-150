.class public Lcom/ss/android/vesdk/lens/VERhythmicMotionParam;
.super Lcom/ss/android/vesdk/lens/VEBaseRecorderLensParams;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public cropList:[F

.field public maxAlpha:F

.field public maxVelocity:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Lcom/ss/android/vesdk/lens/VEBaseRecorderLensParams;-><init>()V

    const/4 v0, 0x3

    .line 13
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/ss/android/vesdk/lens/VERhythmicMotionParam;->cropList:[F

    const/16 v0, 0x1d

    .line 29
    iput v0, p0, Lcom/ss/android/vesdk/lens/VEBaseRecorderLensParams;->algorithmFlag:I

    return-void
.end method
