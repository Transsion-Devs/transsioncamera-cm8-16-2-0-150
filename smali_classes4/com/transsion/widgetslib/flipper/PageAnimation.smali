.class public final Lcom/transsion/widgetslib/flipper/PageAnimation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager2/widget/ViewPager2$PageTransformer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/flipper/PageAnimation$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/widgetslib/flipper/PageAnimation$Companion;

.field private static final PAGE_ALPHA_DIFF:F = 1.0f

.field private static final PAGE_ALPHA_MAX:F = 1.0f

.field private static final PAGE_ALPHA_MIN:F


# instance fields
.field private alphaPageOutRatio:F

.field private alphaRatio:F

.field private dotAlphaDiff:F

.field private dotAlphaNormal:F

.field private dotAlphaSelected:F

.field private flipperLayout:Lcom/transsion/widgetslib/flipper/FlipperLayout;

.field private pPaddingEnd:I

.field private pPaddingStart:Ljava/lang/Integer;


# direct methods
.method public static synthetic $r8$lambda$NGMzH71B8QiNevm2IBv6o7wi46I(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/transsion/widgetslib/flipper/PageAnimation;->transformPage$lambda$1$lambda$0(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/transsion/widgetslib/flipper/PageAnimation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/flipper/PageAnimation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/widgetslib/flipper/PageAnimation;->Companion:Lcom/transsion/widgetslib/flipper/PageAnimation$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3df5c28f    # 0.12f

    .line 90
    iput v0, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->dotAlphaNormal:F

    const v1, 0x3f266666    # 0.65f

    .line 91
    iput v1, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->dotAlphaSelected:F

    sub-float/2addr v1, v0

    .line 92
    iput v1, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->dotAlphaDiff:F

    return-void
.end method

.method private static final transformPage$lambda$1$lambda$0(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V
    .registers 2

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method


# virtual methods
.method public final bindFlipperLayout$widgetsLib_release(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V
    .registers 5

    const-string v0, "layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->flipperLayout:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    if-nez v0, :cond_36

    .line 99
    iput-object p1, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->flipperLayout:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 103
    sget v0, Lcom/transsion/widgetslib/R$attr;->os_comp_color_page_default:I

    sget v1, Lcom/transsion/widgetslib/R$color;->os_comp_color_page_default_hios:I

    .line 102
    invoke-static {p1, v0, v1}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result v0

    .line 105
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->dotAlphaNormal:F

    .line 107
    sget v0, Lcom/transsion/widgetslib/R$attr;->os_comp_color_page_focus:I

    sget v2, Lcom/transsion/widgetslib/R$color;->os_comp_color_page_focus_hios:I

    .line 106
    invoke-static {p1, v0, v2}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result p1

    .line 109
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    iput p1, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->dotAlphaSelected:F

    .line 110
    iget v0, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->dotAlphaNormal:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->dotAlphaDiff:F

    :cond_36
    return-void
.end method

.method public final getAlphaPageOutRatio$widgetsLib_release()F
    .registers 1

    .line 94
    iget p0, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->alphaPageOutRatio:F

    return p0
.end method

.method public final getAlphaRatio$widgetsLib_release()F
    .registers 1

    .line 93
    iget p0, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->alphaRatio:F

    return p0
.end method

.method public final setAlphaPageOutRatio$widgetsLib_release(F)V
    .registers 2

    .line 94
    iput p1, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->alphaPageOutRatio:F

    return-void
.end method

.method public final setAlphaRatio$widgetsLib_release(F)V
    .registers 2

    .line 93
    iput p1, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->alphaRatio:F

    return-void
.end method

.method public transformPage(Landroid/view/View;F)V
    .registers 10

    const-string v0, "page"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->pPaddingStart:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_31

    .line 120
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->flipperLayout:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    if-eqz v0, :cond_31

    .line 121
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->pPaddingStart:Ljava/lang/Integer;

    .line 122
    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->pPaddingEnd:I

    .line 123
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 124
    new-instance v2, Lcom/transsion/widgetslib/flipper/PageAnimation$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/transsion/widgetslib/flipper/PageAnimation$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/widgetslib/flipper/FlipperLayout;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 128
    :cond_31
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->pPaddingStart:Ljava/lang/Integer;

    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    if-ne v0, v2, :cond_47

    iget v2, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->pPaddingEnd:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    if-eq v2, v3, :cond_4c

    .line 130
    :cond_47
    iget v2, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->pPaddingEnd:I

    invoke-virtual {p1, v0, v1, v2, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 134
    :cond_4c
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7b

    .line 135
    iget-object v0, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->flipperLayout:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    if-eqz v0, :cond_7b

    invoke-virtual {v0}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->getDotLayout$widgetsLib_release()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_7b

    .line 136
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v3, v1

    :goto_61
    if-ge v3, v2, :cond_7b

    .line 137
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 138
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_78

    .line 139
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 140
    invoke-virtual {p1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_7b

    :cond_78
    add-int/lit8 v3, v3, 0x1

    goto :goto_61

    .line 147
    :cond_7b
    :goto_7b
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_86

    check-cast v0, Landroid/view/View;

    goto :goto_87

    :cond_86
    const/4 v0, 0x0

    .line 148
    :goto_87
    iget-object v2, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->flipperLayout:Lcom/transsion/widgetslib/flipper/FlipperLayout;

    const/4 v3, 0x1

    if-eqz v2, :cond_99

    invoke-virtual {v2}, Lcom/transsion/widgetslib/flipper/FlipperLayout;->getAnimator$widgetsLib_release()Landroid/animation/ValueAnimator;

    move-result-object v2

    if-eqz v2, :cond_99

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-ne v2, v3, :cond_99

    move v1, v3

    :cond_99
    const/high16 v2, -0x40800000    # -1.0f

    cmpg-float v2, p2, v2

    const/4 v4, 0x0

    if-gez v2, :cond_ad

    .line 152
    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    if-nez v0, :cond_a7

    goto/16 :goto_11f

    .line 153
    :cond_a7
    iget p0, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->dotAlphaNormal:F

    invoke-virtual {v0, p0}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_ad
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v5, p2, v2

    if-gtz v5, :cond_11a

    if-eqz v1, :cond_ec

    cmpl-float v1, p2, v4

    if-lez v1, :cond_d0

    int-to-float v1, v3

    .line 160
    iget v5, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->alphaRatio:F

    sub-float/2addr v1, v5

    mul-float v5, v1, v2

    sub-float v5, v2, v5

    .line 161
    invoke-virtual {p1, v5}, Landroid/view/View;->setAlpha(F)V

    if-nez v0, :cond_c7

    goto :goto_d0

    .line 162
    :cond_c7
    iget v5, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->dotAlphaSelected:F

    iget v6, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->dotAlphaDiff:F

    mul-float/2addr v6, v1

    sub-float/2addr v5, v6

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    :cond_d0
    :goto_d0
    cmpg-float p2, p2, v4

    if-gtz p2, :cond_11f

    .line 165
    iget p2, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->alphaPageOutRatio:F

    int-to-float v1, v3

    sub-float/2addr p2, v1

    mul-float/2addr p2, v2

    add-float/2addr p2, v2

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    if-nez v0, :cond_e0

    goto :goto_11f

    .line 166
    :cond_e0
    iget p1, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->dotAlphaSelected:F

    iget p2, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->dotAlphaDiff:F

    iget p0, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->alphaRatio:F

    mul-float/2addr p2, p0

    sub-float/2addr p1, p2

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_ec
    cmpl-float v1, p2, v4

    if-lez v1, :cond_103

    mul-float v1, p2, v2

    sub-float v1, v2, v1

    .line 170
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    if-nez v0, :cond_fa

    goto :goto_103

    .line 171
    :cond_fa
    iget v1, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->dotAlphaSelected:F

    iget v3, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->dotAlphaDiff:F

    mul-float/2addr v3, p2

    sub-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_103
    :goto_103
    cmpg-float v1, p2, v4

    if-gtz v1, :cond_11f

    mul-float v1, p2, v2

    add-float/2addr v1, v2

    .line 174
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    if-nez v0, :cond_110

    goto :goto_11f

    .line 175
    :cond_110
    iget p1, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->dotAlphaSelected:F

    iget p0, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->dotAlphaDiff:F

    mul-float/2addr p0, p2

    add-float/2addr p1, p0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void

    .line 182
    :cond_11a
    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    if-nez v0, :cond_120

    :cond_11f
    :goto_11f
    return-void

    .line 183
    :cond_120
    iget p0, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->dotAlphaNormal:F

    invoke-virtual {v0, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final updatePagePadding$widgetsLib_release()V
    .registers 2

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/transsion/widgetslib/flipper/PageAnimation;->pPaddingStart:Ljava/lang/Integer;

    return-void
.end method
