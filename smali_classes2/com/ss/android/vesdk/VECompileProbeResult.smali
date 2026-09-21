.class public Lcom/ss/android/vesdk/VECompileProbeResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bitrateStrategy:I

.field public enableHD:Z

.field public encoder_type:I

.field public pre_bitrate:F

.field public pre_crf:I

.field public pre_maxrate:I

.field public pre_preset:I

.field public pre_psnr:F


# direct methods
.method public constructor <init>(IIIIFFIZ)V
    .registers 9

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p1, p0, Lcom/ss/android/vesdk/VECompileProbeResult;->encoder_type:I

    .line 70
    iput p2, p0, Lcom/ss/android/vesdk/VECompileProbeResult;->pre_preset:I

    .line 71
    iput p3, p0, Lcom/ss/android/vesdk/VECompileProbeResult;->pre_crf:I

    .line 72
    iput p4, p0, Lcom/ss/android/vesdk/VECompileProbeResult;->pre_maxrate:I

    .line 73
    iput p5, p0, Lcom/ss/android/vesdk/VECompileProbeResult;->pre_bitrate:F

    .line 74
    iput p6, p0, Lcom/ss/android/vesdk/VECompileProbeResult;->pre_psnr:F

    .line 75
    iput p7, p0, Lcom/ss/android/vesdk/VECompileProbeResult;->bitrateStrategy:I

    .line 76
    iput-boolean p8, p0, Lcom/ss/android/vesdk/VECompileProbeResult;->enableHD:Z

    return-void
.end method
