.class public Lcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 89
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_VecNLECherEffectSPtr__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(ILcom/bytedance/ies/nle/editor_jni/NLECherEffect;)V
    .registers 5

    .line 113
    invoke-static {p2}, Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;)J

    move-result-wide v0

    invoke-static {p1, v0, v1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_VecNLECherEffectSPtr__SWIG_2(IJLcom/bytedance/ies/nle/editor_jni/NLECherEffect;)J

    move-result-wide p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;)V
    .registers 4

    .line 93
    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_VecNLECherEffectSPtr__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;-><init>()V

    .line 50
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;

    .line 51
    invoke-virtual {p0, v0}, Lcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;->add(Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;)Z

    goto :goto_7

    :cond_17
    return-void
.end method

.method public constructor <init>([Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;)V
    .registers 5

    .line 40
    invoke-direct {p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;-><init>()V

    .line 41
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;->reserve(J)V

    .line 43
    array-length v0, p1

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_14

    aget-object v2, p1, v1

    .line 44
    invoke-virtual {p0, v2}, Lcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;->add(Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_14
    return-void
.end method

.method private doAdd(ILcom/bytedance/ies/nle/editor_jni/NLECherEffect;)V
    .registers 10

    .line 125
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;->swigCPtr:J

    invoke-static {p2}, Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;)J

    move-result-wide v4

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->VecNLECherEffectSPtr_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;IJLcom/bytedance/ies/nle/editor_jni/NLECherEffect;)V

    return-void
.end method

.method private doAdd(Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;)V
    .registers 8

    .line 121
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;->swigCPtr:J

    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->VecNLECherEffectSPtr_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;JLcom/bytedance/ies/nle/editor_jni/NLECherEffect;)V

    return-void
.end method

.method private doGet(I)Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;
    .registers 4

    .line 134
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->VecNLECherEffectSPtr_doGet(JLcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;I)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 135
    :cond_e
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;-><init>(JZ)V

    return-object v0
.end method

.method private doRemove(I)Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;
    .registers 4

    .line 129
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->VecNLECherEffectSPtr_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;I)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 130
    :cond_e
    new-instance v0, Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;-><init>(JZ)V

    return-object v0
.end method

.method private doRemoveRange(II)V
    .registers 5

    .line 144
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->VecNLECherEffectSPtr_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;II)V

    return-void
.end method

.method private doSet(ILcom/bytedance/ies/nle/editor_jni/NLECherEffect;)Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;
    .registers 10

    .line 139
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;->swigCPtr:J

    invoke-static {p2}, Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;)J

    move-result-wide v4

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->VecNLECherEffectSPtr_doSet(JLcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;IJLcom/bytedance/ies/nle/editor_jni/NLECherEffect;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p2, p0, v0

    if-nez p2, :cond_15

    const/4 p0, 0x0

    return-object p0

    .line 140
    :cond_15
    new-instance p2, Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;

    const/4 v0, 0x1

    invoke-direct {p2, p0, p1, v0}, Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;-><init>(JZ)V

    return-object p2
.end method

.method private doSize()I
    .registers 3

    .line 117
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->VecNLECherEffectSPtr_doSize(JLcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;)I

    move-result p0

    return p0
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public add(ILcom/bytedance/ies/nle/editor_jni/NLECherEffect;)V
    .registers 4

    .line 70
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;->doAdd(ILcom/bytedance/ies/nle/editor_jni/NLECherEffect;)V

    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .registers 3

    .line 11
    check-cast p2, Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;->add(ILcom/bytedance/ies/nle/editor_jni/NLECherEffect;)V

    return-void
.end method

.method public add(Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;)Z
    .registers 4

    .line 64
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 65
    invoke-direct {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;->doAdd(Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;)V

    return v1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 2

    .line 11
    check-cast p1, Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;->add(Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;)Z

    move-result p0

    return p0
.end method

.method public capacity()J
    .registers 3

    .line 97
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->VecNLECherEffectSPtr_capacity(JLcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;)J

    move-result-wide v0

    return-wide v0
.end method

.method public clear()V
    .registers 3

    .line 109
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->VecNLECherEffectSPtr_clear(JLcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;)V

    return-void
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 30
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 31
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 32
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;->swigCMemOwn:Z

    .line 33
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->delete_VecNLECherEffectSPtr(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 35
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;->delete()V

    return-void
.end method

.method public get(I)Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;->doGet(I)Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    .line 11
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;->get(I)Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .registers 3

    .line 105
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->VecNLECherEffectSPtr_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;)Z

    move-result p0

    return p0
.end method

.method public remove(I)Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;
    .registers 3

    .line 75
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 76
    invoke-direct {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;->doRemove(I)Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .registers 2

    .line 11
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;->remove(I)Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;

    move-result-object p0

    return-object p0
.end method

.method protected removeRange(II)V
    .registers 4

    .line 80
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;->doRemoveRange(II)V

    return-void
.end method

.method public reserve(J)V
    .registers 5

    .line 101
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->VecNLECherEffectSPtr_reserve(JLcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;J)V

    return-void
.end method

.method public set(ILcom/bytedance/ies/nle/editor_jni/NLECherEffect;)Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;
    .registers 3

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;->doSet(ILcom/bytedance/ies/nle/editor_jni/NLECherEffect;)Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 11
    check-cast p2, Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;->set(ILcom/bytedance/ies/nle/editor_jni/NLECherEffect;)Lcom/bytedance/ies/nle/editor_jni/NLECherEffect;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .registers 1

    .line 85
    invoke-direct {p0}, Lcom/bytedance/ies/nle/editor_jni/VecNLECherEffectSPtr;->doSize()I

    move-result p0

    return p0
.end method
