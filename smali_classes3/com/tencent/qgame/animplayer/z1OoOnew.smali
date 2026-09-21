.class public abstract Lcom/tencent/qgame/animplayer/z1OoOnew;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qgame/animplayer/inter/IAnimListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qgame/animplayer/z1OoOnew$z1OoOdo;
    }
.end annotation


# static fields
.field static final synthetic z1OoOdo:[Lkotlin/reflect/KProperty;

.field public static final z1OoOgoto:Lcom/tencent/qgame/animplayer/z1OoOnew$z1OoOdo;


# instance fields
.field z1OoObyte:I

.field z1OoOcase:Z

.field z1OoOchar:Z

.field final z1OoOelse:Lcom/tencent/qgame/animplayer/z1OoOif;

.field final z1OoOfor:Lcom/tencent/qgame/animplayer/z1OoObyte;

.field public z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOchar;

.field final z1OoOint:Lcom/tencent/qgame/animplayer/z1OoObyte;

.field private z1OoOlong:I

.field z1OoOnew:I

.field private final z1OoOthis:Lkotlin/Lazy;

.field z1OoOtry:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Lcom/tencent/qgame/animplayer/z1OoOnew;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-string v2, "speedControlUtil"

    const-string v3, "getSpeedControlUtil()Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;"

    invoke-direct {v0, v1, v2, v3}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOdo:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/tencent/qgame/animplayer/z1OoOnew$z1OoOdo;

    invoke-direct {v0, v2}, Lcom/tencent/qgame/animplayer/z1OoOnew$z1OoOdo;-><init>(B)V

    sput-object v0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOgoto:Lcom/tencent/qgame/animplayer/z1OoOnew$z1OoOdo;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/qgame/animplayer/z1OoOif;)V
    .registers 3

    const-string v0, "player"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOelse:Lcom/tencent/qgame/animplayer/z1OoOif;

    new-instance p1, Lcom/tencent/qgame/animplayer/z1OoObyte;

    invoke-direct {p1}, Lcom/tencent/qgame/animplayer/z1OoObyte;-><init>()V

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOfor:Lcom/tencent/qgame/animplayer/z1OoObyte;

    new-instance p1, Lcom/tencent/qgame/animplayer/z1OoObyte;

    invoke-direct {p1}, Lcom/tencent/qgame/animplayer/z1OoObyte;-><init>()V

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOint:Lcom/tencent/qgame/animplayer/z1OoObyte;

    sget-object p1, Lcom/tencent/qgame/animplayer/z1OoOnew$z1OoOif;->z1OoOdo:Lcom/tencent/qgame/animplayer/z1OoOnew$z1OoOif;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOthis:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onFailed errorType="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", errorMsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AnimPlayer.Decoder"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOelse:Lcom/tencent/qgame/animplayer/z1OoOif;

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOdo:Lcom/tencent/qgame/animplayer/inter/IAnimListener;

    if-eqz p0, :cond_26

    invoke-interface {p0, p1, p2}, Lcom/tencent/qgame/animplayer/inter/IAnimListener;->onFailed(ILjava/lang/String;)V

    :cond_26
    return-void
.end method

.method public onVideoComplete()V
    .registers 4

    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v1, "AnimPlayer.Decoder"

    const-string v2, "onVideoComplete"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOelse:Lcom/tencent/qgame/animplayer/z1OoOif;

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOdo:Lcom/tencent/qgame/animplayer/inter/IAnimListener;

    if-eqz p0, :cond_12

    invoke-interface {p0}, Lcom/tencent/qgame/animplayer/inter/IAnimListener;->onVideoComplete()V

    :cond_12
    return-void
.end method

.method public onVideoConfigReady(Lcom/tencent/qgame/animplayer/AnimConfig;)Z
    .registers 3

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/tencent/qgame/animplayer/inter/IAnimListener$DefaultImpls;->onVideoConfigReady(Lcom/tencent/qgame/animplayer/inter/IAnimListener;Lcom/tencent/qgame/animplayer/AnimConfig;)Z

    move-result p0

    return p0
.end method

.method public onVideoDestroy()V
    .registers 4

    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v1, "AnimPlayer.Decoder"

    const-string v2, "onVideoDestroy"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOelse:Lcom/tencent/qgame/animplayer/z1OoOif;

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOdo:Lcom/tencent/qgame/animplayer/inter/IAnimListener;

    if-eqz p0, :cond_12

    invoke-interface {p0}, Lcom/tencent/qgame/animplayer/inter/IAnimListener;->onVideoDestroy()V

    :cond_12
    return-void
.end method

