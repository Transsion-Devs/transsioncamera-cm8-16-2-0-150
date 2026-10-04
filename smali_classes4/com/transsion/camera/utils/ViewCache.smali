.class public abstract Lcom/transsion/camera/utils/ViewCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final VIEW_CACHE:Landroid/util/LongSparseArray;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Lcom/transsion/camera/utils/ViewCache;->VIEW_CACHE:Landroid/util/LongSparseArray;

    return-void
.end method

.method public static declared-synchronized addViewCache(Landroid/content/Context;ILandroid/view/View;)V
    .registers 6

    const-class v0, Lcom/transsion/camera/utils/ViewCache;

    monitor-enter v0

    if-eqz p0, :cond_1b

    if-nez p2, :cond_8

    goto :goto_1b

    .line 26
    :cond_8
    :try_start_8
    sget-object v1, Lcom/transsion/camera/utils/ViewCache;->VIEW_CACHE:Landroid/util/LongSparseArray;

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/ViewCache;->makeKey(Landroid/content/Context;I)J

    move-result-wide p0

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p0, p1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_18

    .line 27
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p0

    .line 24
    :cond_1b
    :goto_1b
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized destroy(Landroid/content/Context;)V
    .registers 8

    const-class v0, Lcom/transsion/camera/utils/ViewCache;

    monitor-enter v0

    if-nez p0, :cond_7

    .line 49
    monitor-exit v0

    return-void

    .line 51
    :cond_7
    :try_start_7
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    .line 52
    sget-object v1, Lcom/transsion/camera/utils/ViewCache;->VIEW_CACHE:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_13
    if-ltz v1, :cond_2d

    .line 53
    sget-object v2, Lcom/transsion/camera/utils/ViewCache;->VIEW_CACHE:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    long-to-int v3, v3

    if-ne v3, p0, :cond_2a

    .line 56
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->removeAt(I)V
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_28

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2f

    :cond_2a
    :goto_2a
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    .line 59
    :cond_2d
    monitor-exit v0

    return-void

    :goto_2f
    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_28

    throw p0
.end method

.method public static declared-synchronized getViewCache(Landroid/content/Context;I)Landroid/view/View;
    .registers 5

    const-class v0, Lcom/transsion/camera/utils/ViewCache;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_8

    .line 31
    monitor-exit v0

    return-object v1

    .line 33
    :cond_8
    :try_start_8
    sget-object v2, Lcom/transsion/camera/utils/ViewCache;->VIEW_CACHE:Landroid/util/LongSparseArray;

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/ViewCache;->makeKey(Landroid/content/Context;I)J

    move-result-wide p0

    invoke-virtual {v2, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_20

    .line 34
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/view/View;
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_1e

    goto :goto_20

    :catchall_1e
    move-exception p0

    goto :goto_22

    :cond_20
    :goto_20
    monitor-exit v0

    return-object v1

    :goto_22
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_1e

    throw p0
.end method

.method private static makeKey(Landroid/content/Context;I)J
    .registers 6

    .line 18
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    int-to-long v0, p1

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    int-to-long p0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method
