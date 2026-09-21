.class public Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BEATES_FILE_BEATS_A0:I = 0x2

.field public static final BEATES_FILE_CUSTOM:I = 0x3

.field public static final BEATES_FILE_DEFAULT:I = 0x0

.field public static final BEATES_FILE_SERVER_C:I = 0x1

.field public static final INTMODE_ONSET:I = 0x0

.field public static final MODE_SUCCESSIVELY:I = 0x1


# instance fields
.field private transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 44
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->new_NLEAlgorithmPath()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 34
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 35
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 36
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;->swigCMemOwn:Z

    .line 37
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->delete_NLEAlgorithmPath(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 39
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;->swigCPtr:J
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_14

    .line 41
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

.method protected finalize()V
    .registers 1

    .line 30
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;->delete()V

    return-void
.end method

.method public getBeatsPath()Ljava/lang/String;
    .registers 3

    .line 76
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEAlgorithmPath_beatsPath_get(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDownBeatsPath()Ljava/lang/String;
    .registers 3

    .line 84
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEAlgorithmPath_downBeatsPath_get(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getManMadePath()Ljava/lang/String;
    .registers 3

    .line 108
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEAlgorithmPath_manMadePath_get(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMode()I
    .registers 3

    .line 52
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEAlgorithmPath_mode_get(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;)I

    move-result p0

    return p0
.end method

.method public getNoStrengthBeatsPath()Ljava/lang/String;
    .registers 3

    .line 92
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEAlgorithmPath_noStrengthBeatsPath_get(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOnlineBeatsPath()Ljava/lang/String;
    .registers 3

    .line 100
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEAlgorithmPath_onlineBeatsPath_get(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPictureDuration()I
    .registers 3

    .line 68
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEAlgorithmPath_pictureDuration_get(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;)I

    move-result p0

    return p0
.end method

.method public getType()I
    .registers 3

    .line 60
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEAlgorithmPath_type_get(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;)I

    move-result p0

    return p0
.end method

.method public setBeatsPath(Ljava/lang/String;)V
    .registers 4

    .line 72
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEAlgorithmPath_beatsPath_set(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;Ljava/lang/String;)V

    return-void
.end method

.method public setDownBeatsPath(Ljava/lang/String;)V
    .registers 4

    .line 80
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEAlgorithmPath_downBeatsPath_set(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;Ljava/lang/String;)V

    return-void
.end method

.method public setManMadePath(Ljava/lang/String;)V
    .registers 4

    .line 104
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEAlgorithmPath_manMadePath_set(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;Ljava/lang/String;)V

    return-void
.end method

.method public setMode(I)V
    .registers 4

    .line 48
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEAlgorithmPath_mode_set(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;I)V

    return-void
.end method

.method public setNoStrengthBeatsPath(Ljava/lang/String;)V
    .registers 4

    .line 88
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEAlgorithmPath_noStrengthBeatsPath_set(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;Ljava/lang/String;)V

    return-void
.end method

.method public setOnlineBeatsPath(Ljava/lang/String;)V
    .registers 4

    .line 96
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEAlgorithmPath_onlineBeatsPath_set(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;Ljava/lang/String;)V

    return-void
.end method

.method public setPictureDuration(I)V
    .registers 4

    .line 64
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEAlgorithmPath_pictureDuration_set(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;I)V

    return-void
.end method

.method public setType(I)V
    .registers 4

    .line 56
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEMediaJniJNI;->NLEAlgorithmPath_type_set(JLcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;I)V

    return-void
.end method

.method protected swigSetCMemOwn(Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEAlgorithmPath;->swigCMemOwn:Z

    return-void
.end method
