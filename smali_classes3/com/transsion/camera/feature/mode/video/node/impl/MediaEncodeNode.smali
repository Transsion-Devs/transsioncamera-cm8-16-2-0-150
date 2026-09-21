.class public Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;
.super Lcom/transsion/camera/feature/mode/video/node/BufferNode;
.source "SourceFile"


# static fields
.field private static final CACHE_CAPACITY:I = 0x3

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCaptureRate:I

.field private mEncoder:Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;

.field private mFileDescriptor:Ljava/io/FileDescriptor;

.field private mFilePath:Ljava/lang/String;

.field private mFrameCache:Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache<",
            "Lcom/transsion/camera/feature/mode/video/node/NodeData;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameRate:I

.field private mNeedCache:Z

.field private mOrientation:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MediaEncodeNode"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 44
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/node/BufferNode;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->mFrameRate:I

    .line 31
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->mOrientation:I

    .line 32
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->mCaptureRate:I

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->mNeedCache:Z

    .line 45
    new-instance v0, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->mFrameCache:Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;

    return-void
.end method


# virtual methods
.method public init()V
    .registers 3

    .line 73
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/video/node/BufferNode;->init()V

    .line 75
    sget-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init MediaEncodeNode"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->mNeedCache:Z

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->mFrameCache:Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;->clear()V

    .line 79
    new-instance v0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->mEncoder:Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;

    .line 80
    iget v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->setOrientation(I)V

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->mEncoder:Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->mCaptureRate:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->setCaptureRate(I)V

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->mEncoder:Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->mFrameRate:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->setFrameRate(I)V

    .line 85
    :try_start_2c
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->mFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_36

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->mEncoder:Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->initEncoder(Ljava/io/FileDescriptor;)V

    return-void

    .line 88
    :cond_36
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->mEncoder:Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->initEncoder(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_3d} :catch_3e

    return-void

    :catch_3e
    move-exception p0

    .line 91
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method protected processInternal(Lcom/transsion/camera/feature/mode/video/node/NodeData;)Z
    .registers 8

    .line 112
    sget-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processInternal frameNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mFrameNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 114
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->mNeedCache:Z

    if-eqz v1, :cond_7e

    .line 115
    iget-boolean v1, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mKeepFrame:Z

    if-eqz v1, :cond_4e

    const/4 v1, 0x0

    .line 116
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->mNeedCache:Z

    .line 118
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->mFrameCache:Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;

    iget v2, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mFrameNumber:I

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->mFrameCache:Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;

    iget v1, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mFrameNumber:I

    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f2

    .line 121
    :cond_36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processInternal the reBack frame is not cached: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mFrameNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_f2

    .line 124
    :cond_4e
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->mFrameCache:Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;

    iget v2, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mFrameNumber:I

    invoke-virtual {v1, v2, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;->put(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/video/node/NodeData;

    if-eqz v1, :cond_f2

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processInternal encode cache frame: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mFrameNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->mEncoder:Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;

    iget-object v2, v1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mData:[B

    iget v3, v1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mFrameNumber:I

    iget v4, v1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mWidth:I

    iget v1, v1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mHeight:I

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->encode([BIII)Z

    goto :goto_f2

    .line 131
    :cond_7e
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->mFrameCache:Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;

    iget v1, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mFrameNumber:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->mFrameCache:Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;

    iget v1, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mFrameNumber:I

    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_f2

    .line 134
    :cond_90
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->mFrameCache:Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;->size()I

    move-result v0

    if-lez v0, :cond_e5

    .line 136
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->mFrameCache:Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;->keys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 137
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->mFrameCache:Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/video/node/NodeData;

    .line 138
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->mEncoder:Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;

    iget-object v3, v1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mData:[B

    iget v4, v1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mFrameNumber:I

    iget v5, v1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mWidth:I

    iget v1, v1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mHeight:I

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->encode([BIII)Z

    goto :goto_a2

    .line 140
    :cond_c8
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->mFrameCache:Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;->clear()V

    .line 141
    sget-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processInternal clear cache frame: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mFrameNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 143
    :cond_e5
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->mEncoder:Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;

    iget-object v1, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mData:[B

    iget v2, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mFrameNumber:I

    iget v3, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mWidth:I

    iget v4, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->encode([BIII)Z

    .line 147
    :cond_f2
    :goto_f2
    iget-object v0, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mData:[B

    if-eqz v0, :cond_fb

    iget p1, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mFrameNumber:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_102

    .line 148
    :cond_fb
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/node/BaseNode;->mProcessListener:Lcom/transsion/camera/feature/mode/video/node/INode$IProcessListener;

    if-eqz p0, :cond_102

    .line 149
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/video/node/INode$IProcessListener;->onProcessEnd()V

    :cond_102
    const/4 p0, 0x1

    return p0
.end method

.method public setCaptureRate(I)V
    .registers 5

    .line 59
    sget-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCaptureRate fps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 60
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->mCaptureRate:I

    return-void
.end method

.method public setFileDescriptor(Ljava/io/FileDescriptor;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->mFileDescriptor:Ljava/io/FileDescriptor;

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method public setFrameRate(I)V
    .registers 5

    .line 54
    sget-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFrameRate rate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 55
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->mFrameRate:I

    return-void
.end method

.method public setOrientation(I)V
    .registers 5

    .line 49
    sget-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOrientation orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 50
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->mOrientation:I

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 97
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/video/node/BufferNode;->unInit()V

    .line 98
    sget-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "unInit MediaEncodeNode"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->mNeedCache:Z

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->mFrameCache:Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;->clear()V

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->mEncoder:Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;

    if-eqz v0, :cond_1a

    .line 103
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->unInitEncoder()V

    :cond_1a
    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->mEncoder:Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;

    .line 106
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->mFilePath:Ljava/lang/String;

    .line 107
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaEncodeNode;->mFileDescriptor:Ljava/io/FileDescriptor;

    return-void
.end method
