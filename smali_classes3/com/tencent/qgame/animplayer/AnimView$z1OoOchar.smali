.class final Lcom/tencent/qgame/animplayer/AnimView$z1OoOchar;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qgame/animplayer/AnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final z1OoOdo:Lcom/tencent/qgame/animplayer/AnimView$z1OoOchar;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/tencent/qgame/animplayer/AnimView$z1OoOchar;

    invoke-direct {v0}, Lcom/tencent/qgame/animplayer/AnimView$z1OoOchar;-><init>()V

    sput-object v0, Lcom/tencent/qgame/animplayer/AnimView$z1OoOchar;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimView$z1OoOchar;

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
    .registers 2

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object p0
.end method
