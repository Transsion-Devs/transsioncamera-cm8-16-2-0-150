.class final Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOif;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qgame/animplayer/z1OoOcase;-><init>(Lcom/tencent/qgame/animplayer/z1OoOif;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOif;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOif;

    invoke-direct {v0}, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOif;-><init>()V

    sput-object v0, Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOif;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOcase$z1OoOif;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .registers 1

    new-instance p0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    return-object p0
.end method
