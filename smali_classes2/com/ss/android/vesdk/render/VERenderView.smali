.class public Lcom/ss/android/vesdk/render/VERenderView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/vesdk/render/VESurfaceCallback;


# instance fields
.field private mCallbacks:Lcom/ss/android/vesdk/ConcurrentList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ss/android/vesdk/ConcurrentList<",
            "Lcom/ss/android/vesdk/render/VESurfaceCallback;",
            ">;"
        }
    .end annotation
.end field

.field mHeight:I

.field mSurface:Landroid/view/Surface;

.field mSurfaceChanged:Z

.field mWidth:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/ss/android/vesdk/ConcurrentList;

    invoke-direct {v0}, Lcom/ss/android/vesdk/ConcurrentList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/render/VERenderView;->mCallbacks:Lcom/ss/android/vesdk/ConcurrentList;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/ss/android/vesdk/ConcurrentList;

    invoke-direct {v0}, Lcom/ss/android/vesdk/ConcurrentList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/render/VERenderView;->mCallbacks:Lcom/ss/android/vesdk/ConcurrentList;

    .line 48
    iput p1, p0, Lcom/ss/android/vesdk/render/VERenderView;->mWidth:I

    .line 49
    iput p2, p0, Lcom/ss/android/vesdk/render/VERenderView;->mHeight:I

    return-void
.end method


# virtual methods
.method public addSurfaceCallback(Lcom/ss/android/vesdk/render/VESurfaceCallback;)Z
    .registers 2

    if-eqz p1, :cond_9

    .line 61
    iget-object p0, p0, Lcom/ss/android/vesdk/render/VERenderView;->mCallbacks:Lcom/ss/android/vesdk/ConcurrentList;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/ConcurrentList;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public afterSurfaceDestroyed()V
    .registers 2

    .line 143
    iget-object p0, p0, Lcom/ss/android/vesdk/render/VERenderView;->mCallbacks:Lcom/ss/android/vesdk/ConcurrentList;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/ConcurrentList;->getImmutableList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/vesdk/render/VESurfaceCallback;

    .line 144
    invoke-interface {v0}, Lcom/ss/android/vesdk/render/VESurfaceCallback;->afterSurfaceDestroyed()V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public clearSurfaceCallbacks()V
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/ss/android/vesdk/render/VERenderView;->mCallbacks:Lcom/ss/android/vesdk/ConcurrentList;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/ConcurrentList;->clear()V

    return-void
.end method

.method public getHeight()I
    .registers 1

    .line 163
    iget p0, p0, Lcom/ss/android/vesdk/render/VERenderView;->mHeight:I

    return p0
.end method

.method public getSurface()Landroid/view/Surface;
    .registers 1

    .line 172
    iget-object p0, p0, Lcom/ss/android/vesdk/render/VERenderView;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public getWidth()I
    .registers 1

    .line 154
    iget p0, p0, Lcom/ss/android/vesdk/render/VERenderView;->mWidth:I

    return p0
.end method

.method public isSurfaceChanged()Z
    .registers 1

    .line 176
    iget-boolean p0, p0, Lcom/ss/android/vesdk/render/VERenderView;->mSurfaceChanged:Z

    return p0
.end method

.method public preSurfaceCreated()V
    .registers 2

    .line 83
    iget-object p0, p0, Lcom/ss/android/vesdk/render/VERenderView;->mCallbacks:Lcom/ss/android/vesdk/ConcurrentList;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/ConcurrentList;->getImmutableList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/vesdk/render/VESurfaceCallback;

    .line 84
    invoke-interface {v0}, Lcom/ss/android/vesdk/render/VESurfaceCallback;->preSurfaceCreated()V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method public removeSurfaceCallback(Lcom/ss/android/vesdk/render/VESurfaceCallback;)Z
    .registers 2

    .line 71
    iget-object p0, p0, Lcom/ss/android/vesdk/render/VERenderView;->mCallbacks:Lcom/ss/android/vesdk/ConcurrentList;

    invoke-virtual {p0, p1}, Lcom/ss/android/vesdk/ConcurrentList;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public surfaceChanged(Landroid/view/Surface;III)V
    .registers 6

    .line 113
    iget v0, p0, Lcom/ss/android/vesdk/render/VERenderView;->mWidth:I

    if-ne v0, p4, :cond_11

    iget v0, p0, Lcom/ss/android/vesdk/render/VERenderView;->mHeight:I

    if-ne v0, p4, :cond_11

    iget-object v0, p0, Lcom/ss/android/vesdk/render/VERenderView;->mSurface:Landroid/view/Surface;

    if-eq p1, v0, :cond_d

    goto :goto_11

    :cond_d
    const/4 v0, 0x0

    .line 118
    iput-boolean v0, p0, Lcom/ss/android/vesdk/render/VERenderView;->mSurfaceChanged:Z

    goto :goto_18

    :cond_11
    :goto_11
    const/4 v0, 0x1

    .line 114
    iput-boolean v0, p0, Lcom/ss/android/vesdk/render/VERenderView;->mSurfaceChanged:Z

    .line 115
    iput p3, p0, Lcom/ss/android/vesdk/render/VERenderView;->mWidth:I

    .line 116
    iput p4, p0, Lcom/ss/android/vesdk/render/VERenderView;->mHeight:I

    .line 120
    :goto_18
    iget-object p0, p0, Lcom/ss/android/vesdk/render/VERenderView;->mCallbacks:Lcom/ss/android/vesdk/ConcurrentList;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/ConcurrentList;->getImmutableList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_22
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/vesdk/render/VESurfaceCallback;

    .line 121
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/vesdk/render/VESurfaceCallback;->surfaceChanged(Landroid/view/Surface;III)V

    goto :goto_22

    :cond_32
    return-void
.end method

.method public surfaceCreated(Landroid/view/Surface;)V
    .registers 3

    .line 95
    iput-object p1, p0, Lcom/ss/android/vesdk/render/VERenderView;->mSurface:Landroid/view/Surface;

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/ss/android/vesdk/render/VERenderView;->mSurfaceChanged:Z

    .line 98
    iget-object p0, p0, Lcom/ss/android/vesdk/render/VERenderView;->mCallbacks:Lcom/ss/android/vesdk/ConcurrentList;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/ConcurrentList;->getImmutableList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/vesdk/render/VESurfaceCallback;

    .line 99
    invoke-interface {v0, p1}, Lcom/ss/android/vesdk/render/VESurfaceCallback;->surfaceCreated(Landroid/view/Surface;)V

    goto :goto_f

    :cond_1f
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/Surface;)V
    .registers 3

    .line 132
    iget-object p0, p0, Lcom/ss/android/vesdk/render/VERenderView;->mCallbacks:Lcom/ss/android/vesdk/ConcurrentList;

    invoke-virtual {p0}, Lcom/ss/android/vesdk/ConcurrentList;->getImmutableList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/vesdk/render/VESurfaceCallback;

    .line 133
    invoke-interface {v0, p1}, Lcom/ss/android/vesdk/render/VESurfaceCallback;->surfaceDestroyed(Landroid/view/Surface;)V

    goto :goto_a

    :cond_1a
    return-void
.end method
