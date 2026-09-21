.class public Lcom/transsion/camera/feature/mode/video/node/impl/MediaDumpNode;
.super Lcom/transsion/camera/feature/mode/video/node/BaseNode;
.source "SourceFile"


# static fields
.field private static final OUTPUT_DIR:Ljava/lang/String; = "/sdcard/DCIM/"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDumpRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MediaDumpNode"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDumpNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/node/BaseNode;-><init>()V

    return-void
.end method

.method static dump(Lcom/transsion/camera/feature/mode/video/node/NodeData;)V
    .registers 6

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mData:[B

    if-nez v0, :cond_c

    .line 91
    sget-object p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDumpNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "dump data is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 95
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sdcard/DCIM/Frames/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v2, p0, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mFrameNumber:I

    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    .line 95
    const-string v3, "frame_%05d_I420_%dx%d.i420"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    :try_start_3b
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_40} :catch_53

    .line 100
    :try_start_40
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mData:[B

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_49

    .line 101
    :try_start_45
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_53

    return-void

    :catchall_49
    move-exception p0

    .line 99
    :try_start_4a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    goto :goto_52

    :catchall_4e
    move-exception v0

    :try_start_4f
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_52
    throw p0
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_53} :catch_53

    :catch_53
    move-exception p0

    .line 102
    sget-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDumpNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpFile write exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private dumpFile(Lcom/transsion/camera/feature/mode/video/node/NodeData;)V
    .registers 4

    .line 75
    iget-object v0, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mData:[B

    if-nez v0, :cond_c

    .line 76
    sget-object p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDumpNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "dumpFile data is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 80
    :cond_c
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDumpNode;->getDumpFileName(Lcom/transsion/camera/feature/mode/video/node/NodeData;)Ljava/lang/String;

    move-result-object p0

    .line 82
    :try_start_10
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_28

    .line 83
    :try_start_15
    iget-object p0, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mData:[B

    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1e

    .line 84
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_28

    return-void

    :catchall_1e
    move-exception p0

    .line 82
    :try_start_1f
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_27

    :catchall_23
    move-exception p1

    :try_start_24
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_27
    throw p0
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_28} :catch_28

    :catch_28
    move-exception p0

    .line 85
    sget-object p1, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDumpNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpFile write exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private getDumpFileName(Lcom/transsion/camera/feature/mode/video/node/NodeData;)Ljava/lang/String;
    .registers 5

    .line 62
    iget p0, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mFormat:I

    const/16 v0, 0x2008

    const-string v1, "/sdcard/DCIM/"

    if-ne p0, v0, :cond_36

    .line 63
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v1, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mFrameNumber:I

    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mHeight:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v1, v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 63
    const-string v1, "frame_%05d_I420_%dx%d.i420"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 67
    :cond_36
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v1, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mFrameNumber:I

    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p1, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mHeight:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v1, v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 67
    const-string v1, "frame_%05d_NV21_%dx%d.nv21"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public process(Lcom/transsion/camera/feature/mode/video/node/NodeData;)Z
    .registers 6

    if-nez p1, :cond_b

    .line 40
    sget-object p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDumpNode;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "process data is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 46
    :cond_b
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDumpNode;->mDumpRange:Landroid/util/Range;

    const/4 v1, -0x1

    if-eqz v0, :cond_27

    .line 47
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 48
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDumpNode;->mDumpRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_29

    :cond_27
    move v0, v1

    move v2, v0

    .line 51
    :goto_29
    iget v3, p1, Lcom/transsion/camera/feature/mode/video/node/NodeData;->mFrameNumber:I

    if-lt v3, v0, :cond_38

    if-ne v2, v1, :cond_31

    if-ne v3, v1, :cond_35

    :cond_31
    if-eq v2, v1, :cond_38

    if-gt v3, v2, :cond_38

    .line 54
    :cond_35
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDumpNode;->dumpFile(Lcom/transsion/camera/feature/mode/video/node/NodeData;)V

    .line 57
    :cond_38
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/video/node/BaseNode;->process(Lcom/transsion/camera/feature/mode/video/node/NodeData;)Z

    move-result p0

    return p0
.end method

.method public setDumpRange(Landroid/util/Range;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/MediaDumpNode;->mDumpRange:Landroid/util/Range;

    return-void
.end method
