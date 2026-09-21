.class Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode$MediaAvcDataCallBackImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder$IMediaAvcDataCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaAvcDataCallBackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;)V
    .registers 2

    .line 107
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode$MediaAvcDataCallBackImpl;->this$0:Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode$MediaAvcDataCallBackImpl;-><init>(Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;)V

    return-void
.end method


# virtual methods
.method public decodedAvcData(I[BIIIZZ)V
    .registers 16

    .line 111
    invoke-static {}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decode avc data frameNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode$MediaAvcDataCallBackImpl;->this$0:Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;

    new-instance v0, Lcom/transsion/camera/feature/mode/video/node/NodeData;

    move v1, p1

    move-object v5, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/feature/mode/video/node/NodeData;-><init>(IIII[BZZ)V

    # invokes: Lcom/transsion/camera/feature/mode/video/node/BaseNode;->deliverToNext(Lcom/transsion/camera/feature/mode/video/node/NodeData;)Z
    invoke-static {p0, v0}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;->access$000(Lcom/transsion/camera/feature/mode/video/node/impl/MediaDecodeNode;Lcom/transsion/camera/feature/mode/video/node/NodeData;)Z

    return-void
.end method
