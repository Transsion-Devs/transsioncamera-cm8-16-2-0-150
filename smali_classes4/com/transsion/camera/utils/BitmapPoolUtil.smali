.class public final enum Lcom/transsion/camera/utils/BitmapPoolUtil;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/utils/BitmapPoolUtil;

.field public static final enum INSTANCE:Lcom/transsion/camera/utils/BitmapPoolUtil;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mBitmapPool:Lcom/transsion/camera/utils/bitmap_recycle/BitmapPool;


# direct methods
.method public static synthetic $r8$lambda$CyWY_3DsNj4JKI0jUcQkL75yJ7U(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 51
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_9

    .line 52
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_9
    return-void
.end method

.method private static synthetic $values()[Lcom/transsion/camera/utils/BitmapPoolUtil;
    .registers 1

    .line 14
    sget-object v0, Lcom/transsion/camera/utils/BitmapPoolUtil;->INSTANCE:Lcom/transsion/camera/utils/BitmapPoolUtil;

    filled-new-array {v0}, [Lcom/transsion/camera/utils/BitmapPoolUtil;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 15
    new-instance v0, Lcom/transsion/camera/utils/BitmapPoolUtil;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/utils/BitmapPoolUtil;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/utils/BitmapPoolUtil;->INSTANCE:Lcom/transsion/camera/utils/BitmapPoolUtil;

    .line 14
    invoke-static {}, Lcom/transsion/camera/utils/BitmapPoolUtil;->$values()[Lcom/transsion/camera/utils/BitmapPoolUtil;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/BitmapPoolUtil;->$VALUES:[Lcom/transsion/camera/utils/BitmapPoolUtil;

    .line 17
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BitmapPoolUtil"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/BitmapPoolUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private isBitmapPoolAvailable()Z
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/utils/BitmapPoolUtil;->mBitmapPool:Lcom/transsion/camera/utils/bitmap_recycle/BitmapPool;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/utils/BitmapPoolUtil;
    .registers 2

    .line 14
    const-class v0, Lcom/transsion/camera/utils/BitmapPoolUtil;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/utils/BitmapPoolUtil;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/utils/BitmapPoolUtil;
    .registers 1

    .line 14
    sget-object v0, Lcom/transsion/camera/utils/BitmapPoolUtil;->$VALUES:[Lcom/transsion/camera/utils/BitmapPoolUtil;

    invoke-virtual {v0}, [Lcom/transsion/camera/utils/BitmapPoolUtil;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/utils/BitmapPoolUtil;

    return-object v0
.end method


# virtual methods
.method public clearMemory()V
    .registers 2

    .line 71
    invoke-direct {p0}, Lcom/transsion/camera/utils/BitmapPoolUtil;->isBitmapPoolAvailable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 74
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/utils/BitmapPoolUtil;->mBitmapPool:Lcom/transsion/camera/utils/bitmap_recycle/BitmapPool;

    invoke-interface {p0}, Lcom/transsion/camera/utils/bitmap_recycle/BitmapPool;->clearMemory()V

    return-void
.end method

.method public get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 5

    .line 43
    invoke-direct {p0}, Lcom/transsion/camera/utils/BitmapPoolUtil;->isBitmapPoolAvailable()Z

    move-result v0

    if-nez v0, :cond_b

    .line 44
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 46
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/utils/BitmapPoolUtil;->mBitmapPool:Lcom/transsion/camera/utils/bitmap_recycle/BitmapPool;

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/utils/bitmap_recycle/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public get(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 5

    .line 34
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/transsion/camera/utils/BitmapPoolUtil;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eq p0, p1, :cond_13

    return-object p0

    .line 38
    :cond_13
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "get the wrong bitmap"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public init(Landroid/content/Context;)Lcom/transsion/camera/utils/BitmapPoolUtil;
    .registers 5

    .line 21
    iget-object v0, p0, Lcom/transsion/camera/utils/BitmapPoolUtil;->mBitmapPool:Lcom/transsion/camera/utils/bitmap_recycle/BitmapPool;

    if-nez v0, :cond_23

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$Builder;

    invoke-direct {v0, p1}, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator$Builder;->build()Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/transsion/camera/utils/bitmap_recycle/MemorySizeCalculator;->getBitmapPoolSize()I

    move-result p1

    if-lez p1, :cond_1c

    .line 25
    new-instance v0, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/utils/bitmap_recycle/LruBitmapPool;-><init>(J)V

    iput-object v0, p0, Lcom/transsion/camera/utils/BitmapPoolUtil;->mBitmapPool:Lcom/transsion/camera/utils/bitmap_recycle/BitmapPool;

    return-object p0

    .line 27
    :cond_1c
    new-instance p1, Lcom/transsion/camera/utils/bitmap_recycle/BitmapPoolAdapter;

    invoke-direct {p1}, Lcom/transsion/camera/utils/bitmap_recycle/BitmapPoolAdapter;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/utils/BitmapPoolUtil;->mBitmapPool:Lcom/transsion/camera/utils/bitmap_recycle/BitmapPool;

    :cond_23
    return-object p0
.end method

.method public put(Landroid/graphics/Bitmap;)V
    .registers 3

    .line 50
    new-instance v0, Lcom/transsion/camera/utils/BitmapPoolUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/transsion/camera/utils/BitmapPoolUtil$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/utils/BitmapPoolUtil;->put(Landroid/graphics/Bitmap;Ljava/lang/Runnable;)V

    return-void
.end method

.method public put(Landroid/graphics/Bitmap;Ljava/lang/Runnable;)V
    .registers 6

    .line 58
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_62

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_62

    .line 61
    :cond_d
    invoke-direct {p0}, Lcom/transsion/camera/utils/BitmapPoolUtil;->isBitmapPoolAvailable()Z

    move-result v0

    if-nez v0, :cond_17

    .line 62
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    .line 65
    :cond_17
    iget-object p2, p0, Lcom/transsion/camera/utils/BitmapPoolUtil;->mBitmapPool:Lcom/transsion/camera/utils/bitmap_recycle/BitmapPool;

    invoke-interface {p2, p1}, Lcom/transsion/camera/utils/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    .line 66
    sget-object p2, Lcom/transsion/camera/utils/BitmapPoolUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "put: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "], "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/utils/BitmapPoolUtil;->mBitmapPool:Lcom/transsion/camera/utils/bitmap_recycle/BitmapPool;

    invoke-interface {p0}, Lcom/transsion/camera/utils/bitmap_recycle/BitmapPool;->getMaxSize()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 66
    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_62
    :goto_62
    return-void
.end method
