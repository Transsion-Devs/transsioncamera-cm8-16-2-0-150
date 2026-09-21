.class public final Lcom/tencent/qgame/animplayer/util/ScaleTypeCenterCrop;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/qgame/animplayer/util/IScaleType;


# instance fields
.field private realHeight:I

.field private realWidth:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getCenterCropSize(IIII)Lkotlin/Pair;
    .registers 7

    int-to-float p0, p1

    int-to-float v0, p2

    div-float v1, p0, v0

    int-to-float p3, p3

    int-to-float p4, p4

    div-float/2addr p3, p4

    cmpl-float p4, v1, p3

    if-lez p4, :cond_e

    div-float/2addr p0, p3

    float-to-int p2, p0

    goto :goto_10

    :cond_e
    mul-float/2addr p3, v0

    float-to-int p1, p3

    :goto_10
    new-instance p0, Lkotlin/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public final getLayoutParam(IIIILandroid/widget/FrameLayout$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 7

    const-string v0, "layoutParams"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/qgame/animplayer/util/ScaleTypeCenterCrop;->getCenterCropSize(IIII)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-gtz p2, :cond_22

    if-gtz p1, :cond_22

    return-object p5

    :cond_22
    iput p2, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeCenterCrop;->realWidth:I

    iput p1, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeCenterCrop;->realHeight:I

    iput p2, p5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p1, p5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 p0, 0x11

    iput p0, p5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-object p5
.end method

.method public final getRealSize()Lkotlin/Pair;
    .registers 3

    new-instance v0, Lkotlin/Pair;

    iget v1, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeCenterCrop;->realWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeCenterCrop;->realHeight:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
