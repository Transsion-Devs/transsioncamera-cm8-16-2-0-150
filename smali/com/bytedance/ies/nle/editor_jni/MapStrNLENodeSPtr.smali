.class public Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap<",
        "Ljava/lang/String;",
        "Lcom/bytedance/ies/nle/editor_jni/NLENode;",
        ">;"
    }
.end annotation


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 128
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_MapStrNLENodeSPtr__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;)V
    .registers 4

    .line 132
    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_MapStrNLENodeSPtr__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;-><init>(JZ)V

    return-void
.end method

.method private begin()Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;
    .registers 4

    .line 199
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->MapStrNLENodeSPtr_begin(JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;-><init>(JZ)V

    return-object v0
.end method

.method private containsImpl(Ljava/lang/String;)Z
    .registers 4

    .line 211
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->MapStrNLENodeSPtr_containsImpl(JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private end()Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;
    .registers 4

    .line 203
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->MapStrNLENodeSPtr_end(JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;-><init>(JZ)V

    return-object v0
.end method

.method private find(Ljava/lang/String;)Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;
    .registers 5

    .line 195
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;

    iget-wide v1, p0, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->MapStrNLENodeSPtr_find(JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;Ljava/lang/String;)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;-><init>(JZ)V

    return-object v0
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;->swigCPtr:J

    return-wide v0
.end method

.method private putUnchecked(Ljava/lang/String;Lcom/bytedance/ies/nle/editor_jni/NLENode;)V
    .registers 10

    .line 215
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;->swigCPtr:J

    invoke-static {p2}, Lcom/bytedance/ies/nle/editor_jni/NLENode;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLENode;)J

    move-result-wide v4

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->MapStrNLENodeSPtr_putUnchecked(JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;Ljava/lang/String;JLcom/bytedance/ies/nle/editor_jni/NLENode;)V

    return-void
.end method

.method private removeUnchecked(Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;)V
    .registers 8

    .line 219
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->MapStrNLENodeSPtr_removeUnchecked(JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;)V

    return-void
.end method

.method private sizeImpl()I
    .registers 3

    .line 207
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->MapStrNLENodeSPtr_sizeImpl(JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 191
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->MapStrNLENodeSPtr_clear(JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;)V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    .line 45
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 49
    :cond_6
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;->containsImpl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 30
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 31
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 32
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;->swigCMemOwn:Z

    .line 33
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->delete_MapStrNLENodeSPtr(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 35
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;->swigCPtr:J
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

.method public entrySet()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/bytedance/ies/nle/editor_jni/NLENode;",
            ">;>;"
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 96
    invoke-direct {p0}, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;->begin()Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;

    move-result-object v1

    .line 97
    invoke-direct {p0}, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;->end()Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;

    move-result-object v2

    .line 98
    :goto_d
    # invokes: Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;->isNot(Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;)Z
    invoke-static {v1, v2}, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;->access$000(Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 99
    new-instance v3, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$1;

    invoke-direct {v3, p0}, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$1;-><init>(Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;)V

    .line 120
    # invokes: Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$1;->init(Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;)Ljava/util/Map$Entry;
    invoke-static {v3, v1}, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$1;->access$400(Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$1;Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;)Ljava/util/Map$Entry;

    move-result-object v3

    .line 99
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    # invokes: Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;->getNextUnchecked()Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;
    invoke-static {v1}, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;->access$500(Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;)Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;

    move-result-object v1

    goto :goto_d

    :cond_24
    return-object v0
.end method

.method protected finalize()V
    .registers 1

    .line 26
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;->delete()V

    return-void
.end method

.method public get(Ljava/lang/Object;)Lcom/bytedance/ies/nle/editor_jni/NLENode;
    .registers 4

    .line 53
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 57
    :cond_6
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;->find(Ljava/lang/String;)Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;

    move-result-object p1

    .line 58
    invoke-direct {p0}, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;->end()Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;

    move-result-object p0

    # invokes: Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;->isNot(Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;)Z
    invoke-static {p1, p0}, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;->access$000(Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;)Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 59
    # invokes: Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;->getValue()Lcom/bytedance/ies/nle/editor_jni/NLENode;
    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;->access$100(Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;)Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object p0

    return-object p0

    :cond_1b
    return-object v1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 11
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;->get(Ljava/lang/Object;)Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .registers 3

    .line 187
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->MapStrNLENodeSPtr_isEmpty(JLcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;)Z

    move-result p0

    return p0
.end method

.method public put(Ljava/lang/String;Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLENode;
    .registers 5

    .line 66
    invoke-direct {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;->find(Ljava/lang/String;)Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;

    move-result-object v0

    .line 67
    invoke-direct {p0}, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;->end()Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;

    move-result-object v1

    # invokes: Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;->isNot(Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;)Z
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;->access$000(Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 68
    # invokes: Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;->getValue()Lcom/bytedance/ies/nle/editor_jni/NLENode;
    invoke-static {v0}, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;->access$100(Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;)Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object p0

    .line 69
    # invokes: Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;->setValue(Lcom/bytedance/ies/nle/editor_jni/NLENode;)V
    invoke-static {v0, p2}, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;->access$200(Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;Lcom/bytedance/ies/nle/editor_jni/NLENode;)V

    return-object p0

    .line 72
    :cond_16
    invoke-direct {p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;->putUnchecked(Ljava/lang/String;Lcom/bytedance/ies/nle/editor_jni/NLENode;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 11
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/bytedance/ies/nle/editor_jni/NLENode;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;->put(Ljava/lang/String;Lcom/bytedance/ies/nle/editor_jni/NLENode;)Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Lcom/bytedance/ies/nle/editor_jni/NLENode;
    .registers 4

    .line 78
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 82
    :cond_6
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;->find(Ljava/lang/String;)Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;

    move-result-object p1

    .line 83
    invoke-direct {p0}, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;->end()Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;

    move-result-object v0

    # invokes: Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;->isNot(Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;)Z
    invoke-static {p1, v0}, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;->access$000(Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 84
    # invokes: Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;->getValue()Lcom/bytedance/ies/nle/editor_jni/NLENode;
    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;->access$100(Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;)Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object v0

    .line 85
    invoke-direct {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;->removeUnchecked(Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr$Iterator;)V

    return-object v0

    :cond_1e
    return-object v1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 11
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;->remove(Ljava/lang/Object;)Lcom/bytedance/ies/nle/editor_jni/NLENode;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/bytedance/ies/nle/editor_jni/MapStrNLENodeSPtr;->sizeImpl()I

    move-result p0

    return p0
.end method
