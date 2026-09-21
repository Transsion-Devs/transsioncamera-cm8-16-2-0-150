.class public Lcom/bytedance/ies/nle/editor_jni/SetString;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 164
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->new_SetString__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/SetString;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/SetString;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/SetString;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/nle/editor_jni/SetString;)V
    .registers 4

    .line 168
    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/SetString;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/SetString;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->new_SetString__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/SetString;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/ies/nle/editor_jni/SetString;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Lcom/bytedance/ies/nle/editor_jni/SetString;-><init>()V

    .line 41
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/SetString;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/bytedance/ies/nle/editor_jni/SetString;)Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/bytedance/ies/nle/editor_jni/SetString;->begin()Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/bytedance/ies/nle/editor_jni/SetString;)Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/bytedance/ies/nle/editor_jni/SetString;->end()Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;

    move-result-object p0

    return-object p0
.end method

.method private begin()Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;
    .registers 4

    .line 180
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/SetString;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->SetString_begin(JLcom/bytedance/ies/nle/editor_jni/SetString;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;-><init>(JZ)V

    return-object v0
.end method

.method private containsImpl(Ljava/lang/String;)Z
    .registers 4

    .line 192
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/SetString;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->SetString_containsImpl(JLcom/bytedance/ies/nle/editor_jni/SetString;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private end()Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;
    .registers 4

    .line 184
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/SetString;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->SetString_end(JLcom/bytedance/ies/nle/editor_jni/SetString;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;-><init>(JZ)V

    return-object v0
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/SetString;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/SetString;->swigCPtr:J

    return-wide v0
.end method

.method private hasNextImpl(Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;)Z
    .registers 8

    .line 204
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/SetString;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/SetString$Iterator;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->SetString_hasNextImpl(JLcom/bytedance/ies/nle/editor_jni/SetString;JLcom/bytedance/ies/nle/editor_jni/SetString$Iterator;)Z

    move-result p0

    return p0
.end method

.method private removeImpl(Ljava/lang/String;)Z
    .registers 4

    .line 196
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/SetString;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->SetString_removeImpl(JLcom/bytedance/ies/nle/editor_jni/SetString;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private sizeImpl()I
    .registers 3

    .line 200
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/SetString;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->SetString_sizeImpl(JLcom/bytedance/ies/nle/editor_jni/SetString;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 2

    .line 11
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/SetString;->add(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public add(Ljava/lang/String;)Z
    .registers 4

    .line 188
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/SetString;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->SetString_add(JLcom/bytedance/ies/nle/editor_jni/SetString;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 50
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 51
    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/bytedance/ies/nle/editor_jni/SetString;->add(Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_5

    :cond_17
    return v0
.end method

.method public clear()V
    .registers 3

    .line 176
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/SetString;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->SetString_clear(JLcom/bytedance/ies/nle/editor_jni/SetString;)V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    .line 97
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 101
    :cond_6
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/SetString;->containsImpl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 87
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 88
    invoke-virtual {p0, v0}, Lcom/bytedance/ies/nle/editor_jni/SetString;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_16
    const/4 p0, 0x1

    return p0
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 30
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/SetString;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 31
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/SetString;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 32
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/SetString;->swigCMemOwn:Z

    .line 33
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->delete_SetString(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 35
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/SetString;->swigCPtr:J
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

.method protected finalize()V
    .registers 1

    .line 26
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/SetString;->delete()V

    return-void
.end method

.method public isEmpty()Z
    .registers 3

    .line 172
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/SetString;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLETemplateJNI;->SetString_isEmpty(JLcom/bytedance/ies/nle/editor_jni/SetString;)Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/SetString$1;

    invoke-direct {v0, p0}, Lcom/bytedance/ies/nle/editor_jni/SetString$1;-><init>(Lcom/bytedance/ies/nle/editor_jni/SetString;)V

    .line 83
    # invokes: Lcom/bytedance/ies/nle/editor_jni/SetString$1;->init()Ljava/util/Iterator;
    invoke-static {v0}, Lcom/bytedance/ies/nle/editor_jni/SetString$1;->access$500(Lcom/bytedance/ies/nle/editor_jni/SetString$1;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    .line 114
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 118
    :cond_6
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/SetString;->removeImpl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 106
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 107
    invoke-virtual {p0, v1}, Lcom/bytedance/ies/nle/editor_jni/SetString;->remove(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_5

    :cond_15
    return v0
.end method

.method public size()I
    .registers 1

    .line 45
    invoke-direct {p0}, Lcom/bytedance/ies/nle/editor_jni/SetString;->sizeImpl()I

    move-result p0

    return p0
.end method
