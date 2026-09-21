.class public final Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOif;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin$Companion;


# instance fields
.field private animConfig:Lcom/tencent/qgame/animplayer/AnimConfig;

.field private maskRender:Lcom/tencent/qgame/animplayer/mask/MaskRender;

.field private final player:Lcom/tencent/qgame/animplayer/z1OoOif;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;->Companion:Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/qgame/animplayer/z1OoOif;)V
    .registers 3

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;->player:Lcom/tencent/qgame/animplayer/z1OoOif;

    return-void
.end method

.method private final destroy()V
    .registers 1

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;->animConfig:Lcom/tencent/qgame/animplayer/AnimConfig;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getMaskConfig()Lcom/tencent/qgame/animplayer/mask/MaskConfig;

    :cond_7
    return-void
.end method


# virtual methods
.method public final getPlayer()Lcom/tencent/qgame/animplayer/z1OoOif;
    .registers 1

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;->player:Lcom/tencent/qgame/animplayer/z1OoOif;

    return-object p0
.end method

.method public final onConfigCreate(Lcom/tencent/qgame/animplayer/AnimConfig;)I
    .registers 2

    const-string p0, "config"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final onDecoding(I)V
    .registers 2

    return-void
.end method

.method public final onDestroy()V
    .registers 1

    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;->destroy()V

    return-void
.end method

.method public final onDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const-string p0, "ev"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final onRelease()V
    .registers 1

    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;->destroy()V

    return-void
.end method

.method public final onRenderCreate()V
    .registers 4

    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v1, "AnimPlayer.MaskAnimPlugin"

    const-string v2, "mask render init"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;->player:Lcom/tencent/qgame/animplayer/z1OoOif;

    iget-boolean v0, v0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoObyte:Z

    if-eqz v0, :cond_1d

    new-instance v0, Lcom/tencent/qgame/animplayer/mask/MaskRender;

    invoke-direct {v0, p0}, Lcom/tencent/qgame/animplayer/mask/MaskRender;-><init>(Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;)V

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;->maskRender:Lcom/tencent/qgame/animplayer/mask/MaskRender;

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;->player:Lcom/tencent/qgame/animplayer/z1OoOif;

    iget-boolean p0, p0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOcase:Z

    invoke-virtual {v0, p0}, Lcom/tencent/qgame/animplayer/mask/MaskRender;->initMaskShader(Z)V

    :cond_1d
    return-void
.end method

.method public final onRendering(I)V
    .registers 3

    iget-object p1, p0, Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;->player:Lcom/tencent/qgame/animplayer/z1OoOif;

    iget-boolean v0, p1, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoObyte:Z

    if-eqz v0, :cond_1d

    iget-object p1, p1, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOcatch:Lcom/tencent/qgame/animplayer/z1OoOdo;

    iget-object p1, p1, Lcom/tencent/qgame/animplayer/z1OoOdo;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimConfig;

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;->player:Lcom/tencent/qgame/animplayer/z1OoOif;

    iget-object p1, p1, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOcatch:Lcom/tencent/qgame/animplayer/z1OoOdo;

    iget-object p1, p1, Lcom/tencent/qgame/animplayer/z1OoOdo;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimConfig;

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;->animConfig:Lcom/tencent/qgame/animplayer/AnimConfig;

    if-eqz p1, :cond_1d

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/mask/MaskAnimPlugin;->maskRender:Lcom/tencent/qgame/animplayer/mask/MaskRender;

    if-eqz p0, :cond_1d

    invoke-virtual {p0, p1}, Lcom/tencent/qgame/animplayer/mask/MaskRender;->renderFrame(Lcom/tencent/qgame/animplayer/AnimConfig;)V

    :cond_1d
    return-void
.end method
