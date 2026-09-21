.class public Lcom/ss/android/ttve/audio/TEDubWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/ttve/audio/TEAudioWriterInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "TEDubWriter"


# instance fields
.field private mCurrentTime:J

.field mHandle:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p0}, Lcom/ss/android/ttve/audio/TEDubWriter;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/ttve/audio/TEDubWriter;->mHandle:J

    return-void
.end method


# virtual methods
.method public addPCMData([BI)I
    .registers 7

    .line 30
    iget-wide v0, p0, Lcom/ss/android/ttve/audio/TEDubWriter;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 34
    :cond_b
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/ss/android/ttve/audio/TEDubWriter;->nativeAddPCMData(J[BI)I

    move-result p1

    .line 35
    iget-wide v0, p0, Lcom/ss/android/ttve/audio/TEDubWriter;->mHandle:J

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/ttve/audio/TEDubWriter;->nativeGetCurrentTime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/ttve/audio/TEDubWriter;->mCurrentTime:J

    return p1
.end method

.method public closeWavFile()I
    .registers 5

    .line 41
    iget-wide v0, p0, Lcom/ss/android/ttve/audio/TEDubWriter;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    const/16 p0, -0x70

    return p0

    .line 44
    :cond_b
    invoke-virtual {p0, v0, v1}, Lcom/ss/android/ttve/audio/TEDubWriter;->nativeCloseWavFile(J)I

    move-result p0

    return p0
.end method

.method public destroy()V
    .registers 5

    .line 49
    iget-wide v0, p0, Lcom/ss/android/ttve/audio/TEDubWriter;->mHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_b

    .line 50
    invoke-virtual {p0, v0, v1}, Lcom/ss/android/ttve/audio/TEDubWriter;->nativeDestroy(J)V

    :cond_b
    return-void
.end method

.method public getCurrentTime()J
    .registers 3

    .line 60
    iget-wide v0, p0, Lcom/ss/android/ttve/audio/TEDubWriter;->mCurrentTime:J

    return-wide v0
.end method

.method public initWavFile(Ljava/lang/String;IIDII)I
    .registers 18

    .line 22
    iget-wide v1, p0, Lcom/ss/android/ttve/audio/TEDubWriter;->mHandle:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_b

    const/16 p0, -0x70

    return p0

    :cond_b
    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    .line 25
    invoke-virtual/range {v0 .. v9}, Lcom/ss/android/ttve/audio/TEDubWriter;->nativeInitWavFile(JLjava/lang/String;IIDII)I

    move-result p0

    return p0
.end method

.method public native nativeAddPCMData(J[BI)I
.end method

.method public native nativeCloseWavFile(J)I
.end method

.method public native nativeCreate()J
.end method

.method public native nativeDestroy(J)V
.end method

.method public native nativeGetCurrentTime(J)J
.end method

.method public native nativeInitWavFile(JLjava/lang/String;IIDII)I
.end method
