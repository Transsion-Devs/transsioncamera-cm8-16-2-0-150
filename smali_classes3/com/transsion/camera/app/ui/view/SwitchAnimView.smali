.class public Lcom/transsion/camera/app/ui/view/SwitchAnimView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/view/SwitchAnimView$BitmapBlurManager;,
        Lcom/transsion/camera/app/ui/view/SwitchAnimView$IBlurManager;,
        Lcom/transsion/camera/app/ui/view/SwitchAnimView$AnimEndCallback;
    }
.end annotation


# static fields
.field private static final PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field listener:Landroid/animation/Animator$AnimatorListener;

.field private mAnimEndCallback:Lcom/transsion/camera/app/ui/view/SwitchAnimView$AnimEndCallback;

.field private mApertureHeight:I

.field private mBlurHandler:Landroid/os/Handler;

.field private final mBlurManager:Lcom/transsion/camera/app/ui/view/SwitchAnimView$IBlurManager;

.field private mCurrentRadius:I

.field private mFadeSwitchAnimator:Landroid/animation/Animator;

.field private mIsFadeBlurAnimReStart:Z

.field private final mLock:Ljava/lang/Object;

.field private mPreviewBitmap:Landroid/graphics/Bitmap;

.field private final mRect:Landroid/graphics/Rect;

.field private mRectAnimProgressListener:Lcom/transsion/camera/app/ui/IAnimProgressListener;

.field private mRectAnimator:Landroid/animation/ValueAnimator;

.field private final mUseFadeBlurAnimator:Z

.field private mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;


