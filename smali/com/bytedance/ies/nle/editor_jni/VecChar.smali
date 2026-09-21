.class public Lcom/bytedance/ies/nle/editor_jni/VecChar;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/Character;",
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
    invoke-static {}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_VecChar__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/nle/editor_jni/VecChar;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(IC)V
    .registers 4

    .line 113
    invoke-static {p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_VecChar__SWIG_2(IC)J

    move-result-wide p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/ies/nle/editor_jni/VecChar;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/nle/editor_jni/VecChar;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/nle/editor_jni/VecChar;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/nle/editor_jni/VecChar;)V
    .registers 4

    .line 93
    invoke-static {p1}, Lcom/bytedance/ies/nle/editor_jni/VecChar;->getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecChar;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->new_VecChar__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecChar;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/ies/nle/editor_jni/VecChar;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Lcom/bytedance/ies/nle/editor_jni/VecChar;-><init>()V

    .line 50
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 51
    invoke-virtual {p0, v0}, Lcom/bytedance/ies/nle/editor_jni/VecChar;->add(Ljava/lang/Character;)Z

    goto :goto_7

    :cond_1a
    return-void
.end method

.method public constructor <init>([C)V
    .registers 5

    .line 40
    invoke-direct {p0}, Lcom/bytedance/ies/nle/editor_jni/VecChar;-><init>()V

    .line 41
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/ies/nle/editor_jni/VecChar;->reserve(J)V

    .line 43
    array-length v0, p1

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_18

    aget-char v2, p1, v1

    .line 44
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/bytedance/ies/nle/editor_jni/VecChar;->add(Ljava/lang/Character;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_18
    return-void
.end method

.method private doAdd(C)V
    .registers 4

    .line 121
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecChar;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->VecChar_doAdd__SWIG_0(JLcom/bytedance/ies/nle/editor_jni/VecChar;C)V

    return-void
.end method

.method private doAdd(IC)V
    .registers 5

    .line 125
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecChar;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->VecChar_doAdd__SWIG_1(JLcom/bytedance/ies/nle/editor_jni/VecChar;IC)V

    return-void
.end method

.method private doGet(I)C
    .registers 4

    .line 133
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecChar;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->VecChar_doGet(JLcom/bytedance/ies/nle/editor_jni/VecChar;I)C

    move-result p0

    return p0
.end method

.method private doRemove(I)C
    .registers 4

    .line 129
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecChar;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->VecChar_doRemove(JLcom/bytedance/ies/nle/editor_jni/VecChar;I)C

    move-result p0

    return p0
.end method

.method private doRemoveRange(II)V
    .registers 5

    .line 141
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecChar;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->VecChar_doRemoveRange(JLcom/bytedance/ies/nle/editor_jni/VecChar;II)V

    return-void
.end method

.method private doSet(IC)C
    .registers 5

    .line 137
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecChar;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->VecChar_doSet(JLcom/bytedance/ies/nle/editor_jni/VecChar;IC)C

    move-result p0

    return p0
.end method

.method private doSize()I
    .registers 3

    .line 117
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecChar;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->VecChar_doSize(JLcom/bytedance/ies/nle/editor_jni/VecChar;)I

    move-result p0

    return p0
.end method

.method protected static getCPtr(Lcom/bytedance/ies/nle/editor_jni/VecChar;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecChar;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public add(ILjava/lang/Character;)V
    .registers 4

    .line 70
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 71
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/VecChar;->doAdd(IC)V

    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .registers 3

    .line 11
    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/VecChar;->add(ILjava/lang/Character;)V

    return-void
.end method

.method public add(Ljava/lang/Character;)Z
    .registers 4

    .line 64
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 65
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-direct {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/VecChar;->doAdd(C)V

    return v1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 2

    .line 11
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/VecChar;->add(Ljava/lang/Character;)Z

    move-result p0

    return p0
.end method

.method public capacity()J
    .registers 3

    .line 97
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecChar;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->VecChar_capacity(JLcom/bytedance/ies/nle/editor_jni/VecChar;)J

    move-result-wide v0

    return-wide v0
.end method

.method public clear()V
    .registers 3

    .line 109
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecChar;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->VecChar_clear(JLcom/bytedance/ies/nle/editor_jni/VecChar;)V

    return-void
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 30
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecChar;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 31
    iget-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/VecChar;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 32
    iput-boolean v4, p0, Lcom/bytedance/ies/nle/editor_jni/VecChar;->swigCMemOwn:Z

    .line 33
    invoke-static {v0, v1}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->delete_VecChar(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 35
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/nle/editor_jni/VecChar;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/bytedance/ies/nle/editor_jni/VecChar;->delete()V

    return-void
.end method

.method public get(I)Ljava/lang/Character;
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/VecChar;->doGet(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    .line 11
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/VecChar;->get(I)Ljava/lang/Character;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .registers 3

    .line 105
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecChar;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->VecChar_isEmpty(JLcom/bytedance/ies/nle/editor_jni/VecChar;)Z

    move-result p0

    return p0
.end method

.method public remove(I)Ljava/lang/Character;
    .registers 3

    .line 75
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 76
    invoke-direct {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/VecChar;->doRemove(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .registers 2

    .line 11
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/nle/editor_jni/VecChar;->remove(I)Ljava/lang/Character;

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
    invoke-direct {p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/VecChar;->doRemoveRange(II)V

    return-void
.end method

.method public reserve(J)V
    .registers 5

    .line 101
    iget-wide v0, p0, Lcom/bytedance/ies/nle/editor_jni/VecChar;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/NLEEditorJniJNI;->VecChar_reserve(JLcom/bytedance/ies/nle/editor_jni/VecChar;J)V

    return-void
.end method

.method public set(ILjava/lang/Character;)Ljava/lang/Character;
    .registers 3

    .line 60
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/VecChar;->doSet(IC)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 11
    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/nle/editor_jni/VecChar;->set(ILjava/lang/Character;)Ljava/lang/Character;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .registers 1

    .line 85
    invoke-direct {p0}, Lcom/bytedance/ies/nle/editor_jni/VecChar;->doSize()I

    move-result p0

    return p0
.end method
