.class public final Lcom/tencent/qgame/animplayer/mix/Resource;
.super Ljava/lang/Object;


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private id:Ljava/lang/String;

.field private loadType:Lcom/tencent/qgame/animplayer/mix/Src$LoadType;

.field private tag:Ljava/lang/String;

.field private type:Lcom/tencent/qgame/animplayer/mix/Src$SrcType;


# direct methods
.method public constructor <init>(Lcom/tencent/qgame/animplayer/mix/Src;)V
    .registers 4

    const-string v0, "src"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/mix/Resource;->id:Ljava/lang/String;

    sget-object v1, Lcom/tencent/qgame/animplayer/mix/Src$SrcType;->UNKNOWN:Lcom/tencent/qgame/animplayer/mix/Src$SrcType;

    iput-object v1, p0, Lcom/tencent/qgame/animplayer/mix/Resource;->type:Lcom/tencent/qgame/animplayer/mix/Src$SrcType;

    sget-object v1, Lcom/tencent/qgame/animplayer/mix/Src$LoadType;->UNKNOWN:Lcom/tencent/qgame/animplayer/mix/Src$LoadType;

    iput-object v1, p0, Lcom/tencent/qgame/animplayer/mix/Resource;->loadType:Lcom/tencent/qgame/animplayer/mix/Src$LoadType;

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/mix/Resource;->tag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/mix/Src;->getSrcId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/mix/Resource;->id:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/mix/Src;->getSrcType()Lcom/tencent/qgame/animplayer/mix/Src$SrcType;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/mix/Resource;->type:Lcom/tencent/qgame/animplayer/mix/Src$SrcType;

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/mix/Src;->getLoadType()Lcom/tencent/qgame/animplayer/mix/Src$LoadType;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/mix/Resource;->loadType:Lcom/tencent/qgame/animplayer/mix/Src$LoadType;

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/mix/Src;->getSrcTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/mix/Resource;->tag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/mix/Src;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/mix/Resource;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method
