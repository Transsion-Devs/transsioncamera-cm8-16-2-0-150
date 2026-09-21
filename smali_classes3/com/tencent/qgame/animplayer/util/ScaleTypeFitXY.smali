.class public final Lcom/tencent/qgame/animplayer/util/ScaleTypeFitXY;
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


# virtual methods
.method public final getLayoutParam(IIIILandroid/widget/FrameLayout$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 6

    const-string p3, "layoutParams"

    invoke-static {p5, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, -0x1

    iput p3, p5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p3, p5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput p1, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeFitXY;->realWidth:I

    iput p2, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeFitXY;->realHeight:I

    return-object p5
.end method

.method public final getRealSize()Lkotlin/Pair;
    .registers 3

    new-instance v0, Lkotlin/Pair;

    iget v1, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeFitXY;->realWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcom/tencent/qgame/animplayer/util/ScaleTypeFitXY;->realHeight:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
