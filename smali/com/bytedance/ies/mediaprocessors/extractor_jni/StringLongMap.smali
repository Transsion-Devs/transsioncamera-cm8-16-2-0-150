.class public Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
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
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->new_StringLongMap__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;)V
    .registers 4

    .line 132
    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->new_StringLongMap__SWIG_1(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;-><init>(JZ)V

    return-void
.end method

.method private begin()Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;
    .registers 4

    .line 198
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;

    iget-wide v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->StringLongMap_begin(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;-><init>(JZ)V

    return-object v0
.end method

.method private containsImpl(Ljava/lang/String;)Z
    .registers 4

    .line 210
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->StringLongMap_containsImpl(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private end()Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;
    .registers 4

    .line 202
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;

    iget-wide v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->StringLongMap_end(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;)J

    move-result-wide v1

    const/4 p0, 0x1

    invoke-direct {v0, v1, v2, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;-><init>(JZ)V

    return-object v0
.end method

.method private find(Ljava/lang/String;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;
    .registers 5

    .line 194
    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;

    iget-wide v1, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;->swigCPtr:J

    invoke-static {v1, v2, p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->StringLongMap_find(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;Ljava/lang/String;)J

    move-result-wide p0

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;-><init>(JZ)V

    return-object v0
.end method

.method protected static getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;->swigCPtr:J

    return-wide v0
.end method

.method private putUnchecked(Ljava/lang/String;J)V
    .registers 10

    .line 214
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->StringLongMap_putUnchecked(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;Ljava/lang/String;J)V

    return-void
.end method

.method private removeUnchecked(Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;)V
    .registers 8

    .line 218
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;->getCPtr(Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->StringLongMap_removeUnchecked(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;)V

    return-void
.end method

.method private sizeImpl()I
    .registers 3

    .line 206
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->StringLongMap_sizeImpl(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public clear()V
    .registers 3

    .line 190
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->StringLongMap_clear(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;)V

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

    invoke-direct {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;->containsImpl(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 30
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 31
    iget-boolean v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 32
    iput-boolean v4, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;->swigCMemOwn:Z

    .line 33
    invoke-static {v0, v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->delete_StringLongMap(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 35
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;->swigCPtr:J
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
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 96
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;->begin()Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;

    move-result-object v1

    .line 97
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;->end()Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;

    move-result-object v2

    .line 98
    :goto_d
    # invokes: Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;->isNot(Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;)Z
    invoke-static {v1, v2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;->access$000(Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 99
    new-instance v3, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$1;

    invoke-direct {v3, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$1;-><init>(Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;)V

    .line 120
    # invokes: Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$1;->init(Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;)Ljava/util/Map$Entry;
    invoke-static {v3, v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$1;->access$400(Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$1;Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;)Ljava/util/Map$Entry;

    move-result-object v3

    .line 99
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    # invokes: Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;->getNextUnchecked()Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;
    invoke-static {v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;->access$500(Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;

    move-result-object v1

    goto :goto_d

    :cond_24
    return-object v0
.end method

.method protected finalize()V
    .registers 1

    .line 26
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;->delete()V

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Long;
    .registers 4

    .line 53
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 57
    :cond_6
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;->find(Ljava/lang/String;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;

    move-result-object p1

    .line 58
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;->end()Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;

    move-result-object p0

    # invokes: Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;->isNot(Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;)Z
    invoke-static {p1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;->access$000(Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;)Z

    move-result p0

    if-eqz p0, :cond_1f

    .line 59
    # invokes: Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;->getValue()J
    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;->access$100(Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_1f
    return-object v1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 11
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;->get(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .registers 3

    .line 186
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/MPFeatureExtractorJNI;->StringLongMap_isEmpty(JLcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;)Z

    move-result p0

    return p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 5

    .line 66
    invoke-direct {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;->find(Ljava/lang/String;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;

    move-result-object v0

    .line 67
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;->end()Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;

    move-result-object v1

    # invokes: Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;->isNot(Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;)Z
    invoke-static {v0, v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;->access$000(Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 68
    # invokes: Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;->getValue()J
    invoke-static {v0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;->access$100(Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 69
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    # invokes: Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;->setValue(J)V
    invoke-static {v0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;->access$200(Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;J)V

    return-object p0

    .line 72
    :cond_1e
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;->putUnchecked(Ljava/lang/String;J)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 11
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;->put(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Long;
    .registers 4

    .line 78
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 82
    :cond_6
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;->find(Ljava/lang/String;)Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;

    move-result-object p1

    .line 83
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;->end()Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;

    move-result-object v0

    # invokes: Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;->isNot(Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;)Z
    invoke-static {p1, v0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;->access$000(Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 84
    # invokes: Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;->getValue()J
    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;->access$100(Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 85
    invoke-direct {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;->removeUnchecked(Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap$Iterator;)V

    return-object v0

    :cond_22
    return-object v1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 11
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;->remove(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/extractor_jni/StringLongMap;->sizeImpl()I

    move-result p0

    return p0
.end method
