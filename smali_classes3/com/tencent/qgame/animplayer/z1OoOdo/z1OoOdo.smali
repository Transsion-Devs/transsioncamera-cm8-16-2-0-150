.class public final Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOdo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOdo$z1OoOdo;
    }
.end annotation


# static fields
.field public static final z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOdo$z1OoOdo;


# instance fields
.field private final z1OoOfor:Landroid/content/res/AssetManager$AssetInputStream;

.field private final z1OoOif:Landroid/content/res/AssetFileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOdo$z1OoOdo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOdo$z1OoOdo;-><init>(B)V

    sput-object v0, Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOdo;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOdo$z1OoOdo;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .registers 5

    const-string v0, "assetManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetsPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    const-string v1, "assetManager.openFd(assetsPath)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOdo;->z1OoOif:Landroid/content/res/AssetFileDescriptor;

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_2d

    check-cast p1, Landroid/content/res/AssetManager$AssetInputStream;

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOdo;->z1OoOfor:Landroid/content/res/AssetManager$AssetInputStream;

    sget-object p0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string p1, "AnimPlayer.FileContainer"

    const-string p2, "AssetsFileContainer init"

    invoke-virtual {p0, p1, p2}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2d
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type android.content.res.AssetManager.AssetInputStream"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final z1OoOdo([BI)I
    .registers 4

    .line 0
    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOdo;->z1OoOfor:Landroid/content/res/AssetManager$AssetInputStream;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/res/AssetManager$AssetInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public final z1OoOdo()V
    .registers 1

    .line 0
    return-void
.end method

.method public final z1OoOdo(J)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOdo;->z1OoOfor:Landroid/content/res/AssetManager$AssetInputStream;

    invoke-virtual {p0, p1, p2}, Landroid/content/res/AssetManager$AssetInputStream;->skip(J)J

    return-void
.end method

.method public final z1OoOdo(Landroid/media/MediaExtractor;)V
    .registers 9

    .line 0
    const-string v0, "extractor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOdo;->z1OoOif:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1b

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOdo;->z1OoOif:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    return-void

    :cond_1b
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOdo;->z1OoOif:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOdo;->z1OoOif:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOdo;->z1OoOif:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v5

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    return-void
.end method

.method public final z1OoOfor()V
    .registers 2

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOdo;->z1OoOif:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOdo;->z1OoOfor:Landroid/content/res/AssetManager$AssetInputStream;

    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->close()V

    return-void
.end method

.method public final z1OoOif()V
    .registers 1

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOdo;->z1OoOfor:Landroid/content/res/AssetManager$AssetInputStream;

    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->close()V

    return-void
.end method
