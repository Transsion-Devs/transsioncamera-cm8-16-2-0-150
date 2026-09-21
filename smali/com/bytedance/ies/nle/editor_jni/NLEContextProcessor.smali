.class public Lcom/bytedance/ies/nle/editor_jni/NLEContextProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 57
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->new_NLEContextProcessor()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/NLEContextProcessor;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/NLEContextProcessor;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/NLEContextProcessor;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEContextProcessor;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEContextProcessor;->swigCPtr:J

    return-wide v0
.end method

.method public static processor()Lcom/bytedance/ies/nle/editor_jni/NLEContextProcessor;
    .registers 4

    .line 40
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->NLEContextProcessor_processor()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_c

    const/4 v0, 0x0

    return-object v0

    .line 41
    :cond_c
    new-instance v2, Lcom/bytedance/ies/nle/editor_jni/NLEContextProcessor;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/bytedance/ies/nle/editor_jni/NLEContextProcessor;-><init>(JZ)V

    return-object v2
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 49
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEContextProcessor;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->NLEContextProcessor_decrypt(JLcom/bytedance/ies/nle/editor_jni/NLEContextProcessor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 30
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEContextProcessor;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 31
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEContextProcessor;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 32
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/NLEContextProcessor;->swigCMemOwn:Z

    .line 33
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->delete_NLEContextProcessor(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 35
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/NLEContextProcessor;->swigCPtr:J
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_14

    .line 37
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

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 45
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEContextProcessor;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->NLEContextProcessor_encrypt(JLcom/bytedance/ies/nle/editor_jni/NLEContextProcessor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected finalize()V
    .registers 1

    .line 26
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/NLEContextProcessor;->delete()V

    return-void
.end method

.method public setDelegate(Lcom/bytedance/ies/nle/editor_jni/NLEContextProcessorFunc;)V
    .registers 8

    .line 53
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/NLEContextProcessor;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLEContextProcessorFunc;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLEContextProcessorFunc;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->NLEContextProcessor_setDelegate(JLcom/bytedance/ies/nle/editor_jni/NLEContextProcessor;JLcom/bytedance/ies/nle/editor_jni/NLEContextProcessorFunc;)V

    return-void
.end method
