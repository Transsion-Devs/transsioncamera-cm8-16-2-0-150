.class public Lcom/transsion/camera/app/ui/view/ScreenSupplyView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;
.implements Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$UnionValueAnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/view/View;",
        "Lcom/transsion/camera/app/common/IAppUIListener$IPreviewRectListener;",
        "Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$UnionValueAnimatorUpdateListener;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final NORMAL_ALPHA:F

.field private final SCREEN_FLASH_VIEW_MAX_ALPHA:F

.field private mBottomOffset:I

.field private mDensity:F

.field private mInPreviewRoundedPath:Landroid/graphics/Path;

.field private mInPreviewRoundedRadius:F

.field private mInPreviewRoundedRect:Landroid/graphics/RectF;

.field private mOrientation:I

.field private mPreviewPaint:Landroid/graphics/Paint;

.field private mPreviewPath:Landroid/graphics/Path;

.field private mPreviewRatio:D

.field private mPreviewRect:Landroid/graphics/RectF;

.field private final mPreviewTranslationListener:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;

.field private final mRelativePreviewRect:Landroid/graphics/Rect;

.field private mScreenFormType:I

.field private mScreenSupplyColor:I

.field private mScreenSupplyTranslucentColor:I

.field private mTopOffset:I


# direct methods
.method public static synthetic $r8$lambda$LK3o49tIsROBD-WJQ13QTecJ3iw(Lcom/transsion/camera/app/ui/view/ScreenSupplyView;Ljava/lang/Integer;ZZ)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->lambda$new$0(Ljava/lang/Integer;ZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ScreenSupplyView"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    .line 41
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mRelativePreviewRect:Landroid/graphics/Rect;

    const/high16 p2, 0x41a00000    # 20.0f

    .line 46
    iput p2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mInPreviewRoundedRadius:F

    .line 47
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mInPreviewRoundedRect:Landroid/graphics/RectF;

    const/4 p2, 0x0

    .line 57
    iput p2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mScreenFormType:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 58
    iput p2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->SCREEN_FLASH_VIEW_MAX_ALPHA:F

    const/4 p2, 0x0

    .line 59
    iput p2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->NORMAL_ALPHA:F

    .line 60
    new-instance p2, Lcom/transsion/camera/app/ui/view/ScreenSupplyView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/view/ScreenSupplyView;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewTranslationListener:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;

    .line 81
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private getTargetViewAnimator(Landroid/view/View;Ljava/lang/String;FF)Landroid/animation/Animator;
    .registers 6

    const/4 p0, 0x2

    .line 389
    new-array p0, p0, [F

    const/4 v0, 0x0

    aput p3, p0, v0

    const/4 p3, 0x1

    aput p4, p0, p3

    invoke-static {p1, p2, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method

.method private init(Landroid/content/Context;)V
    .registers 5

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mDensity:F

    .line 91
    sget v0, Lcom/transsion/camera/R$color;->screen_supply_color:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mScreenSupplyColor:I

    .line 93
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3f19999a    # 0.6f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mScreenSupplyColor:I

    .line 94
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iget v1, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mScreenSupplyColor:I

    .line 95
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    iget v2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mScreenSupplyColor:I

    .line 96
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 92
    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mScreenSupplyTranslucentColor:I

    .line 97
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewPaint:Landroid/graphics/Paint;

    .line 98
    iget p0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mScreenSupplyTranslucentColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private is169Ratio()Z
    .registers 5

    .line 333
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRatio:D

    const-wide v2, 0x3ffc71c720000000L    # 1.7777777910232544

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->isSameAspectRatio(DD)Z

    move-result p0

    return p0
.end method

.method private is21259Ratio()Z
    .registers 5

    .line 342
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRatio:D

    const-wide v2, 0x4002e38e40000000L    # 2.3611111640930176

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->isSameAspectRatio(DD)Z

    move-result p0

    return p0
.end method

.method private is229Ratio()Z
    .registers 5

    .line 346
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRatio:D

    const-wide v2, 0x40038e38e0000000L    # 2.444444417953491

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->isSameAspectRatio(DD)Z

    move-result p0

    return p0
.end method

.method private is43Ratio()Z
    .registers 5

    .line 329
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRatio:D

    const-wide v2, 0x3ff5555560000000L    # 1.3333333730697632

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->isSameAspectRatio(DD)Z

    move-result p0

    return p0
.end method

.method private static isSameAspectRatio(DD)Z
    .registers 4

    sub-double/2addr p0, p2

    .line 351
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide p2, 0x3f947ae147ae147bL    # 0.02

    cmpg-double p0, p0, p2

    if-gtz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private isSquareRatio()Z
    .registers 5

    .line 325
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRatio:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->isSameAspectRatio(DD)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/Integer;ZZ)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 64
    :cond_3
    sget-object p2, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAnimationUpdate: translation: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mAbsolutePreviewRect = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mRelativePreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 65
    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mRelativePreviewRect:Landroid/graphics/Rect;

    iget v0, p3, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget p3, p3, Landroid/graphics/Rect;->top:I

    .line 67
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr p3, v1

    int-to-float p3, p3

    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mRelativePreviewRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 69
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr v1, p1

    int-to-float p1, v1

    .line 65
    invoke-virtual {p2, v0, p3, v2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 71
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->update()V

    return-void
.end method

.method private update()V
    .registers 3

    .line 124
    iget v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mScreenFormType:I

    const/4 v1, 0x2

    if-eq v1, v0, :cond_13

    const/4 v1, 0x1

    if-eq v1, v0, :cond_13

    const/4 v1, 0x4

    if-eq v1, v0, :cond_13

    const/4 v1, 0x5

    if-ne v1, v0, :cond_f

    goto :goto_13

    .line 130
    :cond_f
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->updateForNormalAndFlip()V

    return-void

    .line 128
    :cond_13
    :goto_13
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->updateForFold()V

    return-void
.end method

.method private updateForFold()V
    .registers 11

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 142
    :cond_9
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewPath:Landroid/graphics/Path;

    .line 143
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 169
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->isSquareRatio()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_3f

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v3, 0x3ea147ae    # 0.315f

    mul-float/2addr v0, v3

    const v4, 0x43a250a4    # 324.63f

    add-float/2addr v0, v4

    .line 171
    iget-object v5, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float/2addr v5, v3

    add-float/2addr v5, v4

    .line 172
    iget-object v3, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    :goto_3b
    sub-float/2addr v3, v5

    div-float/2addr v3, v1

    goto/16 :goto_1cb

    .line 173
    :cond_3f
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->is43Ratio()Z

    move-result v0

    const/16 v3, 0xb4

    const/4 v4, 0x1

    if-eqz v0, :cond_94

    .line 174
    iget v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mScreenFormType:I

    if-ne v4, v0, :cond_71

    iget v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mOrientation:I

    if-eqz v0, :cond_71

    if-eq v0, v3, :cond_71

    .line 176
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v3, 0x3f641893    # 0.891f

    mul-float/2addr v0, v3

    const v3, 0x4359c20c

    sub-float/2addr v0, v3

    .line 177
    iget-object v3, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    neg-float v3, v3

    const v4, 0x3dac0831    # 0.084f

    mul-float/2addr v3, v4

    const v4, 0x44871ba6

    :goto_6e
    add-float/2addr v3, v4

    move v5, v3

    goto :goto_8d

    .line 179
    :cond_71
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v3, 0x3ea3d70a    # 0.32f

    mul-float/2addr v0, v3

    const v3, 0x43a87ae1    # 336.96f

    add-float/2addr v0, v3

    .line 180
    iget-object v3, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    const v4, 0x3eb020c5    # 0.344f

    mul-float/2addr v3, v4

    const v4, 0x44038b44

    goto :goto_6e

    .line 182
    :goto_8d
    iget-object v3, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    goto :goto_3b

    .line 183
    :cond_94
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->is169Ratio()Z

    move-result v0

    if-eqz v0, :cond_12a

    .line 184
    iget v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mScreenFormType:I

    const v5, 0x447e1666

    const v6, 0x3f2e5604    # 0.681f

    if-ne v4, v0, :cond_d9

    iget v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mOrientation:I

    if-eqz v0, :cond_d9

    if-eq v0, v3, :cond_d9

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v3, 0x3fdccccd    # 1.725f

    mul-float/2addr v0, v3

    const v3, 0x44809666    # 1028.7f

    sub-float/2addr v0, v3

    .line 187
    iget-object v3, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    neg-float v3, v3

    const v4, 0x3e94bc6a    # 0.2905f

    mul-float/2addr v3, v4

    const v4, 0x44c25f0a

    add-float/2addr v3, v4

    .line 188
    iget-object v4, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    const v7, 0x3f833333    # 1.025f

    mul-float/2addr v4, v7

    const v7, 0x44c932e1

    sub-float/2addr v4, v7

    :goto_d5
    move v9, v4

    move v4, v3

    move v3, v9

    goto :goto_fe

    .line 190
    :cond_d9
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v3, 0x3f018937    # 0.506f

    mul-float/2addr v0, v3

    const v3, 0x431beccd

    add-float/2addr v0, v3

    .line 191
    iget-object v3, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    const v4, 0x3e849ba6    # 0.259f

    mul-float/2addr v3, v4

    const v4, 0x4417727f

    add-float/2addr v3, v4

    .line 192
    iget-object v4, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v4, v6

    sub-float/2addr v4, v5

    goto :goto_d5

    .line 194
    :goto_fe
    iget v7, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mScreenFormType:I

    const/4 v8, 0x4

    if-eq v8, v7, :cond_10a

    const/4 v8, 0x5

    if-ne v8, v7, :cond_107

    goto :goto_10a

    :cond_107
    move v5, v4

    goto/16 :goto_1cb

    .line 196
    :cond_10a
    :goto_10a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v3, 0x3f1a8588    # 0.6036f

    mul-float/2addr v0, v3

    .line 197
    iget-object v3, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    const v4, 0x3f46e979    # 0.777f

    mul-float/2addr v3, v4

    .line 198
    iget-object v4, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v4, v6

    sub-float/2addr v4, v5

    move v5, v3

    move v3, v4

    goto/16 :goto_1cb

    .line 200
    :cond_12a
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->is21259Ratio()Z

    move-result v0

    if-nez v0, :cond_198

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->is229Ratio()Z

    move-result v0

    if-eqz v0, :cond_137

    goto :goto_198

    .line 207
    :cond_137
    iget v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mScreenFormType:I

    if-ne v4, v0, :cond_16d

    iget v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mOrientation:I

    if-eqz v0, :cond_16d

    if-eq v0, v3, :cond_16d

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v3, 0x3f04bc6a    # 0.5185f

    mul-float/2addr v0, v3

    const v3, 0x431008f6

    add-float/2addr v0, v3

    .line 210
    iget-object v3, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    const v4, 0x3e116873    # 0.142f

    mul-float/2addr v3, v4

    const v4, 0x440c472b    # 561.112f

    add-float v5, v3, v4

    .line 211
    iget-object v3, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    const v4, 0x3edba5e3    # 0.429f

    mul-float/2addr v3, v4

    const v4, 0x438c472b    # 280.556f

    :goto_16b
    sub-float/2addr v3, v4

    goto :goto_1cb

    .line 213
    :cond_16d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v3, 0x3e6f1aa0    # 0.2335f

    mul-float/2addr v0, v3

    const v3, 0x43d28979

    add-float/2addr v0, v3

    .line 214
    iget-object v3, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    const v4, 0x3ec83127    # 0.391f

    mul-float/2addr v3, v4

    const v4, 0x438e0062

    add-float v5, v3, v4

    .line 215
    iget-object v3, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    const v4, 0x3e9c28f6    # 0.305f

    mul-float/2addr v3, v4

    const v4, 0x430e799a

    goto :goto_16b

    .line 202
    :cond_198
    :goto_198
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v3, 0x3ecf5c29    # 0.405f

    mul-float/2addr v0, v3

    const v3, 0x42bc6666    # 94.2f

    iget v4, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mDensity:F

    mul-float/2addr v4, v3

    add-float/2addr v0, v4

    .line 203
    iget-object v3, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    const v4, 0x3e7e76c9    # 0.2485f

    mul-float/2addr v3, v4

    const v4, 0x430d547b    # 141.33f

    iget v5, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mDensity:F

    mul-float/2addr v5, v4

    add-float/2addr v5, v3

    .line 204
    iget-object v3, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    const v4, 0x3e5930be    # 0.2121f

    mul-float/2addr v3, v4

    const v4, 0x3fab851f    # 1.34f

    iget v6, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mDensity:F

    mul-float/2addr v6, v4

    add-float/2addr v3, v6

    .line 219
    :goto_1cb
    iget-object v4, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v0

    div-float/2addr v4, v1

    .line 221
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    iget v6, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v4

    .line 222
    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v3

    add-float/2addr v0, v6

    add-float/2addr v5, v1

    .line 225
    iget-object v3, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mInPreviewRoundedRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v6, v1, v0, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 226
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mInPreviewRoundedPath:Landroid/graphics/Path;

    .line 227
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mInPreviewRoundedRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mInPreviewRoundedRadius:F

    iget v4, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mDensity:F

    mul-float v5, v3, v4

    mul-float/2addr v3, v4

    invoke-virtual {v0, v1, v5, v3, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 230
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateForNormalAndFlip()V
    .registers 9

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 241
    :cond_9
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewPath:Landroid/graphics/Path;

    .line 242
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 262
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->isSquareRatio()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_3a

    .line 263
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v3, 0x3f333333    # 0.7f

    mul-float/2addr v0, v3

    .line 264
    iget-object v4, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v4, v3

    .line 265
    iget-object v3, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    :goto_36
    sub-float/2addr v3, v4

    div-float/2addr v3, v1

    goto/16 :goto_ef

    .line 266
    :cond_3a
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->is43Ratio()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 267
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    const v3, 0x3f8ddcc6    # 1.1083f

    mul-float/2addr v0, v3

    const v3, 0x43954ccd    # 298.6f

    iget v4, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mDensity:F

    mul-float/2addr v4, v3

    sub-float/2addr v0, v4

    .line 268
    iget-object v3, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    const v4, 0x3fd4cccd    # 1.6625f

    mul-float/2addr v3, v4

    const/high16 v4, 0x43e00000    # 448.0f

    iget v5, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mDensity:F

    mul-float/2addr v5, v4

    sub-float v4, v3, v5

    .line 269
    iget-object v3, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    goto :goto_36

    .line 270
    :cond_69
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->is169Ratio()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 271
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v3, 0x3ee816f0    # 0.4533f

    mul-float/2addr v0, v3

    const v3, 0x4299999a    # 76.8f

    iget v4, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mDensity:F

    mul-float/2addr v4, v3

    add-float/2addr v0, v4

    .line 272
    iget-object v3, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    const v4, 0x3ec3d70a    # 0.3825f

    mul-float/2addr v3, v4

    const v4, 0x42e66666    # 115.2f

    iget v5, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mDensity:F

    mul-float/2addr v5, v4

    add-float v4, v3, v5

    .line 273
    iget-object v3, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    const v5, -0x4247ae14    # -0.09f

    mul-float/2addr v3, v5

    const v5, 0x42eb3333    # 117.6f

    iget v6, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mDensity:F

    :goto_a1
    mul-float/2addr v6, v5

    add-float/2addr v3, v6

    goto :goto_ef

    .line 274
    :cond_a4
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->is229Ratio()Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 276
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v3, 0x3ecf5c29    # 0.405f

    mul-float/2addr v0, v3

    const v3, 0x42bc6666    # 94.2f

    iget v4, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mDensity:F

    mul-float/2addr v4, v3

    add-float/2addr v0, v4

    .line 277
    iget-object v3, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    const v4, 0x3e7e76c9    # 0.2485f

    mul-float/2addr v3, v4

    const v4, 0x430d547b    # 141.33f

    iget v5, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mDensity:F

    mul-float/2addr v5, v4

    add-float v4, v3, v5

    .line 278
    iget-object v3, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    const v5, 0x3e5930be    # 0.2121f

    mul-float/2addr v3, v5

    const v5, 0x3fab851f    # 1.34f

    iget v6, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mDensity:F

    goto :goto_a1

    .line 281
    :cond_dd
    iget v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mDensity:F

    const/high16 v3, 0x43700000    # 240.0f

    mul-float/2addr v3, v0

    const/high16 v4, 0x43b40000    # 360.0f

    mul-float/2addr v4, v0

    .line 283
    iget v5, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mTopOffset:I

    int-to-float v5, v5

    const/high16 v6, 0x42700000    # 60.0f

    mul-float/2addr v0, v6

    add-float/2addr v0, v5

    move v7, v3

    move v3, v0

    move v0, v7

    .line 286
    :goto_ef
    iget-object v5, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v5, v0

    div-float/2addr v5, v1

    .line 288
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    iget v6, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v6, v5

    .line 289
    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v3

    add-float/2addr v0, v6

    add-float/2addr v4, v1

    .line 292
    iget-object v3, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mInPreviewRoundedRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v6, v1, v0, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 293
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mInPreviewRoundedPath:Landroid/graphics/Path;

    .line 294
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mInPreviewRoundedRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mInPreviewRoundedRadius:F

    iget v4, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mDensity:F

    mul-float v5, v3, v4

    mul-float/2addr v3, v4

    invoke-virtual {v0, v1, v5, v3, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 297
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public fadeIn(Landroid/view/View;Landroid/view/View;)V
    .registers 7

    .line 355
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v1, 0x64

    .line 356
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 357
    const-string v3, "alpha"

    invoke-direct {p0, p1, v3, v1, v2}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->getTargetViewAnimator(Landroid/view/View;Ljava/lang/String;FF)Landroid/animation/Animator;

    move-result-object v1

    filled-new-array {v1}, [Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 358
    new-instance v1, Lcom/transsion/camera/app/ui/view/ScreenSupplyView$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView$1;-><init>(Lcom/transsion/camera/app/ui/view/ScreenSupplyView;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 368
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public fadeOut(Landroid/view/View;Landroid/view/View;)V
    .registers 7

    .line 372
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v1, 0x64

    .line 373
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 374
    const-string v3, "alpha"

    invoke-direct {p0, p1, v3, v1, v2}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->getTargetViewAnimator(Landroid/view/View;Ljava/lang/String;FF)Landroid/animation/Animator;

    move-result-object v1

    filled-new-array {v1}, [Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 375
    new-instance v1, Lcom/transsion/camera/app/ui/view/ScreenSupplyView$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView$2;-><init>(Lcom/transsion/camera/app/ui/view/ScreenSupplyView;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 385
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public getAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;)Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;
    .registers 3

    .line 398
    sget-object v0, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;->UI5_ANIM_PREVIEW_TRANSLATION:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;

    if-ne p1, v0, :cond_7

    .line 399
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewTranslationListener:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .line 407
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 408
    sget-object v0, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;->UI5_ANIM_PREVIEW_TRANSLATION:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->getAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;)Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 410
    invoke-static {}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;->getInstance()Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;->registerAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;)V

    :cond_12
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 416
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 417
    sget-object v0, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;->UI5_ANIM_PREVIEW_TRANSLATION:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->getAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;)Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 419
    invoke-static {}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;->getInstance()Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;->unregisterAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;)V

    :cond_12
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 313
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 314
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewPath:Landroid/graphics/Path;

    if-eqz v0, :cond_1b

    .line 316
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mInPreviewRoundedPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    .line 317
    iget v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mScreenSupplyTranslucentColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 318
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    .line 320
    iget p0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mScreenSupplyColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_1b
    return-void
.end method

.method public onOrientationChanged(IZ)V
    .registers 3

    .line 112
    iput p1, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mOrientation:I

    const/4 p1, 0x1

    .line 113
    iget p2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mScreenFormType:I

    if-ne p1, p2, :cond_a

    .line 114
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->update()V

    :cond_a
    return-void
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 3

    .line 306
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mRelativePreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 307
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 308
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->update()V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 119
    iput p1, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mScreenFormType:I

    .line 120
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->update()V

    return-void
.end method

.method public updateOffset(II)V
    .registers 3

    .line 102
    iput p1, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mTopOffset:I

    .line 103
    iput p2, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mBottomOffset:I

    .line 104
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->update()V

    return-void
.end method

.method public updatePreviewRatio(D)V
    .registers 3

    .line 108
    iput-wide p1, p0, Lcom/transsion/camera/app/ui/view/ScreenSupplyView;->mPreviewRatio:D

    return-void
.end method
