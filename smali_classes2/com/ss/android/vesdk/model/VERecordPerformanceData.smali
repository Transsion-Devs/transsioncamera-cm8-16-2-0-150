.class public Lcom/ss/android/vesdk/model/VERecordPerformanceData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public concatAfterWriteFile:J

.field public concatInit:J

.field public concatPreProcess:J

.field public concatWriteFile:J

.field public fps:F

.field public lagCount:I

.field public lagMaxDuration:J

.field public lagTotalDuration:J

.field public startRecordAfterInit:J

.field public startRecordBeforeInit:J

.field public startRecordInit:J

.field public stopRecordAfterUninit:J

.field public stopRecordThreadExit:J

.field public stopRecordUninit:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 10
    iput v0, p0, Lcom/ss/android/vesdk/model/VERecordPerformanceData;->fps:F

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/ss/android/vesdk/model/VERecordPerformanceData;->lagCount:I

    const-wide/16 v0, -0x1

    .line 12
    iput-wide v0, p0, Lcom/ss/android/vesdk/model/VERecordPerformanceData;->lagMaxDuration:J

    .line 13
    iput-wide v0, p0, Lcom/ss/android/vesdk/model/VERecordPerformanceData;->lagTotalDuration:J

    .line 16
    iput-wide v0, p0, Lcom/ss/android/vesdk/model/VERecordPerformanceData;->startRecordBeforeInit:J

    .line 17
    iput-wide v0, p0, Lcom/ss/android/vesdk/model/VERecordPerformanceData;->startRecordInit:J

    .line 18
    iput-wide v0, p0, Lcom/ss/android/vesdk/model/VERecordPerformanceData;->startRecordAfterInit:J

    .line 21
    iput-wide v0, p0, Lcom/ss/android/vesdk/model/VERecordPerformanceData;->stopRecordThreadExit:J

    .line 22
    iput-wide v0, p0, Lcom/ss/android/vesdk/model/VERecordPerformanceData;->stopRecordUninit:J

    .line 23
    iput-wide v0, p0, Lcom/ss/android/vesdk/model/VERecordPerformanceData;->stopRecordAfterUninit:J

    .line 26
    iput-wide v0, p0, Lcom/ss/android/vesdk/model/VERecordPerformanceData;->concatInit:J

    .line 27
    iput-wide v0, p0, Lcom/ss/android/vesdk/model/VERecordPerformanceData;->concatPreProcess:J

    .line 28
    iput-wide v0, p0, Lcom/ss/android/vesdk/model/VERecordPerformanceData;->concatWriteFile:J

    .line 29
    iput-wide v0, p0, Lcom/ss/android/vesdk/model/VERecordPerformanceData;->concatAfterWriteFile:J

    return-void
.end method
