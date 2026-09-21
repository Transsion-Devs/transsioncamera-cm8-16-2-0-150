.class public Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest;
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

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-boolean p3, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;->swigCMemOwn:Z

    .line 141
    iput-wide p1, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;->swigCPtr:J

    return-void
.end method

.method static synthetic access$000(Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;)Z
    .registers 2

    .line 135
    invoke-direct {p0, p1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;->isNot(Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;)I
    .registers 1

    .line 135
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;->getValue()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;I)V
    .registers 2

    .line 135
    invoke-direct {p0, p1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;->setValue(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;)Ljava/lang/String;
    .registers 1

    .line 135
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;)Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;
    .registers 1

    .line 135
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;->getNextUnchecked()Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;

    move-result-object p0

    return-object p0
.end method

.method protected static getCPtr(Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 145
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;->swigCPtr:J

    return-wide v0
.end method

.method private getKey()Ljava/lang/String;
    .registers 3

    .line 172
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->MapStrRequest_Iterator_getKey(JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getNextUnchecked()Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;
    .registers 4

    .line 164
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;

    iget-wide v1, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->MapStrRequest_Iterator_getNextUnchecked(JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;-><init>(JZ)V

    return-object v0
.end method

.method private getValue()I
    .registers 3

    .line 176
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->MapStrRequest_Iterator_getValue(JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;)I

    move-result p0

    return p0
.end method

.method private isNot(Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;)Z
    .registers 8

    .line 168
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;->getCPtr(Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->MapStrRequest_Iterator_isNot(JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;)Z

    move-result p0

    return p0
.end method

.method private setValue(I)V
    .registers 4

    .line 180
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->MapStrRequest_Iterator_setValue(JLcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 154
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 155
    iget-boolean v4, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 156
    iput-boolean v4, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;->swigCMemOwn:Z

    .line 157
    invoke-static {v0, v1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->delete_MapStrRequest_Iterator(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 159
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;->swigCPtr:J
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_14

    .line 161
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

    .line 150
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MapStrRequest$Iterator;->delete()V

    return-void
.end method
