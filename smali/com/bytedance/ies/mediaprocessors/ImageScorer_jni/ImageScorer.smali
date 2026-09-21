.class public Lcom/bytedance/ies/mediaprocessors/ImageScorer_jni/ImageScorer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .registers 4

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean p3, p0, Lcom/bytedance/ies/mediaprocessors/ImageScorer_jni/ImageScorer;->swigCMemOwn:Z

    .line 12
    iput-wide p1, p0, Lcom/bytedance/ies/mediaprocessors/ImageScorer_jni/ImageScorer;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 5

    .line 39
    invoke-static {p1, p2, p3, p4}, Lcom/bytedance/ies/mediaprocessors/ImageScorer_jni/ImageScorerJNI;->new_ImageScorer(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)J

    move-result-wide p1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/ies/mediaprocessors/ImageScorer_jni/ImageScorer;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/mediaprocessors/ImageScorer_jni/ImageScorer;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 16
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/ImageScorer_jni/ImageScorer;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 29
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/ImageScorer_jni/ImageScorer;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 30
    iget-boolean v4, p0, Lcom/bytedance/ies/mediaprocessors/ImageScorer_jni/ImageScorer;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 31
    iput-boolean v4, p0, Lcom/bytedance/ies/mediaprocessors/ImageScorer_jni/ImageScorer;->swigCMemOwn:Z

    .line 32
    invoke-static {v0, v1}, Lcom/bytedance/ies/mediaprocessors/ImageScorer_jni/ImageScorerJNI;->delete_ImageScorer(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 34
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/mediaprocessors/ImageScorer_jni/ImageScorer;->swigCPtr:J
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_14

    .line 36
    :cond_18
    monitor-exit p0

    return-void

    :goto_1a
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_14

    throw v0
.end method

.method public destroy()I
    .registers 3

    .line 47
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/ImageScorer_jni/ImageScorer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/ImageScorer_jni/ImageScorerJNI;->ImageScorer_destroy(JLcom/bytedance/ies/mediaprocessors/ImageScorer_jni/ImageScorer;)I

    move-result p0

    return p0
.end method

.method protected finalize()V
    .registers 1

    .line 25
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/ImageScorer_jni/ImageScorer;->delete()V

    return-void
.end method

.method public getScore()F
    .registers 3

    .line 55
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/ImageScorer_jni/ImageScorer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/ImageScorer_jni/ImageScorerJNI;->ImageScorer_getScore(JLcom/bytedance/ies/mediaprocessors/ImageScorer_jni/ImageScorer;)F

    move-result p0

    return p0
.end method

.method public init()I
    .registers 3

    .line 43
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/ImageScorer_jni/ImageScorer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/ImageScorer_jni/ImageScorerJNI;->ImageScorer_init(JLcom/bytedance/ies/mediaprocessors/ImageScorer_jni/ImageScorer;)I

    move-result p0

    return p0
.end method

.method public scoreImage(Ljava/lang/String;II)I
    .registers 10

    .line 51
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/ImageScorer_jni/ImageScorer;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/mediaprocessors/ImageScorer_jni/ImageScorerJNI;->ImageScorer_scoreImage(JLcom/bytedance/ies/mediaprocessors/ImageScorer_jni/ImageScorer;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 20
    iput-boolean p1, p0, Lcom/bytedance/ies/mediaprocessors/ImageScorer_jni/ImageScorer;->swigCMemOwn:Z

    return-void
.end method
