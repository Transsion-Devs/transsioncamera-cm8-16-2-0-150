.class public final Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOif;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOif$z1OoOdo;
    }
.end annotation


# static fields
.field public static final z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOif$z1OoOdo;


# instance fields
.field private final z1OoOfor:Ljava/io/File;

.field private z1OoOif:Ljava/io/RandomAccessFile;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOif$z1OoOdo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOif$z1OoOdo;-><init>(B)V

    sput-object v0, Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOif;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOif$z1OoOdo;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 4

    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOif;->z1OoOfor:Ljava/io/File;

    sget-object p0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v0, "AnimPlayer.FileContainer"

    const-string v1, "FileContainer init"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_26

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_26

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result p0

    if-eqz p0, :cond_26

    return-void

    :cond_26
    new-instance p0, Ljava/io/FileNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to read "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final z1OoOdo([BI)I
    .registers 4

    .line 0
    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOif;->z1OoOif:Ljava/io/RandomAccessFile;

    if-eqz p0, :cond_f

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p0

    return p0

    :cond_f
    const/4 p0, -0x1

    return p0
.end method

.method public final z1OoOdo()V
    .registers 4

    .line 0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOif;->z1OoOfor:Ljava/io/File;

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOif;->z1OoOif:Ljava/io/RandomAccessFile;

    return-void
.end method

.method public final z1OoOdo(J)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOif;->z1OoOif:Ljava/io/RandomAccessFile;

    if-eqz p0, :cond_8

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    :cond_8
    return-void
.end method

.method public final z1OoOdo(Landroid/media/MediaExtractor;)V
    .registers 3

    .line 0
    const-string v0, "extractor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOif;->z1OoOfor:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    return-void
.end method

.method public final z1OoOfor()V
    .registers 1

    return-void
.end method

.method public final z1OoOif()V
    .registers 1

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOif;->z1OoOif:Ljava/io/RandomAccessFile;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V

    :cond_7
    return-void
.end method
