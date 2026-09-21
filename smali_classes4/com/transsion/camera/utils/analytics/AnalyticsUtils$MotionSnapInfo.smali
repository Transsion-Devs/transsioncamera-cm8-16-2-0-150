.class public Lcom/transsion/camera/utils/analytics/AnalyticsUtils$MotionSnapInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/analytics/AnalyticsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MotionSnapInfo"
.end annotation


# instance fields
.field public final mBanding:I

.field public final mMainFreq:F

.field public final mMotionIntensity:I

.field public final mSnapButtonValue:I

.field public final mSnapTriggerMode:I

.field public final mSnapType:I


# direct methods
.method public constructor <init>(IIIIFI)V
    .registers 7

    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 627
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$MotionSnapInfo;->mSnapButtonValue:I

    .line 628
    iput p2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$MotionSnapInfo;->mSnapType:I

    .line 629
    iput p3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$MotionSnapInfo;->mSnapTriggerMode:I

    .line 630
    iput p4, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$MotionSnapInfo;->mBanding:I

    .line 631
    iput p5, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$MotionSnapInfo;->mMainFreq:F

    .line 632
    iput p6, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$MotionSnapInfo;->mMotionIntensity:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MotionCaptureInfo{mSnapButtonValue=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$MotionSnapInfo;->mSnapButtonValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mSnapType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$MotionSnapInfo;->mSnapType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSnapTriggerMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$MotionSnapInfo;->mSnapTriggerMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBanding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$MotionSnapInfo;->mBanding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMainFreq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$MotionSnapInfo;->mMainFreq:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mMotionIntensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$MotionSnapInfo;->mMotionIntensity:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
