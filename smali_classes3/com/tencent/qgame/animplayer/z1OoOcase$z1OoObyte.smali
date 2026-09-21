.class final Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoObyte;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qgame/animplayer/z1OoOcase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic z1OoOdo:Landroid/media/MediaCodec;

.field final synthetic z1OoOfor:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOcase;

.field final synthetic z1OoOint:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic z1OoOnew:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method constructor <init>(Landroid/media/MediaCodec;Lcom/tencent/qgame/animplayer/z1OoOcase;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .registers 6

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoObyte;->z1OoOdo:Landroid/media/MediaCodec;

    iput-object p2, p0, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoObyte;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOcase;

    iput-object p3, p0, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoObyte;->z1OoOfor:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoObyte;->z1OoOint:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p5, p0, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoObyte;->z1OoOnew:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoObyte;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOcase;

    iget-object v1, p0, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoObyte;->z1OoOint:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroid/media/MediaExtractor;

    iget-object v2, p0, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoObyte;->z1OoOdo:Landroid/media/MediaCodec;

    const-string v3, "this"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOdo(Lcom/tencent/qgame/animplayer/z1OoOcase;Landroid/media/MediaExtractor;Landroid/media/MediaCodec;)V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    move-exception v0

    sget-object v1, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v2, "MediaCodec exception e="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "AnimPlayer.HardDecoder"

    invoke-virtual {v1, v3, v2, v0}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoObyte;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOcase;

    const-string v2, "0x2 MediaCodec exception e="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2712

    invoke-virtual {v1, v2, v0}, Lcom/tencent/qgame/animplayer/z1OoOnew;->onFailed(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoObyte;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOcase;

    iget-object v1, p0, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoObyte;->z1OoOnew:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroid/media/MediaCodec;

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoObyte;->z1OoOint:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroid/media/MediaExtractor;

    invoke-static {v0, v1, p0}, Lcom/tencent/qgame/animplayer/z1OoOcase;->z1OoOdo(Lcom/tencent/qgame/animplayer/z1OoOcase;Landroid/media/MediaCodec;Landroid/media/MediaExtractor;)V

    return-void
.end method
