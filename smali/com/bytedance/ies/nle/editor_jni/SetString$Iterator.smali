.class public Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ies/nle/editor_jni/SetString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Iterator"
.end annotation


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .registers 4

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;->swigCMemOwn:Z

    .line 127
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;->swigCPtr:J

    return-void
.end method

.method static synthetic access$200(Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;)Ljava/lang/String;
    .registers 1

    .line 121
    invoke-direct {p0}, Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;->derefUnchecked()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;)V
    .registers 1

    .line 121
    invoke-direct {p0}, Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;->incrementUnchecked()V

    return-void
.end method

.method static synthetic access$400(Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;)Z
    .registers 2

    .line 121
    invoke-direct {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;->isNot(Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;)Z

    move-result p0

    return p0
.end method

.method private derefUnchecked()Ljava/lang/String;
    .registers 3

    .line 154
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->SetString_Iterator_derefUnchecked(JLcom/bytedance/ies/nle/editor_jni/SetString$Iterator;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 131
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;->swigCPtr:J

    return-wide v0
.end method

.method private incrementUnchecked()V
    .registers 3

    .line 150
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->SetString_Iterator_incrementUnchecked(JLcom/bytedance/ies/nle/editor_jni/SetString$Iterator;)V

    return-void
.end method

.method private isNot(Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;)Z
    .registers 8

    .line 158
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->SetString_Iterator_isNot(JLcom/bytedance/ies/nle/editor_jni/SetString$Iterator;JLcom/bytedance/ies/nle/editor_jni/SetString$Iterator;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 140
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 141
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 142
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;->swigCMemOwn:Z

    .line 143
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->delete_SetString_Iterator(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 145
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;->swigCPtr:J
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_14

    .line 147
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

    .line 136
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;->delete()V

    return-void
.end method
