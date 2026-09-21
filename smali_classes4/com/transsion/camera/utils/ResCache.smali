.class public abstract Lcom/transsion/camera/utils/ResCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final mDrawableCache:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 12
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ResCache"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/ResCache;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 13
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/transsion/camera/utils/ResCache;->mDrawableCache:Landroid/util/SparseArray;

    return-void
.end method

.method public static declared-synchronized addDrawable(ILandroid/graphics/drawable/Drawable;)V
    .registers 4

    const-class v0, Lcom/transsion/camera/utils/ResCache;

    monitor-enter v0

    .line 27
    :try_start_3
    sget-object v1, Lcom/transsion/camera/utils/ResCache;->mDrawableCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 28
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    :try_start_b
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw p0
.end method

.method public static dump()V
    .registers 3

    .line 31
    sget-object v0, Lcom/transsion/camera/utils/ResCache;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "All DrawableCache size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/transsion/camera/utils/ResCache;->mDrawableCache:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 3

    const-class v0, Lcom/transsion/camera/utils/ResCache;

    monitor-enter v0

    .line 17
    :try_start_3
    sget-object v1, Lcom/transsion/camera/utils/ResCache;->mDrawableCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p0
.end method

.method public static declared-synchronized getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .registers 4

    const-class v0, Lcom/transsion/camera/utils/ResCache;

    monitor-enter v0

    .line 22
    :try_start_3
    sget-object v1, Lcom/transsion/camera/utils/ResCache;->mDrawableCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_15

    const/4 v1, 0x0

    .line 23
    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_13

    goto :goto_15

    :catchall_13
    move-exception p0

    goto :goto_17

    :cond_15
    :goto_15
    monitor-exit v0

    return-object v1

    :goto_17
    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_13

    throw p0
.end method