# direct methods
.method public static synthetic $r8$lambda$048UHys8nRHvp8UYwi2iGR_ap4w(Landroid/animation/ValueAnimator;[Landroid/animation/Animator$AnimatorListener;)V
    .registers 6

    .line 532
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_18

    aget-object v2, p1, v1

    .line 533
    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda7;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_18
    return-void
.end method

.method public static synthetic $r8$lambda$5uHO9Vbr2MEVEfW3tgdDBEnLI8c(Landroid/view/View;)Landroid/widget/ImageView;
    .registers 2

    .line 202
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    check-cast p0, Landroid/widget/ImageView;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8tHvAroii9lPziSYAqNYphHgCdE(Lcom/transsion/camera/app/ui/view/SwitchAnimView;[ILjava/lang/Integer;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->lambda$createFadeBlurAnimator$11([ILjava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fr8UpeAdmX4Yw8duWdNP2PIMMBQ(Landroid/graphics/Bitmap;Landroid/os/Handler;)V
    .registers 4

    const/4 v0, 0x1

    .line 276
    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_16

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_16

    .line 277
    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_16
    return-void
.end method

.method public static synthetic $r8$lambda$IHVccO5ao1GuF-Q_o_dGoTmwjGQ()Z
    .registers 2

    .line 431
    invoke-static {}, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->getInstance()Lcom/transsion/camera/utils/threads/HandlerThreadPool;

    move-result-object v0

    const-string v1, "BlurThread"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->offer(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic $r8$lambda$O40Cc7WtkXXrz-FJ7WV3bbu0is0(Lcom/transsion/camera/app/ui/view/SwitchAnimView;Landroid/os/Handler;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->lambda$clear$3(Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VeuU0RovxtZEzdD1NIs-2KZHLME(Landroid/widget/ImageView;)V
    .registers 3

    const/4 v0, 0x0

    .line 204
    invoke-virtual {p0, v0}, Landroid/view/View;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    .line 205
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    .line 206
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 207
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 208
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 210
    :cond_18
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 211
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 213
    :cond_25
    invoke-virtual {p0}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 214
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    return-void
.end method

.method public static synthetic $r8$lambda$hNLXoO3zDm5wbW7C4uE09gIb0x0(ZLcom/transsion/camera/app/ui/view/ViewSwitcher;)V
    .registers 2

    if-eqz p0, :cond_6

    .line 131
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/view/ViewSwitcher;->showForeground()V

    return-void

    .line 133
    :cond_6
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/view/ViewSwitcher;->showBackground()V

    return-void
.end method

.method public static synthetic $r8$lambda$iufd0SrkYbS2PkMLXcmutkdc6o8(Lcom/transsion/camera/app/ui/view/SwitchAnimView;Landroid/animation/ValueAnimator;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->lambda$updateTargetRect$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jEVSYEOM0U6T65ab0rVH0ewnTUQ(Lcom/transsion/camera/app/ui/view/SwitchAnimView;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->lambda$setRenderEffect$4(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s6JBqcNjk0oZV-WfqjyIMEp-UbM(Ljava/lang/Object;)Ljava/lang/Integer;
    .registers 1

    .line 539
    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic $r8$lambda$vk9f0Oc42ELY5wsAsXUkseJCyFk(Lcom/transsion/camera/app/ui/view/ViewSwitcher;)Landroid/widget/ImageView;
    .registers 1

    .line 464
    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic $r8$lambda$yuP7EhtMsidGTtD8XETyTbLMrTg(Lcom/transsion/camera/app/ui/view/SwitchAnimView;[ILandroid/animation/ValueAnimator;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->lambda$createFadeBlurAnimator$12([ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAnimEndCallback(Lcom/transsion/camera/app/ui/view/SwitchAnimView;)Lcom/transsion/camera/app/ui/view/SwitchAnimView$AnimEndCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mAnimEndCallback:Lcom/transsion/camera/app/ui/view/SwitchAnimView$AnimEndCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsFadeBlurAnimReStart(Lcom/transsion/camera/app/ui/view/SwitchAnimView;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mIsFadeBlurAnimReStart:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/transsion/camera/app/ui/view/SwitchAnimView;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRectAnimProgressListener(Lcom/transsion/camera/app/ui/view/SwitchAnimView;)Lcom/transsion/camera/app/ui/IAnimProgressListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRectAnimProgressListener:Lcom/transsion/camera/app/ui/IAnimProgressListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmViewSwitcherRoot(Lcom/transsion/camera/app/ui/view/SwitchAnimView;)Lcom/transsion/camera/app/ui/view/ViewSwitcher;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsFadeBlurAnimReStart(Lcom/transsion/camera/app/ui/view/SwitchAnimView;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mIsFadeBlurAnimReStart:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRectAnimProgressListener(Lcom/transsion/camera/app/ui/view/SwitchAnimView;Lcom/transsion/camera/app/ui/IAnimProgressListener;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRectAnimProgressListener:Lcom/transsion/camera/app/ui/IAnimProgressListener;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetBlurBitmap(Lcom/transsion/camera/app/ui/view/SwitchAnimView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->getBlurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetCurrentImageView(Lcom/transsion/camera/app/ui/view/SwitchAnimView;)Landroid/widget/ImageView;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->getCurrentImageView()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateTargetRect(Lcom/transsion/camera/app/ui/view/SwitchAnimView;Landroid/graphics/Rect;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->updateTargetRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 54
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "SwitchAnimView"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 64
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mLock:Ljava/lang/Object;

    .line 60
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRect:Landroid/graphics/Rect;

    const/4 p2, 0x0

    .line 73
    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mBlurHandler:Landroid/os/Handler;

    const/4 p2, -0x1

    .line 75
    iput p2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mApertureHeight:I

    .line 97
    new-instance p2, Lcom/transsion/camera/app/ui/view/SwitchAnimView$1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$1;-><init>(Lcom/transsion/camera/app/ui/view/SwitchAnimView;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->listener:Landroid/animation/Animator$AnimatorListener;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 84
    sget p2, Lcom/transsion/camera/R$bool;->support_fade_in_blur_animator:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mUseFadeBlurAnimator:Z

    .line 85
    invoke-static {}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$BitmapBlurManager;->newInstance()Lcom/transsion/camera/app/ui/view/SwitchAnimView$IBlurManager;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mBlurManager:Lcom/transsion/camera/app/ui/view/SwitchAnimView$IBlurManager;

    .line 86
    invoke-interface {p2}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$IBlurManager;->getRadiusMin()I

    move-result p2

    iput p2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mCurrentRadius:I

    .line 88
    sget p2, Lcom/transsion/camera/R$integer;->aperture_shelter_style:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    const/4 v0, 0x2

    if-ne v0, p2, :cond_4d

    .line 90
    sget p2, Lcom/transsion/camera/R$dimen;->aperture_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mApertureHeight:I

    if-lez p1, :cond_4d

    const/4 p1, 0x0

    .line 92
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    :cond_4d
    return-void
.end method

.method private varargs createFadeBlurAnimator(Z[Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;
    .registers 4

    .line 513
    iget v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mCurrentRadius:I

    if-eqz p1, :cond_b

    .line 514
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mBlurManager:Lcom/transsion/camera/app/ui/view/SwitchAnimView$IBlurManager;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$IBlurManager;->getRadiusMax()I

    move-result p1

    goto :goto_11

    :cond_b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mBlurManager:Lcom/transsion/camera/app/ui/view/SwitchAnimView$IBlurManager;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$IBlurManager;->getRadiusMin()I

    move-result p1

    :goto_11
    filled-new-array {v0, p1}, [I

    move-result-object p1

    .line 513
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 515
    new-instance v0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$6;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$6;-><init>(Lcom/transsion/camera/app/ui/view/SwitchAnimView;Landroid/animation/ValueAnimator;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 531
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda0;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 p2, 0x0

    .line 536
    filled-new-array {p2}, [I

    move-result-object p2

    .line 537
    new-instance v0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/view/SwitchAnimView;[I)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method private getBlurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 9

    .line 553
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 555
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->getTagBlurRadius()I

    move-result v2

    if-lez v2, :cond_11

    .line 557
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mBlurManager:Lcom/transsion/camera/app/ui/view/SwitchAnimView$IBlurManager;

    invoke-interface {p0, p1, v2}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$IBlurManager;->blur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_12

    :cond_11
    move-object p0, p1

    .line 559
    :goto_12
    sget-object v3, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBlurBitmap: radius = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", inBitmap = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", outBitmap = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", cost = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 559
    invoke-static {v3, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0
.end method

.method private getBlurHandler()Landroid/os/Handler;
    .registers 3

    .line 437
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mBlurHandler:Landroid/os/Handler;

    if-nez v0, :cond_19

    .line 438
    invoke-static {}, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->getInstance()Lcom/transsion/camera/utils/threads/HandlerThreadPool;

    move-result-object v0

    const-string v1, "BlurThread"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->poll(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v0

    .line 439
    new-instance v1, Lcom/transsion/camera/app/ui/view/SwitchAnimView$4;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$4;-><init>(Lcom/transsion/camera/app/ui/view/SwitchAnimView;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mBlurHandler:Landroid/os/Handler;

    .line 459
    :cond_19
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mBlurHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private getCurrentImageView()Landroid/widget/ImageView;
    .registers 2

    .line 463
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda2;-><init>()V

    .line 464
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    .line 465
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    return-object p0
.end method

.method private getTagBlurRadius()I
    .registers 3

    .line 565
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->isUseBlurBitmap()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 568
    :cond_8
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    if-nez p0, :cond_d

    return v1

    .line 571
    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_16

    return v1

    .line 572
    :cond_16
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private isUseBlurBitmap()Z
    .registers 1

    .line 576
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mUseFadeBlurAnimator:Z

    if-eqz p0, :cond_f

    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p0

    iget-boolean p0, p0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportRenderscriptToolkit:Z

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$clear$3(Landroid/os/Handler;)V
    .registers 4

    const/4 v0, 0x0

    .line 241
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 242
    invoke-static {}, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->getInstance()Lcom/transsion/camera/utils/threads/HandlerThreadPool;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/transsion/camera/utils/threads/HandlerThreadPool;->offer(Ljava/lang/Thread;)V

    .line 243
    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mBlurHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$createFadeBlurAnimator$11([ILjava/lang/Integer;)V
    .registers 6

    const/4 v0, 0x0

    .line 541
    aget v1, p1, v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mBlurManager:Lcom/transsion/camera/app/ui/view/SwitchAnimView$IBlurManager;

    invoke-interface {v2}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$IBlurManager;->getRadiusStep()I

    move-result v2

    if-lt v1, v2, :cond_21

    .line 542
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p1, v0

    .line 543
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p2, v0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setRenderEffect(IZ)V

    .line 545
    :cond_21
    aget p1, p1, v0

    iput p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mCurrentRadius:I

    return-void
.end method

.method private synthetic lambda$createFadeBlurAnimator$12([ILandroid/animation/ValueAnimator;)V
    .registers 4

    .line 538
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda5;-><init>()V

    .line 539
    invoke-virtual {p2, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda6;-><init>(Lcom/transsion/camera/app/ui/view/SwitchAnimView;[I)V

    .line 540
    invoke-virtual {p2, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$setRenderEffect$4(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .registers 4

    if-eqz p1, :cond_f

    .line 270
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_f

    .line 271
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->getBlurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_f
    return-void
.end method

.method private synthetic lambda$updateTargetRect$6(Landroid/animation/ValueAnimator;)V
    .registers 6

    .line 307
    const-string v0, "left"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v1, "top"

    .line 308
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "right"

    .line 309
    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "bottom"

    .line 310
    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 307
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setPreviewRect(IIII)V

    .line 311
    sget-object v0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTargetRect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->requestLayout()V

    .line 313
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRectAnimProgressListener:Lcom/transsion/camera/app/ui/IAnimProgressListener;

    if-eqz p0, :cond_5b

    .line 314
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/ui/IAnimProgressListener;->onAnimProgress(F)V

    :cond_5b
    return-void
.end method

.method private setRenderEffect(IZ)V
    .registers 5

    .line 257
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    if-nez v0, :cond_5

    goto :goto_11

    .line 260
    :cond_5
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->isUseBlurBitmap()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 261
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->getTagBlurRadius()I

    move-result v0

    if-ne v0, p1, :cond_12

    :goto_11
    return-void

    :cond_12
    const/4 v0, -0x1

    if-le p1, v0, :cond_1e

    .line 265
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 267
    :cond_1e
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mPreviewBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_33

    .line 269
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->getCurrentImageView()Landroid/widget/ImageView;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    new-instance v1, Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/app/ui/view/SwitchAnimView;Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_56

    .line 275
    :cond_33
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->getBlurHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p2, Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda4;

    invoke-direct {p2, v0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda4;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_56

    .line 282
    :cond_44
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    int-to-float p2, p1

    .line 283
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-static {p2, p2, v0}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object p2

    .line 284
    invoke-virtual {p0, p2}, Landroid/view/View;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    .line 286
    :goto_56
    sget-object p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setRenderEffect: radius = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private updateTargetRect(Landroid/graphics/Rect;)V
    .registers 5

    .line 387
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setPreviewRect(IIII)V

    .line 388
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->requestLayout()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 4

    .line 196
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    if-eqz v0, :cond_46

    .line 197
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->isUseBlurBitmap()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 198
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 200
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_3a

    .line 201
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda9;-><init>()V

    .line 202
    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda10;

    invoke-direct {v2}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda10;-><init>()V

    .line 203
    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 217
    :cond_3a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 218
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 221
    :cond_46
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRectAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_55

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 222
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRectAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_55
    const/4 v0, 0x0

    .line 224
    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRectAnimator:Landroid/animation/ValueAnimator;

    .line 226
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mFadeSwitchAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_67

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 227
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mFadeSwitchAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 229
    :cond_67
    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mFadeSwitchAnimator:Landroid/animation/Animator;

    .line 231
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 232
    :try_start_6c
    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mPreviewBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_7e

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_7e

    .line 233
    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_7e

    :catchall_7c
    move-exception p0

    goto :goto_9c

    .line 235
    :cond_7e
    :goto_7e
    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mPreviewBitmap:Landroid/graphics/Bitmap;

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mBlurManager:Lcom/transsion/camera/app/ui/view/SwitchAnimView$IBlurManager;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$IBlurManager;->destroy()V

    .line 238
    monitor-exit v1
    :try_end_86
    .catchall {:try_start_6c .. :try_end_86} :catchall_7c

    .line 240
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mBlurHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda11;-><init>(Lcom/transsion/camera/app/ui/view/SwitchAnimView;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 245
    sget-object p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "clear: "

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 238
    :goto_9c
    :try_start_9c
    monitor-exit v1
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_7c

    throw p0
.end method

.method public getPreferFactor(Z)I
    .registers 3

    .line 114
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-eqz v0, :cond_f

    .line 115
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mBlurManager:Lcom/transsion/camera/app/ui/view/SwitchAnimView$IBlurManager;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$IBlurManager;->getPreferFactor()I

    move-result p0

    return p0

    :cond_f
    if-eqz p1, :cond_14

    const/16 p0, 0x20

    return p0

    .line 120
    :cond_14
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mUseFadeBlurAnimator:Z

    if-eqz p1, :cond_1b

    const/16 p0, 0x8

    return p0

    .line 123
    :cond_1b
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mBlurManager:Lcom/transsion/camera/app/ui/view/SwitchAnimView$IBlurManager;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$IBlurManager;->getPreferFactor()I

    move-result p0

    return p0
.end method

.method public isRectAnimatorStarted()Z
    .registers 2

    .line 739
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRectAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRectAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result p0

    if-eqz p0, :cond_14

    :cond_12
    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 420
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 421
    iget v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mApertureHeight:I

    if-lez v0, :cond_2c

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_2c

    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 422
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 423
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mApertureHeight:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, p0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    const/high16 p0, -0x1000000

    .line 424
    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 425
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2c
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .line 410
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 411
    sget v0, Lcom/transsion/camera/R$id;->animation_view:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    .line 412
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/view/ViewSwitcher;->reset()V

    .line 413
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->isUseBlurBitmap()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 414
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1d
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 401
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 402
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    if-eqz p1, :cond_31

    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRect:Landroid/graphics/Rect;

    if-eqz p2, :cond_31

    .line 403
    iget p3, p2, Landroid/graphics/Rect;->left:I

    iget p4, p2, Landroid/graphics/Rect;->top:I

    iget p5, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/view/View;->layout(IIII)V

    .line 404
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRect:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p3

    iget-object p4, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRect:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p4

    iget-object p5, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRect:Landroid/graphics/Rect;

    iget p5, p5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p4, p5

    invoke-virtual {p0, p2, p1, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    :cond_31
    return-void
.end method

.method public onVisibilityChanged(I)V
    .registers 2

    if-eqz p1, :cond_10

    .line 587
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mBlurManager:Lcom/transsion/camera/app/ui/view/SwitchAnimView$IBlurManager;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$IBlurManager;->getRadiusMin()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mCurrentRadius:I

    .line 588
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/ViewSwitcher;->reset()V

    return-void

    .line 590
    :cond_10
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mBlurManager:Lcom/transsion/camera/app/ui/view/SwitchAnimView$IBlurManager;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$IBlurManager;->create()V

    return-void
.end method

.method public preInit()V
    .registers 2

    .line 430
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda13;-><init>()V

    invoke-virtual {p0, v0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method public rectAnimationListener(Lcom/transsion/camera/app/ui/IAnimProgressListener;)V
    .registers 2

    .line 294
    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRectAnimProgressListener:Lcom/transsion/camera/app/ui/IAnimProgressListener;

    return-void
.end method

.method public requestLayout()V
    .registers 1

    .line 393
    invoke-super {p0}, Landroid/view/View;->requestLayout()V

    .line 394
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    if-eqz p0, :cond_a

    .line 395
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_a
    return-void
.end method

.method public resetTargetRect(IIII)V
    .registers 5

    .line 290
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setPreviewRect(IIII)V

    return-void
.end method

.method public setMaxRenderEffect()V
    .registers 3

    .line 249
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mBlurManager:Lcom/transsion/camera/app/ui/view/SwitchAnimView$IBlurManager;

    if-nez v0, :cond_5

    return-void

    .line 252
    :cond_5
    invoke-interface {v0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$IBlurManager;->getRadiusMax()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mCurrentRadius:I

    const/4 v1, 0x1

    .line 253
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setRenderEffect(IZ)V

    return-void
.end method

.method public setPreviewRect(IIII)V
    .registers 5

    .line 735
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setSwitchAnimInfo(I)V
    .registers 4

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    if-eqz v0, :cond_19

    const/high16 v1, 0x3f800000    # 1.0f

    .line 176
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 179
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    :cond_19
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->requestLayout()V

    return-void
.end method

.method public setSwitchAnimInfo(Landroid/graphics/Bitmap;)V
    .registers 3

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p0, p1, v0, v0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setSwitchAnimInfo(Landroid/graphics/Bitmap;ZZ)V

    return-void
.end method

.method public setSwitchAnimInfo(Landroid/graphics/Bitmap;ZZ)V
    .registers 8

    .line 144
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->isUseBlurBitmap()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 145
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mPreviewBitmap:Landroid/graphics/Bitmap;

    if-nez p3, :cond_18

    .line 147
    sget-object p3, Lcom/transsion/camera/utils/BitmapPoolUtil;->INSTANCE:Lcom/transsion/camera/utils/BitmapPoolUtil;

    invoke-virtual {p3, p1}, Lcom/transsion/camera/utils/BitmapPoolUtil;->put(Landroid/graphics/Bitmap;)V

    .line 149
    :cond_18
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mPreviewBitmap:Landroid/graphics/Bitmap;

    .line 151
    :cond_1a
    iget-object p3, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    if-nez p3, :cond_1f

    return-void

    .line 154
    :cond_1f
    invoke-virtual {p3}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 155
    sget-object v0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSwitchAnimInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " widht = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 155
    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v2

    iget-boolean v2, v2, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    const/4 v3, 0x1

    if-nez v2, :cond_77

    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mUseFadeBlurAnimator:Z

    if-eqz v2, :cond_77

    .line 158
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 159
    new-array p1, v1, [Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p0, v3, p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->startFadeSwitchAnim(Z[Landroid/animation/Animator$AnimatorListener;)V

    return-void

    .line 161
    :cond_77
    iget-object p3, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p3, v1}, Landroid/view/View;->setScaleX(F)V

    .line 162
    iget-object p3, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    invoke-virtual {p3, v1}, Landroid/view/View;->setScaleY(F)V

    .line 163
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSwitchAnimInfo start:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez p2, :cond_a3

    .line 165
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mBlurManager:Lcom/transsion/camera/app/ui/view/SwitchAnimView$IBlurManager;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$IBlurManager;->getRadiusDefault()I

    move-result p1

    invoke-direct {p0, p1, v3}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setRenderEffect(IZ)V

    goto :goto_a7

    :cond_a3
    const/4 p1, -0x1

    .line 167
    invoke-direct {p0, p1, v3}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setRenderEffect(IZ)V

    .line 169
    :goto_a7
    const-string p1, "setSwitchAnimInfo end"

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->requestLayout()V

    return-void
.end method

.method public setVisibility(I)V
    .registers 2

    .line 581
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 582
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->onVisibilityChanged(I)V

    return-void
.end method

.method public varargs startFadeSwitchAnim(Z[Landroid/animation/Animator$AnimatorListener;)V
    .registers 9

    .line 478
    sget-object v0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startFadeSwitchAnim: show = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentRadius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mCurrentRadius:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mFadeSwitchAnimator:Landroid/animation/Animator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 480
    iput-boolean v2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mIsFadeBlurAnimReStart:Z

    .line 481
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mFadeSwitchAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    goto :goto_36

    .line 483
    :cond_34
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mIsFadeBlurAnimReStart:Z

    :goto_36
    if-eqz p1, :cond_3f

    .line 486
    invoke-direct {p0, v2, p2}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->createFadeBlurAnimator(Z[Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mFadeSwitchAnimator:Landroid/animation/Animator;

    goto :goto_71

    .line 488
    :cond_3f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getCurrentView()Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    .line 489
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    const/4 v3, 0x2

    .line 490
    new-array v4, v3, [F

    fill-array-data v4, :array_98

    .line 491
    const-string v5, "alpha"

    invoke-static {v0, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 492
    new-instance v5, Lcom/transsion/camera/app/ui/view/SwitchAnimView$5;

    invoke-direct {v5, p0, v0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$5;-><init>(Lcom/transsion/camera/app/ui/view/SwitchAnimView;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 498
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 500
    invoke-direct {p0, v1, p2}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->createFadeBlurAnimator(Z[Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object p2, v3, v1

    aput-object v4, v3, v2

    .line 499
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 502
    iput-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mFadeSwitchAnimator:Landroid/animation/Animator;

    .line 504
    :goto_71
    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mFadeSwitchAnimator:Landroid/animation/Animator;

    .line 505
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI4Animator:Z

    if-nez v0, :cond_7e

    const-wide/16 v0, 0x12c

    goto :goto_85

    :cond_7e
    if-eqz p1, :cond_83

    const-wide/16 v0, 0xc8

    goto :goto_85

    :cond_83
    const-wide/16 v0, 0x96

    .line 504
    :goto_85
    invoke-virtual {p2, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 507
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mFadeSwitchAnimator:Landroid/animation/Animator;

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 508
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mFadeSwitchAnimator:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void

    :array_98
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startWideChangeAnim(ZLcom/transsion/camera/app/ui/view/SwitchAnimView$AnimEndCallback;)V
    .registers 5

    .line 185
    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mAnimEndCallback:Lcom/transsion/camera/app/ui/view/SwitchAnimView$AnimEndCallback;

    const p2, 0x3f99999a    # 1.2f

    if-eqz p1, :cond_31

    .line 187
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 188
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    .line 189
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x50

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->listener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 191
    :cond_31
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->listener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public switchBackground(Z)V
    .registers 3

    .line 128
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mViewSwitcherRoot:Lcom/transsion/camera/app/ui/view/ViewSwitcher;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda12;-><init>(Z)V

    .line 129
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateTargetRect(Landroid/graphics/Rect;ZJLandroid/animation/Animator$AnimatorListener;)V
    .registers 10

    .line 298
    sget-object v0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTargetRect() called with: previewRect = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], needAnim = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "], duration = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "], listener = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRectAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/transsion/camera/utils/AnimationUtils;->stopAnimator(Landroid/animation/Animator;)V

    if-eqz p2, :cond_b7

    .line 301
    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    filled-new-array {p2, v0}, [I

    move-result-object p2

    const-string v0, "left"

    invoke-static {v0, p2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    .line 302
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-string/jumbo v1, "top"

    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 303
    iget-object v1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const-string v2, "right"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 304
    iget-object v2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const-string v3, "bottom"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 305
    filled-new-array {p2, v0, v1, v2}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRectAnimator:Landroid/animation/ValueAnimator;

    .line 306
    new-instance v0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$$ExternalSyntheticLambda8;-><init>(Lcom/transsion/camera/app/ui/view/SwitchAnimView;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p5, :cond_9b

    .line 318
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRectAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/transsion/camera/app/ui/view/SwitchAnimView$2;

    invoke-direct {p2, p0, p5}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$2;-><init>(Lcom/transsion/camera/app/ui/view/SwitchAnimView;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_a5

    .line 346
    :cond_9b
    iget-object p2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRectAnimator:Landroid/animation/ValueAnimator;

    new-instance p5, Lcom/transsion/camera/app/ui/view/SwitchAnimView$3;

    invoke-direct {p5, p0, p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$3;-><init>(Lcom/transsion/camera/app/ui/view/SwitchAnimView;Landroid/graphics/Rect;)V

    invoke-virtual {p2, p5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 374
    :goto_a5
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRectAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 375
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRectAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 376
    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRectAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 378
    :cond_b7
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->updateTargetRect(Landroid/graphics/Rect;)V

    .line 379
    iget-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRectAnimProgressListener:Lcom/transsion/camera/app/ui/IAnimProgressListener;

    if-eqz p1, :cond_c6

    const/high16 p2, 0x3f800000    # 1.0f

    .line 380
    invoke-interface {p1, p2}, Lcom/transsion/camera/app/ui/IAnimProgressListener;->onAnimProgress(F)V

    const/4 p1, 0x0

    .line 381
    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->mRectAnimProgressListener:Lcom/transsion/camera/app/ui/IAnimProgressListener;

    :cond_c6
    return-void
.end method
