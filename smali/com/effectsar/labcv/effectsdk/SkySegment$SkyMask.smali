.class public Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/SkySegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SkyMask"
.end annotation


# instance fields
.field private buffer:[B

.field private channel:I

.field private height:I

.field final synthetic this$0:Lcom/effectsar/labcv/effectsdk/SkySegment;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/effectsar/labcv/effectsdk/SkySegment;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;->this$0:Lcom/effectsar/labcv/effectsdk/SkySegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;)I
    .registers 1

    .line 26
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;->width:I

    return p0
.end method

.method static synthetic access$002(Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;I)I
    .registers 2

    .line 26
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;->width:I

    return p1
.end method

.method static synthetic access$100(Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;)I
    .registers 1

    .line 26
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;->height:I

    return p0
.end method

.method static synthetic access$102(Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;I)I
    .registers 2

    .line 26
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;->height:I

    return p1
.end method

.method static synthetic access$200(Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;)I
    .registers 1

    .line 26
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;->channel:I

    return p0
.end method

.method static synthetic access$202(Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;I)I
    .registers 2

    .line 26
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;->channel:I

    return p1
.end method

.method static synthetic access$300(Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;)[B
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;->buffer:[B

    return-object p0
.end method

.method static synthetic access$302(Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;[B)[B
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;->buffer:[B

    return-object p1
.end method


# virtual methods
.method public getBuffer()[B
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;->buffer:[B

    return-object p0
.end method

.method public getHeight()I
    .registers 1

    .line 41
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;->height:I

    return p0
.end method

.method public getWidth()I
    .registers 1

    .line 37
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;->width:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 46
    iget-object v0, p0, Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;->buffer:[B

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcom/effectsar/labcv/effectsdk/SkySegment$SkyMask;->height:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "l: %d w:%d, h:%d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