.method public onVideoRender(ILcom/tencent/qgame/animplayer/AnimConfig;)V
    .registers 6

    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v1, "AnimPlayer.Decoder"

    const-string v2, "onVideoRender"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qgame/animplayer/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOelse:Lcom/tencent/qgame/animplayer/z1OoOif;

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOdo:Lcom/tencent/qgame/animplayer/inter/IAnimListener;

    if-eqz p0, :cond_12

    invoke-interface {p0, p1, p2}, Lcom/tencent/qgame/animplayer/inter/IAnimListener;->onVideoRender(ILcom/tencent/qgame/animplayer/AnimConfig;)V

    :cond_12
    return-void
.end method

.method public onVideoStart()V
    .registers 4

    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v1, "AnimPlayer.Decoder"

    const-string v2, "onVideoStart"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOelse:Lcom/tencent/qgame/animplayer/z1OoOif;

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOdo:Lcom/tencent/qgame/animplayer/inter/IAnimListener;

    if-eqz p0, :cond_12

    invoke-interface {p0}, Lcom/tencent/qgame/animplayer/inter/IAnimListener;->onVideoStart()V

    :cond_12
    return-void
.end method

.method public final z1OoOdo()Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOthis:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;

    return-object p0
.end method

.method public final z1OoOdo(I)V
    .registers 3

    .line 0
    invoke-virtual {p0}, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOdo()Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/util/SpeedControlUtil;->setFixedPlaybackRate(I)V

    iput p1, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOlong:I

    return-void
.end method

