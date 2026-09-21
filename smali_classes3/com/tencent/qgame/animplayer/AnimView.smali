.class public abstract Lcom/tencent/qgame/animplayer/AnimView;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/tencent/qgame/animplayer/IAnimView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qgame/animplayer/AnimView$z1OoOdo;
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/tencent/qgame/animplayer/AnimView$z1OoOdo;


# instance fields
.field private animListener:Lcom/tencent/qgame/animplayer/inter/IAnimListener;

.field private final animProxyListener$delegate:Lkotlin/Lazy;

.field private autoDismiss:Z

.field private innerTextureView:Lcom/tencent/qgame/animplayer/z1OoOfor/z1OoOdo;

.field private lastFile:Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;

.field private needPrepareTextureView:Z

.field private onSizeChangedCalled:Z

.field private player:Lcom/tencent/qgame/animplayer/z1OoOif;

.field private final prepareTextureViewRunnable:Ljava/lang/Runnable;

.field private final scaleTypeUtil:Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;

.field private surface:Landroid/graphics/SurfaceTexture;

.field private final uiHandler$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Lcom/tencent/qgame/animplayer/AnimView;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string/jumbo v3, "uiHandler"

    const-string v4, "getUiHandler()Landroid/os/Handler;"

    invoke-direct {v0, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-string v3, "animProxyListener"

    const-string v4, "getAnimProxyListener()Lcom/tencent/qgame/animplayer/AnimView$animProxyListener$2$1;"

    invoke-direct {v2, v1, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lkotlin/reflect/KProperty;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, Lcom/tencent/qgame/animplayer/AnimView;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/tencent/qgame/animplayer/AnimView$z1OoOdo;

    invoke-direct {v0, v3}, Lcom/tencent/qgame/animplayer/AnimView$z1OoOdo;-><init>(B)V

    sput-object v0, Lcom/tencent/qgame/animplayer/AnimView;->Companion:Lcom/tencent/qgame/animplayer/AnimView$z1OoOdo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    .line 0
    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qgame/animplayer/AnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p2, Lcom/tencent/qgame/animplayer/AnimView$z1OoOchar;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimView$z1OoOchar;

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/qgame/animplayer/AnimView;->uiHandler$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;

    invoke-direct {p2}, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;-><init>()V

    iput-object p2, p0, Lcom/tencent/qgame/animplayer/AnimView;->scaleTypeUtil:Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/tencent/qgame/animplayer/AnimView;->autoDismiss:Z

    new-instance p2, Lcom/tencent/qgame/animplayer/AnimView$z1OoOif;

    invoke-direct {p2, p0}, Lcom/tencent/qgame/animplayer/AnimView$z1OoOif;-><init>(Lcom/tencent/qgame/animplayer/AnimView;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/tencent/qgame/animplayer/AnimView;->animProxyListener$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/tencent/qgame/animplayer/AnimView$z1OoOtry;

    invoke-direct {p2, p0, p1}, Lcom/tencent/qgame/animplayer/AnimView$z1OoOtry;-><init>(Lcom/tencent/qgame/animplayer/AnimView;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/tencent/qgame/animplayer/AnimView;->prepareTextureViewRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/AnimView;->hide()V

    new-instance p1, Lcom/tencent/qgame/animplayer/z1OoOif;

    invoke-direct {p1, p0}, Lcom/tencent/qgame/animplayer/z1OoOif;-><init>(Lcom/tencent/qgame/animplayer/IAnimView;)V

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/AnimView;->player:Lcom/tencent/qgame/animplayer/z1OoOif;

    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/AnimView;->getAnimProxyListener()Lcom/tencent/qgame/animplayer/AnimView$z1OoOif$1;

    move-result-object p0

    iput-object p0, p1, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOdo:Lcom/tencent/qgame/animplayer/inter/IAnimListener;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    .line 0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_a

    const/4 p3, 0x0

    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/qgame/animplayer/AnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getAnimListener$p(Lcom/tencent/qgame/animplayer/AnimView;)Lcom/tencent/qgame/animplayer/inter/IAnimListener;
    .registers 1

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/AnimView;->animListener:Lcom/tencent/qgame/animplayer/inter/IAnimListener;

    return-object p0
.end method

.method public static final synthetic access$getAutoDismiss$p(Lcom/tencent/qgame/animplayer/AnimView;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/tencent/qgame/animplayer/AnimView;->autoDismiss:Z

    return p0
.end method

.method public static final synthetic access$getInnerTextureView$p(Lcom/tencent/qgame/animplayer/AnimView;)Lcom/tencent/qgame/animplayer/z1OoOfor/z1OoOdo;
    .registers 1

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/AnimView;->innerTextureView:Lcom/tencent/qgame/animplayer/z1OoOfor/z1OoOdo;

    return-object p0
.end method

.method public static final synthetic access$getPlayer$p(Lcom/tencent/qgame/animplayer/AnimView;)Lcom/tencent/qgame/animplayer/z1OoOif;
    .registers 2

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/AnimView;->player:Lcom/tencent/qgame/animplayer/z1OoOif;

    if-nez p0, :cond_9

    const-string v0, "player"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    return-object p0
.end method

.method public static final synthetic access$getScaleTypeUtil$p(Lcom/tencent/qgame/animplayer/AnimView;)Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;
    .registers 1

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/AnimView;->scaleTypeUtil:Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;

    return-object p0
.end method

.method public static final synthetic access$hide(Lcom/tencent/qgame/animplayer/AnimView;)V
    .registers 1

    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/AnimView;->hide()V

    return-void
.end method

.method public static final synthetic access$setInnerTextureView$p(Lcom/tencent/qgame/animplayer/AnimView;Lcom/tencent/qgame/animplayer/z1OoOfor/z1OoOdo;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/AnimView;->innerTextureView:Lcom/tencent/qgame/animplayer/z1OoOfor/z1OoOdo;

    return-void
.end method

.method public static final synthetic access$setLastFile$p(Lcom/tencent/qgame/animplayer/AnimView;Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/AnimView;->lastFile:Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;

    return-void
.end method

.method private final belowKitKat()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method private final getAnimProxyListener()Lcom/tencent/qgame/animplayer/AnimView$z1OoOif$1;
    .registers 1

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/AnimView;->animProxyListener$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/qgame/animplayer/AnimView$z1OoOif$1;

    return-object p0
.end method

.method private final getUiHandler()Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/AnimView;->uiHandler$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method private final hide()V
    .registers 2

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView;->lastFile:Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;->z1OoOfor()V

    :cond_7
    new-instance v0, Lcom/tencent/qgame/animplayer/AnimView$z1OoOint;

    invoke-direct {v0, p0}, Lcom/tencent/qgame/animplayer/AnimView$z1OoOint;-><init>(Lcom/tencent/qgame/animplayer/AnimView;)V

    invoke-direct {p0, v0}, Lcom/tencent/qgame/animplayer/AnimView;->ui(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final release()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView;->surface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_8

    goto :goto_2c

    :catchall_8
    move-exception v0

    sget-object v1, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failed to release mSurfaceTexture= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/qgame/animplayer/AnimView;->surface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AnimPlayer.AnimView"

    invoke-virtual {v1, v3, v2, v0}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2c
    :goto_2c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView;->surface:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method private final ui(Lkotlin/jvm/functions/Function0;)V
    .registers 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void

    :cond_12
    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/AnimView;->getUiHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/tencent/qgame/animplayer/AnimView$z1OoOcase;

    invoke-direct {v0, p1}, Lcom/tencent/qgame/animplayer/AnimView$z1OoOcase;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getAutoDismiss()Z
    .registers 1

    iget-boolean p0, p0, Lcom/tencent/qgame/animplayer/AnimView;->autoDismiss:Z

    return p0
.end method

.method public getRealSize()Lkotlin/Pair;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/AnimView;->scaleTypeUtil:Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;

    invoke-virtual {p0}, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->getRealSize()Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .registers 2

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView;->innerTextureView:Lcom/tencent/qgame/animplayer/z1OoOfor/z1OoOdo;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_c

    :cond_b
    return-object v0

    :cond_c
    :goto_c
    iget-object p0, p0, Lcom/tencent/qgame/animplayer/AnimView;->surface:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .registers 4

    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v1, "AnimPlayer.AnimView"

    const-string v2, "onAttachedToWindow"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView;->player:Lcom/tencent/qgame/animplayer/z1OoOif;

    const-string v1, "player"

    if-nez v0, :cond_15

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_15
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOgoto:Z

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView;->player:Lcom/tencent/qgame/animplayer/z1OoOif;

    if-nez v0, :cond_1f

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1f
    iget v0, v0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOtry:I

    if-lez v0, :cond_2a

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView;->lastFile:Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;

    if-eqz v0, :cond_2a

    invoke-virtual {p0, v0}, Lcom/tencent/qgame/animplayer/AnimView;->startPlay(Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;)V

    :cond_2a
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v1, "AnimPlayer.AnimView"

    const-string v2, "onDetachedFromWindow"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/AnimView;->belowKitKat()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/AnimView;->release()V

    :cond_15
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/AnimView;->player:Lcom/tencent/qgame/animplayer/z1OoOif;

    const-string v1, "player"

    if-nez v0, :cond_1e

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1e
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOgoto:Z

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/AnimView;->player:Lcom/tencent/qgame/animplayer/z1OoOif;

    if-nez p0, :cond_28

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_28
    invoke-virtual {p0}, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOdo()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    sget-object p3, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "onSizeChanged w="

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", h="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "AnimPlayer.AnimView"

    invoke-virtual {p3, v0, p4}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/tencent/qgame/animplayer/AnimView;->scaleTypeUtil:Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;

    invoke-virtual {p3, p1, p2}, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->setLayoutSize(II)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/qgame/animplayer/AnimView;->onSizeChangedCalled:Z

    iget-boolean p1, p0, Lcom/tencent/qgame/animplayer/AnimView;->needPrepareTextureView:Z

    if-eqz p1, :cond_32

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/qgame/animplayer/AnimView;->needPrepareTextureView:Z

    invoke-virtual {p0}, Lcom/tencent/qgame/animplayer/AnimView;->prepareTextureView()V

    :cond_32
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 7

    const-string v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSurfaceTextureAvailable width="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " height="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "AnimPlayer.AnimView"

    invoke-virtual {v0, p3, p2}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/AnimView;->surface:Landroid/graphics/SurfaceTexture;

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/AnimView;->player:Lcom/tencent/qgame/animplayer/z1OoOif;

    if-nez p0, :cond_2d

    const-string p1, "player"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2d
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOlong:Z

    iget-object p1, p0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOthis:Ljava/lang/Runnable;

    if-eqz p1, :cond_37

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_37
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOthis:Ljava/lang/Runnable;

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 4

    const-string v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v0, "AnimPlayer.AnimView"

    const-string v1, "onSurfaceTextureDestroyed"

    invoke-virtual {p1, v0, v1}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tencent/qgame/animplayer/AnimView;->player:Lcom/tencent/qgame/animplayer/z1OoOif;

    if-nez p1, :cond_17

    const-string v0, "player"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_17
    invoke-virtual {p1}, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOdo()V

    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/AnimView;->getUiHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/tencent/qgame/animplayer/AnimView$z1OoOnew;

    invoke-direct {v0, p0}, Lcom/tencent/qgame/animplayer/AnimView$z1OoOnew;-><init>(Lcom/tencent/qgame/animplayer/AnimView;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/AnimView;->belowKitKat()Z

    move-result p0

    if-nez p0, :cond_2e

    const/4 p0, 0x1

    return p0

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 6

    const-string v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSurfaceTextureSizeChanged "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimPlayer.AnimView"

    invoke-virtual {p1, v1, v0}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/AnimView;->player:Lcom/tencent/qgame/animplayer/z1OoOif;

    if-nez p0, :cond_2b

    const-string p1, "player"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2b
    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOnew;

    if-eqz p0, :cond_3a

    iput p2, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOnew:I

    iput p3, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOtry:I

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOchar;

    if-eqz p0, :cond_3a

    invoke-interface {p0, p2, p3}, Lcom/tencent/qgame/animplayer/z1OoOchar;->z1OoOdo(II)V

    :cond_3a
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    const-string p0, "surface"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public prepareTextureView()V
    .registers 4

    iget-boolean v0, p0, Lcom/tencent/qgame/animplayer/AnimView;->onSizeChangedCalled:Z

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/AnimView;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/AnimView;->prepareTextureViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_e
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v1, "AnimPlayer.AnimView"

    const-string v2, "onSizeChanged not called"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qgame/animplayer/AnimView;->needPrepareTextureView:Z

    return-void
.end method

.method public setAnimListener(Lcom/tencent/qgame/animplayer/inter/IAnimListener;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/AnimView;->animListener:Lcom/tencent/qgame/animplayer/inter/IAnimListener;

    return-void
.end method

.method public setAutoDismiss(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/tencent/qgame/animplayer/AnimView;->autoDismiss:Z

    return-void
.end method

.method public setFetchResource(Lcom/tencent/qgame/animplayer/inter/IFetchResource;)V
    .registers 3

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/AnimView;->player:Lcom/tencent/qgame/animplayer/z1OoOif;

    if-nez p0, :cond_9

    const-string v0, "player"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOclass:Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;->z1OoOdo:Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;

    if-eqz p0, :cond_12

    invoke-virtual {p0, p1}, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;->setResourceRequest(Lcom/tencent/qgame/animplayer/inter/IFetchResource;)V

    :cond_12
    return-void
.end method

.method public setFps(I)V
    .registers 5

    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v1, "setFps="

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AnimPlayer.AnimView"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/AnimView;->player:Lcom/tencent/qgame/animplayer/z1OoOif;

    if-nez p0, :cond_1a

    const-string v0, "player"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1a
    iput p1, p0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOnew:I

    return-void
.end method

.method public setLoop(I)V
    .registers 3

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/AnimView;->player:Lcom/tencent/qgame/animplayer/z1OoOif;

    if-nez p0, :cond_9

    const-string v0, "player"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p0, p1}, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOif(I)V

    return-void
.end method

.method public setMute(Z)V
    .registers 5

    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v1, "set mute="

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AnimPlayer.AnimView"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/AnimView;->player:Lcom/tencent/qgame/animplayer/z1OoOif;

    if-nez p0, :cond_1a

    const-string v0, "player"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1a
    iput-boolean p1, p0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoObreak:Z

    return-void
.end method

.method public setOnResourceClickListener(Lcom/tencent/qgame/animplayer/inter/OnResourceClickListener;)V
    .registers 3

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/AnimView;->player:Lcom/tencent/qgame/animplayer/z1OoOif;

    if-nez p0, :cond_9

    const-string v0, "player"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOclass:Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;->z1OoOdo:Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;

    if-eqz p0, :cond_12

    invoke-virtual {p0, p1}, Lcom/tencent/qgame/animplayer/mix/MixAnimPlugin;->setResourceClickListener(Lcom/tencent/qgame/animplayer/inter/OnResourceClickListener;)V

    :cond_12
    return-void
.end method

.method public setScaleType(Lcom/tencent/qgame/animplayer/util/IScaleType;)V
    .registers 3

    .line 0
    const-string v0, "scaleType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/AnimView;->scaleTypeUtil:Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;

    invoke-virtual {p0, p1}, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->setScaleTypeImpl(Lcom/tencent/qgame/animplayer/util/IScaleType;)V

    return-void
.end method

.method public setScaleType(Lcom/tencent/qgame/animplayer/util/ScaleType;)V
    .registers 3

    .line 0
    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/AnimView;->scaleTypeUtil:Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;

    invoke-virtual {p0, p1}, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->setCurrentScaleType(Lcom/tencent/qgame/animplayer/util/ScaleType;)V

    return-void
.end method

.method public final setVideoMode(I)V
    .registers 3

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/AnimView;->player:Lcom/tencent/qgame/animplayer/z1OoOif;

    if-nez p0, :cond_9

    const-string v0, "player"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    iput p1, p0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOelse:I

    return-void
.end method

.method public startPlay(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .registers 4

    .line 0
    const-string v0, "assetManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetsPath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_a
    new-instance v0, Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOdo;

    invoke-direct {v0, p1, p2}, Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOdo;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tencent/qgame/animplayer/AnimView;->startPlay(Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;)V
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_13

    return-void

    :catchall_13
    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/AnimView;->getAnimProxyListener()Lcom/tencent/qgame/animplayer/AnimView$z1OoOif$1;

    move-result-object p1

    const/16 p2, 0x2717

    const-string v0, "0x7 file can\'t read"

    invoke-virtual {p1, p2, v0}, Lcom/tencent/qgame/animplayer/AnimView$z1OoOif$1;->onFailed(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/AnimView;->getAnimProxyListener()Lcom/tencent/qgame/animplayer/AnimView$z1OoOif$1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/qgame/animplayer/AnimView$z1OoOif$1;->onVideoComplete()V

    return-void
.end method

.method public startPlay(Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;)V
    .registers 3

    .line 0
    const-string v0, "fileContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/qgame/animplayer/AnimView$z1OoObyte;

    invoke-direct {v0, p0, p1}, Lcom/tencent/qgame/animplayer/AnimView$z1OoObyte;-><init>(Lcom/tencent/qgame/animplayer/AnimView;Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;)V

    invoke-direct {p0, v0}, Lcom/tencent/qgame/animplayer/AnimView;->ui(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public startPlay(Ljava/io/File;)V
    .registers 4

    .line 0
    const-string v0, "file"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    new-instance v0, Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOif;

    invoke-direct {v0, p1}, Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOif;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lcom/tencent/qgame/animplayer/AnimView;->startPlay(Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;)V
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_e

    return-void

    :catchall_e
    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/AnimView;->getAnimProxyListener()Lcom/tencent/qgame/animplayer/AnimView$z1OoOif$1;

    move-result-object p1

    const/16 v0, 0x2717

    const-string v1, "0x7 file can\'t read"

    invoke-virtual {p1, v0, v1}, Lcom/tencent/qgame/animplayer/AnimView$z1OoOif$1;->onFailed(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/AnimView;->getAnimProxyListener()Lcom/tencent/qgame/animplayer/AnimView$z1OoOif$1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/qgame/animplayer/AnimView$z1OoOif$1;->onVideoComplete()V

    return-void
.end method
