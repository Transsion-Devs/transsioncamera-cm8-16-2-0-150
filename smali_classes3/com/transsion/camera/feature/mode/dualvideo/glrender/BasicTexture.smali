.class public abstract Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/dualvideo/glrender/Texture;


# static fields
.field private static final MAX_TEXTURE_SIZE:I = 0x1000

.field protected static final STATE_ERROR:I = -0x1

.field protected static final STATE_LOADED:I = 0x1

.field protected static final STATE_UNLOADED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BasicTexture"

.field protected static final UNSPECIFIED:I = -0x1

.field private static sAllTextures:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sInFinalizer:Ljava/lang/ThreadLocal;


# instance fields
.field protected mCanvasRef:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;

.field private mHasBorder:Z

.field protected mHeight:I

.field protected mId:I

.field protected mState:I

.field protected mTextureHeight:I

.field protected mTextureWidth:I

.field protected mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    .line 23
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, v0, v1, v1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;II)V

    return-void
.end method

.method protected constructor <init>(Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;II)V
    .registers 5

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mId:I

    .line 26
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mWidth:I

    .line 27
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mHeight:I

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mCanvasRef:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;

    .line 34
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->setAssociatedCanvas(Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;)V

    .line 35
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mId:I

    .line 36
    iput p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mState:I

    .line 37
    sget-object p1, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    monitor-enter p1

    .line 38
    :try_start_17
    sget-object p2, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    invoke-virtual {p2, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    monitor-exit p1

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit p1
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method private freeResource()V
    .registers 4

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mCanvasRef:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;

    if-eqz v0, :cond_e

    .line 174
    iget v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_e

    .line 175
    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;->unloadTexture(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;)Z

    .line 176
    iput v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mId:I

    :cond_e
    const/4 v0, 0x0

    .line 178
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mState:I

    const/4 v0, 0x0

    .line 179
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->setAssociatedCanvas(Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;)V

    return-void
.end method

.method public static inFinalizer()Z
    .registers 1

    .line 50
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public static invalidateAllTextures()V
    .registers 4

    .line 62
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 63
    :try_start_3
    sget-object v1, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;

    const/4 v3, 0x0

    .line 64
    iput v3, v2, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mState:I

    const/4 v3, 0x0

    .line 65
    invoke-virtual {v2, v3}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->setAssociatedCanvas(Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;)V

    goto :goto_d

    :catchall_21
    move-exception v1

    goto :goto_25

    .line 67
    :cond_23
    monitor-exit v0

    return-void

    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_21

    throw v1
.end method

.method public static nextPowerOf2(I)I
    .registers 4

    if-lez p0, :cond_1a

    const/high16 v0, 0x40000000    # 2.0f

    if-gt p0, v0, :cond_1a

    add-int/lit8 p0, p0, -0x1

    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    return p0

    .line 194
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static yieldAllTextures()V
    .registers 3

    .line 54
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 55
    :try_start_3
    sget-object v1, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->sAllTextures:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;

    .line 56
    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->yield()V

    goto :goto_d

    :catchall_1d
    move-exception v1

    goto :goto_21

    .line 58
    :cond_1f
    monitor-exit v0

    return-void

    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_1d

    throw v1
.end method


# virtual methods
.method public draw(Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;II)V
    .registers 10

    .line 138
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->getHeight()I

    move-result v5

    move-object v1, p0

    move-object v0, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;->drawTexture(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;IIII)V

    return-void
.end method

.method public draw(Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;IIII)V
    .registers 7

    move-object v0, p1

    move-object p1, p0

    move-object p0, v0

    .line 143
    invoke-interface/range {p0 .. p5}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;->drawTexture(Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;IIII)V

    return-void
.end method

.method protected finalize()V
    .registers 3

    .line 184
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    const-class v1, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 185
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->recycle()V

    .line 186
    sget-object p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->sInFinalizer:Ljava/lang/ThreadLocal;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public getHeight()I
    .registers 1

    .line 104
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mHeight:I

    return p0
.end method

.method public getId()I
    .registers 1

    .line 94
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mId:I

    return p0
.end method

.method protected abstract getTarget()I
.end method

.method public getTextureHeight()I
    .registers 1

    .line 114
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mTextureHeight:I

    return p0
.end method

.method public getTextureWidth()I
    .registers 1

    .line 109
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mTextureWidth:I

    return p0
.end method

.method public getWidth()I
    .registers 1

    .line 99
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mWidth:I

    return p0
.end method

.method public hasBorder()Z
    .registers 1

    .line 129
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mHasBorder:Z

    return p0
.end method

.method public isFlippedVertically()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isLoaded()Z
    .registers 2

    .line 154
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method protected abstract onBind(Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;)Z
.end method

.method public recycle()V
    .registers 1

    .line 160
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->freeResource()V

    return-void
.end method

.method protected setAssociatedCanvas(Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mCanvasRef:Lcom/transsion/camera/feature/mode/dualvideo/glrender/GLCanvas;

    return-void
.end method

.method protected setBorder(Z)V
    .registers 2

    .line 133
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mHasBorder:Z

    return-void
.end method

.method public setSize(II)V
    .registers 4

    .line 79
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mWidth:I

    .line 80
    iput p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mHeight:I

    const/4 v0, 0x0

    if-lez p1, :cond_c

    .line 81
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->nextPowerOf2(I)I

    move-result p1

    goto :goto_d

    :cond_c
    move p1, v0

    :goto_d
    iput p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mTextureWidth:I

    if-lez p2, :cond_15

    .line 82
    invoke-static {p2}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->nextPowerOf2(I)I

    move-result v0

    :cond_15
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mTextureHeight:I

    .line 83
    iget p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mTextureWidth:I

    const/16 p2, 0x1000

    if-gt p1, p2, :cond_21

    if-le v0, p2, :cond_20

    goto :goto_21

    :cond_20
    return-void

    .line 85
    :cond_21
    :goto_21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->mTextureHeight:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 84
    const-string p1, "texture is too large: %d x %d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p2, "BasicTexture"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public yield()V
    .registers 1

    .line 169
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/glrender/BasicTexture;->freeResource()V

    return-void
.end method
