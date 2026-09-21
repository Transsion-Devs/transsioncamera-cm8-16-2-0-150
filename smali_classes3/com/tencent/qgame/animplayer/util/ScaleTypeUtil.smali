.class public final Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil$Companion;
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil$Companion;


# instance fields
.field private currentScaleType:Lcom/tencent/qgame/animplayer/util/ScaleType;

.field private layoutHeight:I

.field private layoutWidth:I

.field private final scaleTypeCenterCrop$delegate:Lkotlin/Lazy;

.field private final scaleTypeFitCenter$delegate:Lkotlin/Lazy;

.field private final scaleTypeFitXY$delegate:Lkotlin/Lazy;

.field private scaleTypeImpl:Lcom/tencent/qgame/animplayer/util/IScaleType;

.field private videoHeight:I

.field private videoWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "scaleTypeFitXY"

    const-string v4, "getScaleTypeFitXY()Lcom/tencent/qgame/animplayer/util/ScaleTypeFitXY;"

    invoke-direct {v0, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-string v4, "scaleTypeFitCenter"

    const-string v5, "getScaleTypeFitCenter()Lcom/tencent/qgame/animplayer/util/ScaleTypeFitCenter;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    new-instance v3, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-string v4, "scaleTypeCenterCrop"

    const-string v5, "getScaleTypeCenterCrop()Lcom/tencent/qgame/animplayer/util/ScaleTypeCenterCrop;"

    invoke-direct {v3, v1, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v3, 0x3

    new-array v3, v3, [Lkotlin/reflect/KProperty;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v2, v3, v0

    const/4 v0, 0x2

    aput-object v1, v3, v0

    sput-object v3, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->Companion:Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil$scaleTypeFitXY$2;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil$scaleTypeFitXY$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->scaleTypeFitXY$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil$scaleTypeFitCenter$2;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil$scaleTypeFitCenter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->scaleTypeFitCenter$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil$scaleTypeCenterCrop$2;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil$scaleTypeCenterCrop$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->scaleTypeCenterCrop$delegate:Lkotlin/Lazy;

    sget-object v0, Lcom/tencent/qgame/animplayer/util/ScaleType;->FIT_XY:Lcom/tencent/qgame/animplayer/util/ScaleType;

    iput-object v0, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->currentScaleType:Lcom/tencent/qgame/animplayer/util/ScaleType;

    return-void
.end method

.method private final checkParams()Z
    .registers 2

    iget v0, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->layoutWidth:I

    if-lez v0, :cond_12

    iget v0, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->layoutHeight:I

    if-lez v0, :cond_12

    iget v0, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->videoWidth:I

    if-lez v0, :cond_12

    iget p0, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->videoHeight:I

    if-lez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private final getCurrentScaleType()Lcom/tencent/qgame/animplayer/util/IScaleType;
    .registers 5

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->scaleTypeImpl:Lcom/tencent/qgame/animplayer/util/IScaleType;

    const-string v1, "AnimPlayer.ScaleTypeUtil"

    if-eqz v0, :cond_e

    sget-object p0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    const-string v2, "custom scaleType"

    invoke-virtual {p0, v1, v2}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_e
    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "scaleType="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->currentScaleType:Lcom/tencent/qgame/animplayer/util/ScaleType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->currentScaleType:Lcom/tencent/qgame/animplayer/util/ScaleType;

    sget-object v1, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_46

    const/4 v1, 0x2

    if-eq v0, v1, :cond_41

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3b

    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->getScaleTypeCenterCrop()Lcom/tencent/qgame/animplayer/util/ScaleTypeCenterCrop;

    move-result-object p0

    return-object p0

    :cond_3b
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_41
    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->getScaleTypeFitCenter()Lcom/tencent/qgame/animplayer/util/ScaleTypeFitCenter;

    move-result-object p0

    return-object p0

    :cond_46
    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->getScaleTypeFitXY()Lcom/tencent/qgame/animplayer/util/ScaleTypeFitXY;

    move-result-object p0

    return-object p0
.end method

.method private final getScaleTypeCenterCrop()Lcom/tencent/qgame/animplayer/util/ScaleTypeCenterCrop;
    .registers 1

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->scaleTypeCenterCrop$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeCenterCrop;

    return-object p0
.end method

.method private final getScaleTypeFitCenter()Lcom/tencent/qgame/animplayer/util/ScaleTypeFitCenter;
    .registers 1

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->scaleTypeFitCenter$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeFitCenter;

    return-object p0
.end method

.method private final getScaleTypeFitXY()Lcom/tencent/qgame/animplayer/util/ScaleTypeFitXY;
    .registers 1

    iget-object p0, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->scaleTypeFitXY$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeFitXY;

    return-object p0
.end method


# virtual methods
.method public final getLayoutParam(Landroid/view/View;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 9

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    goto :goto_9

    :cond_8
    move-object p1, v0

    :goto_9
    instance-of v1, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v1, :cond_e

    goto :goto_f

    :cond_e
    move-object v0, p1

    :goto_f
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_19

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p1, -0x1

    invoke-direct {v0, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :cond_19
    move-object v6, v0

    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->checkParams()Z

    move-result p1

    if-nez p1, :cond_56

    sget-object p1, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "params error: layoutWidth="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->layoutWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", layoutHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->layoutHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->videoWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->videoHeight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AnimPlayer.ScaleTypeUtil"

    invoke-virtual {p1, v0, p0}, Lcom/tencent/qgame/animplayer/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    :cond_56
    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->getCurrentScaleType()Lcom/tencent/qgame/animplayer/util/IScaleType;

    move-result-object v1

    iget v2, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->layoutWidth:I

    iget v3, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->layoutHeight:I

    iget v4, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->videoWidth:I

    iget v5, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->videoHeight:I

    invoke-interface/range {v1 .. v6}, Lcom/tencent/qgame/animplayer/util/IScaleType;->getLayoutParam(IIIILandroid/widget/FrameLayout$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public final getRealSize()Lkotlin/Pair;
    .registers 4

    invoke-direct {p0}, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->getCurrentScaleType()Lcom/tencent/qgame/animplayer/util/IScaleType;

    move-result-object p0

    invoke-interface {p0}, Lcom/tencent/qgame/animplayer/util/IScaleType;->getRealSize()Lkotlin/Pair;

    move-result-object p0

    sget-object v0, Lcom/tencent/qgame/animplayer/util/ALog;->INSTANCE:Lcom/tencent/qgame/animplayer/util/ALog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get real size ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AnimPlayer.ScaleTypeUtil"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/qgame/animplayer/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setCurrentScaleType(Lcom/tencent/qgame/animplayer/util/ScaleType;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->currentScaleType:Lcom/tencent/qgame/animplayer/util/ScaleType;

    return-void
.end method

.method public final setLayoutSize(II)V
    .registers 3

    iput p1, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->layoutWidth:I

    iput p2, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->layoutHeight:I

    return-void
.end method

.method public final setScaleTypeImpl(Lcom/tencent/qgame/animplayer/util/IScaleType;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->scaleTypeImpl:Lcom/tencent/qgame/animplayer/util/IScaleType;

    return-void
.end method

.method public final setVideoSize(II)V
    .registers 3

    iput p1, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->videoWidth:I

    iput p2, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeUtil;->videoHeight:I

    return-void
.end method