.method public final z1OoOdo(II)V
    .registers 8

    .line 0
    iget-object v0, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOelse:Lcom/tencent/qgame/animplayer/z1OoOif;

    iget-object v0, v0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOcatch:Lcom/tencent/qgame/animplayer/z1OoOdo;

    iget-object v1, v0, Lcom/tencent/qgame/animplayer/z1OoOdo;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/tencent/qgame/animplayer/AnimConfig;->isDefaultConfig()Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_102

    :cond_11
    iget-object v0, v0, Lcom/tencent/qgame/animplayer/z1OoOdo;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimConfig;

    if-eqz v0, :cond_102

    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->setVideoWidth(I)V

    invoke-virtual {v0, p2}, Lcom/tencent/qgame/animplayer/AnimConfig;->setVideoHeight(I)V

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getDefaultVideoMode()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v1, v3, :cond_d8

    if-eq v1, v4, :cond_ae

    const/4 v3, 0x3

    if-eq v1, v3, :cond_85

    const/4 v3, 0x4

    if-eq v1, v3, :cond_58

    div-int/2addr p1, v4

    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->setWidth(I)V

    invoke-virtual {v0, p2}, Lcom/tencent/qgame/animplayer/AnimConfig;->setHeight(I)V

    new-instance p1, Lcom/tencent/qgame/animplayer/z1OoOelse;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getWidth()I

    move-result p2

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getHeight()I

    move-result v1

    invoke-direct {p1, v2, v2, p2, v1}, Lcom/tencent/qgame/animplayer/z1OoOelse;-><init>(IIII)V

    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->setAlphaPointRect(Lcom/tencent/qgame/animplayer/z1OoOelse;)V

    new-instance p1, Lcom/tencent/qgame/animplayer/z1OoOelse;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getWidth()I

    move-result p2

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getHeight()I

    move-result v3

    invoke-direct {p1, p2, v2, v1, v3}, Lcom/tencent/qgame/animplayer/z1OoOelse;-><init>(IIII)V

    :goto_53
    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->setRgbPointRect(Lcom/tencent/qgame/animplayer/z1OoOelse;)V

    goto/16 :goto_102

    :cond_58
    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->setWidth(I)V

    div-int/2addr p2, v4

    invoke-virtual {v0, p2}, Lcom/tencent/qgame/animplayer/AnimConfig;->setHeight(I)V

    new-instance p1, Lcom/tencent/qgame/animplayer/z1OoOelse;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getWidth()I

    move-result p2

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getHeight()I

    move-result v1

    invoke-direct {p1, v2, v2, p2, v1}, Lcom/tencent/qgame/animplayer/z1OoOelse;-><init>(IIII)V

    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->setRgbPointRect(Lcom/tencent/qgame/animplayer/z1OoOelse;)V

    new-instance p1, Lcom/tencent/qgame/animplayer/z1OoOelse;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getHeight()I

    move-result p2

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getHeight()I

    move-result v3

    invoke-direct {p1, v2, p2, v1, v3}, Lcom/tencent/qgame/animplayer/z1OoOelse;-><init>(IIII)V

    :goto_80
    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->setAlphaPointRect(Lcom/tencent/qgame/animplayer/z1OoOelse;)V

    goto/16 :goto_102

    :cond_85
    div-int/2addr p1, v4

    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->setWidth(I)V

    invoke-virtual {v0, p2}, Lcom/tencent/qgame/animplayer/AnimConfig;->setHeight(I)V

    new-instance p1, Lcom/tencent/qgame/animplayer/z1OoOelse;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getWidth()I

    move-result p2

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getHeight()I

    move-result v1

    invoke-direct {p1, v2, v2, p2, v1}, Lcom/tencent/qgame/animplayer/z1OoOelse;-><init>(IIII)V

    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->setRgbPointRect(Lcom/tencent/qgame/animplayer/z1OoOelse;)V

    new-instance p1, Lcom/tencent/qgame/animplayer/z1OoOelse;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getWidth()I

    move-result p2

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getHeight()I

    move-result v3

    invoke-direct {p1, p2, v2, v1, v3}, Lcom/tencent/qgame/animplayer/z1OoOelse;-><init>(IIII)V

    goto :goto_80

    :cond_ae
    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->setWidth(I)V

    div-int/2addr p2, v4

    invoke-virtual {v0, p2}, Lcom/tencent/qgame/animplayer/AnimConfig;->setHeight(I)V

    new-instance p1, Lcom/tencent/qgame/animplayer/z1OoOelse;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getWidth()I

    move-result p2

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getHeight()I

    move-result v1

    invoke-direct {p1, v2, v2, p2, v1}, Lcom/tencent/qgame/animplayer/z1OoOelse;-><init>(IIII)V

    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->setAlphaPointRect(Lcom/tencent/qgame/animplayer/z1OoOelse;)V

    new-instance p1, Lcom/tencent/qgame/animplayer/z1OoOelse;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getHeight()I

    move-result p2

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getHeight()I

    move-result v3

    invoke-direct {p1, v2, p2, v1, v3}, Lcom/tencent/qgame/animplayer/z1OoOelse;-><init>(IIII)V

    goto/16 :goto_53

    :cond_d8
    div-int/2addr p1, v4

    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->setWidth(I)V

    invoke-virtual {v0, p2}, Lcom/tencent/qgame/animplayer/AnimConfig;->setHeight(I)V

    new-instance p1, Lcom/tencent/qgame/animplayer/z1OoOelse;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getWidth()I

    move-result p2

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getHeight()I

    move-result v1

    invoke-direct {p1, v2, v2, p2, v1}, Lcom/tencent/qgame/animplayer/z1OoOelse;-><init>(IIII)V

    invoke-virtual {v0, p1}, Lcom/tencent/qgame/animplayer/AnimConfig;->setAlphaPointRect(Lcom/tencent/qgame/animplayer/z1OoOelse;)V

    new-instance p1, Lcom/tencent/qgame/animplayer/z1OoOelse;

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getWidth()I

    move-result p2

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/tencent/qgame/animplayer/AnimConfig;->getHeight()I

    move-result v3

    invoke-direct {p1, p2, v2, v1, v3}, Lcom/tencent/qgame/animplayer/z1OoOelse;-><init>(IIII)V

    goto/16 :goto_53

    :cond_102
    :goto_102
    iget-object p1, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOelse:Lcom/tencent/qgame/animplayer/z1OoOif;

    iget-object p1, p1, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOcatch:Lcom/tencent/qgame/animplayer/z1OoOdo;

    iget-object p1, p1, Lcom/tencent/qgame/animplayer/z1OoOdo;->z1OoOdo:Lcom/tencent/qgame/animplayer/AnimConfig;

    if-eqz p1, :cond_111

    iget-object p2, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOif:Lcom/tencent/qgame/animplayer/z1OoOchar;

    if-eqz p2, :cond_111

    invoke-interface {p2, p1}, Lcom/tencent/qgame/animplayer/z1OoOchar;->z1OoOdo(Lcom/tencent/qgame/animplayer/AnimConfig;)V

    :cond_111
    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOnew;->z1OoOelse:Lcom/tencent/qgame/animplayer/z1OoOif;

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOif;->z1OoOclass:Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;

    sget-object p1, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string p2, "AnimPlayer.AnimPluginManager"

    const-string v0, "onRenderCreate"

    invoke-virtual {p1, p2, v0}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;->z1OoOfor:I

    iput v2, p0, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;->z1OoOint:I

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOdo;->z1OoOif:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_13a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOif;

    invoke-interface {p1}, Lcom/tencent/qgame/animplayer/z1OoOif/z1OoOif;->onRenderCreate()V

    goto :goto_12a

    :cond_13a
    return-void
.end method

.method public abstract z1OoOdo(Lcom/tencent/qgame/animplayer/z1OoOdo/z1OoOfor;)V
.end method

.method public abstract z1OoOif()V
.end method
