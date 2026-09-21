.class public Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 93
    invoke-static {}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->new_VecString__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    .line 117
    invoke-static {p1, p2}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->new_VecString__SWIG_2(ILjava/lang/String;)J

    move-result-wide p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;)V
    .registers 4

    .line 97
    invoke-static {p1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;->getCPtr(Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->new_VecString__SWIG_1(JLcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;-><init>()V

    .line 54
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 55
    invoke-virtual {p0, v0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;->add(Ljava/lang/String;)Z

    goto :goto_7

    :cond_17
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .registers 5

    .line 44
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;-><init>()V

    .line 45
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;->reserve(J)V

    .line 47
    array-length v0, p1

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_14

    aget-object v2, p1, v1

    .line 48
    invoke-virtual {p0, v2}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;->add(Ljava/lang/String;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_14
    return-void
.end method

.method private doAdd(ILjava/lang/String;)V
    .registers 5

    .line 129
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->VecString_doAdd__SWIG_1(JLcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;ILjava/lang/String;)V

    return-void
.end method

.method private doAdd(Ljava/lang/String;)V
    .registers 4

    .line 125
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->VecString_doAdd__SWIG_0(JLcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;Ljava/lang/String;)V

    return-void
.end method

.method private doGet(I)Ljava/lang/String;
    .registers 4

    .line 137
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->VecString_doGet(JLcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private doRemove(I)Ljava/lang/String;
    .registers 4

    .line 133
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->VecString_doRemove(JLcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private doRemoveRange(II)V
    .registers 5

    .line 145
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->VecString_doRemoveRange(JLcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;II)V

    return-void
.end method

.method private doSet(ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 141
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->VecString_doSet(JLcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private doSize()I
    .registers 3

    .line 121
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->VecString_doSize(JLcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;)I

    move-result p0

    return p0
.end method

.method public static getCPtr(Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;)J
    .registers 3

    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 21
    :cond_5
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;->swigCPtr:J

    return-wide v0
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .registers 3

    .line 11
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;->add(ILjava/lang/String;)V

    return-void
.end method

.method public add(ILjava/lang/String;)V
    .registers 4

    .line 74
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;->doAdd(ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 2

    .line 11
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;->add(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public add(Ljava/lang/String;)Z
    .registers 4

    .line 68
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 69
    invoke-direct {p0, p1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;->doAdd(Ljava/lang/String;)V

    return v1
.end method

.method public capacity()J
    .registers 3

    .line 101
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->VecString_capacity(JLcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;)J

    move-result-wide v0

    return-wide v0
.end method

.method public clear()V
    .registers 3

    .line 113
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->VecString_clear(JLcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;)V

    return-void
.end method

.method public declared-synchronized delete()V
    .registers 6

    monitor-enter p0

    .line 34
    :try_start_1
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_18

    .line 35
    iget-boolean v4, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;->swigCMemOwn:Z

    if-eqz v4, :cond_16

    const/4 v4, 0x0

    .line 36
    iput-boolean v4, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;->swigCMemOwn:Z

    .line 37
    invoke-static {v0, v1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->delete_VecString(J)V

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_1a

    .line 39
    :cond_16
    :goto_16
    iput-wide v2, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;->swigCPtr:J
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
    invoke-virtual {p0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;->delete()V

    return-void
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .registers 2

    .line 11
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;->get(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public get(I)Ljava/lang/String;
    .registers 2

    .line 60
    invoke-direct {p0, p1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;->doGet(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .registers 3

    .line 109
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->VecString_isEmpty(JLcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .registers 2

    .line 11
    invoke-virtual {p0, p1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;->remove(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public remove(I)Ljava/lang/String;
    .registers 3

    .line 79
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 80
    invoke-direct {p0, p1}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;->doRemove(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected removeRange(II)V
    .registers 4

    .line 84
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;->doRemoveRange(II)V

    return-void
.end method

.method public reserve(J)V
    .registers 5

    .line 105
    iget-wide v0, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/MediaDelegatesJNI;->VecString_reserve(JLcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;J)V

    return-void
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 11
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;->set(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public set(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;->doSet(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .registers 1

    .line 89
    invoke-direct {p0}, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;->doSize()I

    move-result p0

    return p0
.end method

.method public swigSetCMemOwn(Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/bytedance/ies/mediaprocessors/delegates_jni/VecString;->swigCMemOwn:Z

    return-void
.end method
