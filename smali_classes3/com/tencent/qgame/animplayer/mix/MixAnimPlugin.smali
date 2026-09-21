.class public final Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOif;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin$Companion;
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin$Companion;


# instance fields
.field private autoTxtColorFill:Z

.field private curFrameIndex:I

.field private forceStopLock:Z

.field private frameAll:Lcom/tencent/qgame/animplayer/mix/FrameAll;

.field private final lock:Ljava/lang/Object;

.field private mixRender:Lcom/tencent/qgame/animplayer/mix/MixRender;

.field private final mixTouch$delegate:Lkotlin/Lazy;

.field private final player:Lcom/tencent/qgame/animplayer/z1OoOif;

.field private srcMap:Lcom/tencent/qgame/animplayer/mix/SrcMap;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-string v2, "mixTouch"

    const-string v3, "getMixTouch()Lcom/tencent/qgame/animplayer/mix/MixTouch;"

    invoke-direct {v0, v1, v2, v3}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;->Companion:Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/qgame/animplayer/z1OoOif;)V
    .registers 3

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;->player:Lcom/tencent/qgame/animplayer/z1OoOif;

    const/4 p1, -0x1

    iput p1, p0, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;->curFrameIndex:I

    new-instance p1, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin$mixTouch$2;

    invoke-direct {p1, p0}, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin$mixTouch$2;-><init>(Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;->mixTouch$delegate:Lkotlin/Lazy;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;->autoTxtColorFill:Z

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;->lock:Ljava/lang/Object;

    return-void
.end method

.method private final destroy()V
    .registers 2

    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;->forceStopLockThread()V

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;->player:Lcom/tencent/qgame/animplayer/z1OoOif;

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOcatch:Lcom/tencent/qgame/animplayer/z1OoOdo;

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/z1OoOdo;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimConfig;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->isMix()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_1a

    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;->curFrameIndex:I

    :goto_1a
    return-void
.end method

.method private final forceStopLockThread()V
    .registers 3

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;->forceStopLock:Z

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;->lock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_f

    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final getAutoTxtColorFill()Z
    .registers 1

    iget-boolean p0, p0, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;->autoTxtColorFill:Z

    return p0
.end method

.method public final getPlayer()Lcom/tencent/qgame/animplayer/z1OoOif;
    .registers 1

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;->player:Lcom/tencent/qgame/animplayer/z1OoOif;

    return-object p0
.end method

.method public final getSrcMap()Lcom/tencent/qgame/animplayer/mix/SrcMap;
    .registers 1

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;->srcMap:Lcom/tencent/qgame/animplayer/mix/SrcMap;

    return-object p0
.end method

.method public final onConfigCreate(Lcom/tencent/qgame/animplayer/AnimConfig;)I
    .registers 4

    const-string p0, "config"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->isMix()Z

    move-result p0

    const/4 p1, 0x0

    if-nez p0, :cond_d

    return p1

    :cond_d
    sget-object p0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v0, "AnimPlayer.MixAnimPlugin"

    const-string v1, "IFetchResource is empty"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method public final onDecoding(I)V
    .registers 2

    return-void
.end method

.method public final onDestroy()V
    .registers 1

    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;->destroy()V

    return-void
.end method

.method public final onDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;->player:Lcom/tencent/qgame/animplayer/z1OoOif;

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOcatch:Lcom/tencent/qgame/animplayer/z1OoOdo;

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOdo;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimConfig;

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Lcom/tencent/qgame/animplayer/AnimConfig;->isMix()Z

    move-result p0

    :cond_11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final onRelease()V
    .registers 1

    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;->destroy()V

    return-void
.end method

.method public final onRenderCreate()V
    .registers 4

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;->player:Lcom/tencent/qgame/animplayer/z1OoOif;

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOcatch:Lcom/tencent/qgame/animplayer/z1OoOdo;

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/z1OoOdo;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimConfig;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->isMix()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v1, "AnimPlayer.MixAnimPlugin"

    const-string v2, "mix render init"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/qgame/animplayer/mix/MixRender;

    invoke-direct {v0, p0}, Lcom/tencent/qgame/animplayer/mix/MixRender;-><init>(Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;)V

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;->mixRender:Lcom/tencent/qgame/animplayer/mix/MixRender;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/mix/MixRender;->init()V

    return-void
.end method

.method public final onRendering(I)V
    .registers 3

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;->player:Lcom/tencent/qgame/animplayer/z1OoOif;

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOcatch:Lcom/tencent/qgame/animplayer/z1OoOdo;

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/z1OoOdo;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimConfig;

    if-nez v0, :cond_9

    goto :goto_12

    :cond_9
    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->isMix()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_12

    :cond_10
    iput p1, p0, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;->curFrameIndex:I

    :goto_12
    return-void
.end method

.method public final setResourceClickListener(Lcom/tencent/qgame/animplayer/inter/OnResourceClickListener;)V
    .registers 2

    return-void
.end method

.method public final setResourceRequest(Lcom/tencent/qgame/animplayer/inter/IFetchResource;)V
    .registers 2

    return-void
.end method
