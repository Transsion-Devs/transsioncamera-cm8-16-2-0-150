.class public Lcom/effectsar/labcv/effectsdk/PortraitMatting$MattingMask;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/PortraitMatting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MattingMask"
.end annotation


# instance fields
.field private buffer:[B

.field private height:I

.field final synthetic this$0:Lcom/effectsar/labcv/effectsdk/PortraitMatting;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/effectsar/labcv/effectsdk/PortraitMatting;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/effectsar/labcv/effectsdk/PortraitMatting$MattingMask;->this$0:Lcom/effectsar/labcv/effectsdk/PortraitMatting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/effectsar/labcv/effectsdk/PortraitMatting$MattingMask;->buffer:[B

    return-object p0
.end method

.method public getHeight()I
    .registers 1

    .line 46
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/PortraitMatting$MattingMask;->height:I

    return p0
.end method

.method public getWidth()I
    .registers 1

    .line 41
    iget p0, p0, Lcom/effectsar/labcv/effectsdk/PortraitMatting$MattingMask;->width:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 51
    iget-object v0, p0, Lcom/effectsar/labcv/effectsdk/PortraitMatting$MattingMask;->buffer:[B

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/effectsar/labcv/effectsdk/PortraitMatting$MattingMask;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcom/effectsar/labcv/effectsdk/PortraitMatting$MattingMask;->height:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "l: %d w:%d, h:%d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
