.class public Lcom/effectsar/labcv/effectsdk/HairParser$HairMask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/HairParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HairMask"
.end annotation


# instance fields
.field private buffer:[B

.field private channel:I

.field private height:I

.field final synthetic this$0:Lcom/effectsar/labcv/effectsdk/HairParser;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/effectsar/labcv/effectsdk/HairParser;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/effectsar/labcv/effectsdk/HairParser$HairMask;->this$0:Lcom/effectsar/labcv/effectsdk/HairParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/effectsar/labcv/effectsdk/HairParser$HairMask;)I
    .registers 1

    .line 31
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/HairParser$HairMask;->width:I

    return p0
.end method

.method static synthetic access$002(Lcom/effectsar/labcv/effectsdk/HairParser$HairMask;I)I
    .registers 2

    .line 31
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/HairParser$HairMask;->width:I

    return p1
.end method

.method static synthetic access$100(Lcom/effectsar/labcv/effectsdk/HairParser$HairMask;)I
    .registers 1

    .line 31
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/HairParser$HairMask;->height:I

    return p0
.end method

.method static synthetic access$102(Lcom/effectsar/labcv/effectsdk/HairParser$HairMask;I)I
    .registers 2

    .line 31
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/HairParser$HairMask;->height:I

    return p1
.end method

.method static synthetic access$200(Lcom/effectsar/labcv/effectsdk/HairParser$HairMask;)I
    .registers 1

    .line 31
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/HairParser$HairMask;->channel:I

    return p0
.end method

.method static synthetic access$202(Lcom/effectsar/labcv/effectsdk/HairParser$HairMask;I)I
    .registers 2

    .line 31
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/HairParser$HairMask;->channel:I

    return p1
.end method

.method static synthetic access$300(Lcom/effectsar/labcv/effectsdk/HairParser$HairMask;)[B
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/HairParser$HairMask;->buffer:[B

    return-object p0
.end method

.method static synthetic access$302(Lcom/effectsar/labcv/effectsdk/HairParser$HairMask;[B)[B
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/effectsar/labcv/effectsdk/HairParser$HairMask;->buffer:[B

    return-object p1
.end method


# virtual methods
.method public getBuffer()[B
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/HairParser$HairMask;->buffer:[B

    return-object p0
.end method

.method public getHeight()I
    .registers 1

    .line 46
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/HairParser$HairMask;->height:I

    return p0
.end method

.method public getWidth()I
    .registers 1

    .line 42
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/HairParser$HairMask;->width:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 51
    iget-object v0, p0, Lcom/effectsar/labcv/effectsdk/HairParser$HairMask;->buffer:[B

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/effectsar/labcv/effectsdk/HairParser$HairMask;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcom/effectsar/labcv/effectsdk/HairParser$HairMask;->height:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "l: %d w:%d, h:%d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
