.class public abstract Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/IIntentReviewUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$UIHandler;
    }
.end annotation


# static fields
.field private static final ANIMATOR_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mActionCallback:Lcom/transsion/camera/app/ui/IIntentReviewUI$IActionCallback;

.field private mActionCancelView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mActionConfirmView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mActionsPanel:Landroid/view/View;

.field private mAnimatorIn:Landroid/animation/Animator;

.field private mAnimatorOut:Landroid/animation/Animator;

.field private mBottomBarHeight:I

.field private mContext:Landroid/content/Context;

.field private mIntentRootView:Landroid/view/ViewGroup;

.field private mIsReviewShown:Z

.field private mNavigationBarHeight:I

.field private mOrientation:I

.field private mParent:Landroid/view/ViewGroup;

.field private mPictureH:I

.field private mPictureW:I

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mRatio:D

.field private mReviewImageBottomCover:Landroid/view/View;

.field private mReviewImageView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private mScreenFormType:I

.field private mShowOrientation:I

.field private mShutterButtonHeight:I

.field private mShutterPanelPaddingHeight:I

.field private final mUIHandler:Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$UIHandler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActionCallback(Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;)Lcom/transsion/camera/app/ui/IIntentReviewUI$IActionCallback;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mActionCallback:Lcom/transsion/camera/app/ui/IIntentReviewUI$IActionCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmActionsPanel(Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;)Landroid/view/View;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mActionsPanel:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAnimatorIn(Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;)Landroid/animation/Animator;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mAnimatorIn:Landroid/animation/Animator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdoHideActionView(Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->doHideActionView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoHideReviewView(Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->doHideReviewView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoShowActionView(Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->doShowActionView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoShowReviewView(Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;Landroid/graphics/Bitmap;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->doShowReviewView(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoUpdateReviewViewState(Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->doUpdateReviewViewState(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 44
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "IntentReviewUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 82
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f28f5c3    # 0.66f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->ANIMATOR_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mIsReviewShown:Z

    .line 57
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mNavigationBarHeight:I

    .line 58
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mBottomBarHeight:I

    .line 59
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mShutterPanelPaddingHeight:I

    .line 60
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mShutterButtonHeight:I

    const/4 v1, -0x1

    .line 63
    iput v1, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mOrientation:I

    .line 64
    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mScreenFormType:I

    .line 85
    new-instance v0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$UIHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$UIHandler;-><init>(Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;Lcom/transsion/camera/app/ui/AbstractIntentReviewUI-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$UIHandler;

    return-void
.end method

.method private cancelOrientationAnimator()V
    .registers 2

    .line 490
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mAnimatorOut:Landroid/animation/Animator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 491
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mAnimatorOut:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 493
    :cond_f
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mAnimatorIn:Landroid/animation/Animator;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 494
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mAnimatorIn:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_1e
    return-void
.end method

.method private doHideActionView()V
    .registers 2

    .line 257
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->cancelOrientationAnimator()V

    .line 258
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mActionsPanel:Landroid/view/View;

    if-eqz p0, :cond_b

    const/4 v0, 0x4

    .line 259
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    return-void
.end method

.method private doHideReviewView()V
    .registers 3

    .line 315
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mActionConfirmView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mActionCancelView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mReviewImageView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 318
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mIntentRootView:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private doShowActionView()V
    .registers 2

    .line 251
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mActionsPanel:Landroid/view/View;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    .line 252
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method private doShowReviewView(Landroid/graphics/Bitmap;)V
    .registers 13

    .line 264
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->setupActions()V

    .line 265
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mPreviewRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-eqz v0, :cond_dd

    .line 266
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mReviewImageView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 267
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 268
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 269
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 271
    iget-object v4, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 272
    iget-object v5, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    sub-float v7, v2, v3

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    const/4 v6, 0x3

    .line 274
    iget v7, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mScreenFormType:I

    if-ne v6, v7, :cond_5e

    float-to-double v6, v2

    const-wide v8, 0x3ff5555560000000L    # 1.3333333730697632

    .line 275
    invoke-static {v6, v7, v8, v9}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 276
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mPreviewRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v3, v2, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_b4

    .line 278
    :cond_5e
    iget v6, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mOrientation:I

    const/16 v7, 0x5a

    if-eq v6, v7, :cond_a5

    const/16 v7, 0x10e

    if-ne v6, v7, :cond_69

    goto :goto_a5

    .line 281
    :cond_69
    iget-object v6, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mPreviewRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    const/4 v7, 0x1

    .line 282
    iget v8, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mScreenFormType:I

    if-ne v7, v8, :cond_88

    float-to-double v7, v3

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 283
    invoke-static {v7, v8, v9, v10}, Lcom/transsion/camera/utils/CameraUtil;->isSameAspectRatio(DD)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 284
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mPreviewRect:Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int v3, v5, v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v6, v3

    .line 286
    :cond_88
    invoke-virtual {v0, v1, v6, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 287
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getScreenSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-le v5, v3, :cond_b4

    .line 288
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 289
    iget-object v3, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    float-to-int v4, v3

    goto :goto_b4

    .line 279
    :cond_a5
    :goto_a5
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mPreviewRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v2, v5

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v3, v2

    invoke-virtual {v0, v1, v3, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 293
    :cond_b4
    :goto_b4
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mReviewImageBottomCover:Landroid/view/View;

    if-eqz v2, :cond_bd

    const/16 v3, 0x8

    .line 294
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_bd
    const/4 v2, 0x7

    .line 296
    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mScreenFormType:I

    if-ne v2, v3, :cond_cb

    .line 297
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/4 v2, -0x1

    .line 298
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 299
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_cf

    .line 301
    :cond_cb
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 302
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 304
    :goto_cf
    iput v4, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mPictureW:I

    .line 305
    iput v5, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mPictureH:I

    int-to-double v2, v5

    int-to-double v4, v4

    div-double/2addr v2, v4

    .line 306
    iput-wide v2, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mRatio:D

    .line 307
    iget-object v2, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mReviewImageView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    :cond_dd
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mReviewImageView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 310
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mOrientation:I

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mScreenFormType:I

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->updateIntentLayout(IIZ)V

    .line 311
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mIntentRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private doUpdateReviewViewState(Z)V
    .registers 3

    .line 520
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mIntentRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 521
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mActionConfirmView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 522
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mActionCancelView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private runOrientationAnimator()V
    .registers 8

    .line 499
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mActionsPanel:Landroid/view/View;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const-string v4, "alpha"

    invoke-static {v0, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v5, 0x15e

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mAnimatorOut:Landroid/animation/Animator;

    .line 500
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mActionsPanel:Landroid/view/View;

    new-array v1, v1, [F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v3

    invoke-static {v0, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mAnimatorIn:Landroid/animation/Animator;

    .line 501
    sget-object v1, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->ANIMATOR_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 502
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mAnimatorOut:Landroid/animation/Animator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 503
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mAnimatorOut:Landroid/animation/Animator;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$3;-><init>(Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 511
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mAnimatorOut:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private setupActions()V
    .registers 3

    .line 322
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mActionCancelView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$1;-><init>(Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mActionConfirmView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    new-instance v1, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$2;-><init>(Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateIntentLayout(IIZ)V
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    const/4 v3, 0x0

    const/4 v4, -0x1

    move/from16 v5, p1

    if-ne v5, v4, :cond_d

    move v5, v3

    .line 346
    :cond_d
    iget-object v6, v0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 348
    iget-object v7, v0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mReviewImageView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 349
    iget-object v7, v0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mActionsPanel:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 350
    invoke-virtual {v7, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 351
    iget-object v8, v0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mActionCancelView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 352
    iget-object v9, v0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mActionConfirmView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 353
    invoke-virtual {v8, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 354
    invoke-virtual {v9, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 355
    iput v3, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 356
    sget v10, Lcom/transsion/camera/R$dimen;->intent_action_button_width:I

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v8, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 357
    sget v10, Lcom/transsion/camera/R$dimen;->intent_action_button_height:I

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 358
    sget v10, Lcom/transsion/camera/R$dimen;->intent_action_button_width:I

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 359
    sget v10, Lcom/transsion/camera/R$dimen;->intent_action_button_height:I

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v10, 0x1

    const/16 v11, 0x10e

    const/16 v12, 0xb4

    const/16 v13, 0x5a

    const/16 v14, 0x30

    const/4 v15, 0x5

    const/16 v4, 0x50

    const/4 v3, 0x3

    if-ne v1, v10, :cond_111

    if-eqz v5, :cond_e5

    if-eq v5, v13, :cond_c0

    if-eq v5, v12, :cond_9b

    if-eq v5, v11, :cond_76

    goto/16 :goto_109

    .line 387
    :cond_76
    sget v1, Lcom/transsion/camera/R$dimen;->intent_actions_expanded_panel_height:I

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 388
    sget v1, Lcom/transsion/camera/R$dimen;->intent_actions_expanded_panel_width:I

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 389
    sget v1, Lcom/transsion/camera/R$dimen;->intent_actions_expanded_panel_270_margin_left:I

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 390
    sget v1, Lcom/transsion/camera/R$dimen;->intent_actions_expanded_panel_270_margin_top:I

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 391
    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 392
    iput v15, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_109

    .line 379
    :cond_9b
    sget v1, Lcom/transsion/camera/R$dimen;->intent_actions_expanded_panel_width:I

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 380
    sget v1, Lcom/transsion/camera/R$dimen;->intent_actions_expanded_panel_height:I

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 381
    sget v1, Lcom/transsion/camera/R$dimen;->intent_actions_expanded_panel_180_margin_left:I

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 382
    sget v1, Lcom/transsion/camera/R$dimen;->intent_actions_expanded_panel_180_margin_top:I

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 383
    iput v14, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 384
    iput v4, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_109

    .line 371
    :cond_c0
    sget v1, Lcom/transsion/camera/R$dimen;->intent_actions_expanded_panel_height:I

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 372
    sget v1, Lcom/transsion/camera/R$dimen;->intent_actions_expanded_panel_width:I

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 373
    sget v1, Lcom/transsion/camera/R$dimen;->intent_actions_expanded_panel_90_margin_left:I

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 374
    sget v1, Lcom/transsion/camera/R$dimen;->intent_actions_expanded_panel_90_margin_top:I

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 375
    iput v15, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 376
    iput v3, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_109

    .line 363
    :cond_e5
    sget v1, Lcom/transsion/camera/R$dimen;->intent_actions_expanded_panel_width:I

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 364
    sget v1, Lcom/transsion/camera/R$dimen;->intent_actions_expanded_panel_height:I

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 365
    sget v1, Lcom/transsion/camera/R$dimen;->intent_actions_expanded_panel_margin_left:I

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 366
    sget v1, Lcom/transsion/camera/R$dimen;->intent_actions_expanded_panel_margin_top:I

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 367
    iput v4, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 368
    iput v14, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 395
    :goto_109
    iget-object v1, v0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mActionsPanel:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_272

    :cond_111
    if-eqz v1, :cond_115

    if-ne v1, v3, :cond_118

    :cond_115
    const/4 v10, -0x1

    goto/16 :goto_20f

    :cond_118
    const/4 v10, 0x7

    if-ne v10, v1, :cond_272

    .line 425
    sget v1, Lcom/transsion/camera/R$dimen;->flip_intent_action_button_width:I

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v8, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 426
    sget v1, Lcom/transsion/camera/R$dimen;->flip_intent_action_button_height:I

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 427
    sget v1, Lcom/transsion/camera/R$dimen;->flip_intent_action_button_width:I

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 428
    sget v1, Lcom/transsion/camera/R$dimen;->flip_intent_action_button_height:I

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 430
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->cancelOrientationAnimator()V

    .line 432
    iget-object v1, v0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mReviewImageView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 433
    iget v1, v0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mShowOrientation:I

    const/4 v10, -0x1

    if-eq v1, v10, :cond_160

    if-eqz v2, :cond_150

    .line 435
    invoke-direct {v0}, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->runOrientationAnimator()V

    goto :goto_157

    .line 437
    :cond_150
    iget-object v1, v0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mActionsPanel:Landroid/view/View;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v1, v10}, Landroid/view/View;->setAlpha(F)V

    .line 439
    :goto_157
    iget-object v1, v0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mReviewImageView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iget v10, v0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mShowOrientation:I

    sub-int v10, v5, v10

    invoke-virtual {v1, v10, v2}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    :cond_160
    if-eqz v5, :cond_1e8

    if-eq v5, v13, :cond_1be

    if-eq v5, v12, :cond_194

    if-eq v5, v11, :cond_16a

    goto/16 :goto_272

    :cond_16a
    const/16 v1, 0x33

    .line 471
    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 472
    sget v1, Lcom/transsion/camera/R$dimen;->flip_intent_actions_panel_width_90:I

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 473
    sget v1, Lcom/transsion/camera/R$dimen;->flip_intent_actions_panel_height_90:I

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 474
    sget v1, Lcom/transsion/camera/R$dimen;->flip_intent_actions_panel_margin_left_0:I

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 475
    sget v1, Lcom/transsion/camera/R$dimen;->flip_intent_actions_panel_margin_left_270:I

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 476
    iput v14, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 477
    iput v4, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_272

    :cond_194
    const/16 v1, 0x35

    .line 462
    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 463
    sget v1, Lcom/transsion/camera/R$dimen;->flip_intent_actions_panel_width_180:I

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 464
    sget v1, Lcom/transsion/camera/R$dimen;->flip_intent_actions_panel_height_0:I

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 465
    sget v1, Lcom/transsion/camera/R$dimen;->flip_intent_actions_panel_margin_left_0:I

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 466
    sget v1, Lcom/transsion/camera/R$dimen;->flip_intent_actions_panel_margin_bottom_0:I

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 467
    iput v15, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 468
    iput v3, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_272

    :cond_1be
    const/16 v1, 0x55

    .line 453
    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 454
    sget v1, Lcom/transsion/camera/R$dimen;->flip_intent_actions_panel_width_90:I

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 455
    sget v1, Lcom/transsion/camera/R$dimen;->flip_intent_actions_panel_height_90:I

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 456
    sget v1, Lcom/transsion/camera/R$dimen;->flip_intent_actions_panel_margin_left_0:I

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 457
    sget v1, Lcom/transsion/camera/R$dimen;->flip_intent_actions_panel_margin_bottom_0:I

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 458
    iput v4, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 459
    iput v14, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_272

    .line 444
    :cond_1e8
    iput v4, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 445
    sget v1, Lcom/transsion/camera/R$dimen;->flip_intent_actions_panel_width_0:I

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 446
    sget v1, Lcom/transsion/camera/R$dimen;->flip_intent_actions_panel_height_0:I

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 447
    sget v1, Lcom/transsion/camera/R$dimen;->flip_intent_actions_panel_margin_left_0:I

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 448
    sget v1, Lcom/transsion/camera/R$dimen;->flip_intent_actions_panel_margin_bottom_0:I

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 449
    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 450
    iput v15, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_272

    .line 398
    :goto_20f
    iput v10, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-nez v1, :cond_22b

    .line 400
    iget v1, v0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mBottomBarHeight:I

    iget v2, v0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mNavigationBarHeight:I

    sub-int/2addr v1, v2

    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 401
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isTabletDevice()Z

    move-result v1

    if-eqz v1, :cond_226

    .line 402
    iget v1, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/lit8 v1, v1, 0x28

    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 404
    :cond_226
    iget v1, v0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mNavigationBarHeight:I

    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_234

    :cond_22b
    if-ne v1, v3, :cond_234

    .line 406
    iget v1, v0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mBottomBarHeight:I

    iput v1, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v2, 0x0

    .line 407
    iput v2, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 409
    :cond_234
    :goto_234
    iput v4, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 410
    iget v1, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->calculateShutterPanelPaddingHeight(I)I

    move-result v2

    .line 411
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isTabletDevice()Z

    move-result v1

    if-eqz v1, :cond_243

    const/4 v2, 0x0

    :cond_243
    if-ltz v2, :cond_250

    .line 415
    iget-object v1, v0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mActionsPanel:Landroid/view/View;

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_25a

    :cond_250
    const/4 v3, 0x0

    .line 417
    iget-object v1, v0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mActionsPanel:Landroid/view/View;

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 420
    :goto_25a
    sget v1, Lcom/transsion/camera/R$dimen;->intent_actions_expanded_cancel_margin_left:I

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/16 v1, 0x13

    .line 421
    iput v1, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 422
    sget v1, Lcom/transsion/camera/R$dimen;->intent_actions_expanded_confirm_margin_right:I

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/16 v1, 0x15

    .line 423
    iput v1, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 484
    :cond_272
    :goto_272
    iget-object v1, v0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mActionsPanel:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 485
    iget-object v1, v0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mActionCancelView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 486
    iget-object v0, v0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mActionConfirmView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected final calculateShutterPanelPaddingHeight(I)I
    .registers 3

    .line 564
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mShutterPanelPaddingHeight:I

    .line 565
    iget p0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mShutterButtonHeight:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    sub-int/2addr p1, p0

    return p1
.end method

.method public getReviewViewSize()Landroid/util/Size;
    .registers 3

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mReviewImageView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_16

    .line 159
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mReviewImageView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mReviewImageView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0

    .line 161
    :cond_16
    new-instance p0, Landroid/util/Size;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method public hideActionView()V
    .registers 3

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$UIHandler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 210
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$UIHandler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 211
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$UIHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public hideReviewView()Z
    .registers 3

    .line 228
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mIsReviewShown:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 229
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mIsReviewShown:Z

    .line 230
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$UIHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 231
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$UIHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 232
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$UIHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 p0, 0x1

    return p0

    :cond_1c
    return v1
.end method

.method public init(Landroid/view/ViewGroup;Lcom/transsion/camera/app/ui/IIntentReviewUI$IActionCallback;II)V
    .registers 7

    .line 90
    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mActionCallback:Lcom/transsion/camera/app/ui/IIntentReviewUI$IActionCallback;

    .line 91
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mParent:Landroid/view/ViewGroup;

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 93
    sget v0, Lcom/transsion/camera/R$layout;->intent_review_layout:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mIntentRootView:Landroid/view/ViewGroup;

    const/4 v0, 0x4

    .line 94
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mIntentRootView:Landroid/view/ViewGroup;

    sget v0, Lcom/transsion/camera/R$id;->intent_review_image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mReviewImageView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 96
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mIntentRootView:Landroid/view/ViewGroup;

    sget v0, Lcom/transsion/camera/R$id;->intent_actions_panel:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mActionsPanel:Landroid/view/View;

    .line 97
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mIntentRootView:Landroid/view/ViewGroup;

    sget v0, Lcom/transsion/camera/R$id;->intent_action_cancel:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mActionCancelView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 98
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mIntentRootView:Landroid/view/ViewGroup;

    sget v0, Lcom/transsion/camera/R$id;->done_button:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mActionConfirmView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_6c

    .line 100
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mIntentRootView:Landroid/view/ViewGroup;

    sget v0, Lcom/transsion/camera/R$id;->review_image_bottom_cover:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    if-eqz p2, :cond_6c

    .line 102
    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 104
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mIntentRootView:Landroid/view/ViewGroup;

    sget v0, Lcom/transsion/camera/R$id;->preview_bottom_cover_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mReviewImageBottomCover:Landroid/view/View;

    .line 107
    :cond_6c
    iget-object p2, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mIntentRootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 108
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mIntentRootView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mContext:Landroid/content/Context;

    .line 109
    iput p3, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mScreenFormType:I

    .line 110
    iput p4, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mOrientation:I

    return-void
.end method

.method public isShowing()Z
    .registers 1

    .line 153
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mIsReviewShown:Z

    return p0
.end method

.method public onAbsolutePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 5

    .line 241
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mPreviewRect:Landroid/graphics/Rect;

    .line 242
    sget-object v0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAbsolutePreviewRectChanged, preview view rect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", preview view width:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mPreviewRect:Landroid/graphics/Rect;

    .line 243
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", height:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 242
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 4

    .line 123
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mOrientation:I

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mActionConfirmView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 125
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 127
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mActionCancelView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    if-eqz v0, :cond_11

    .line 128
    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 130
    :cond_11
    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mIsReviewShown:Z

    if-eqz p1, :cond_1f

    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mScreenFormType:I

    const/4 v0, 0x7

    if-ne v0, p1, :cond_1f

    .line 131
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mOrientation:I

    invoke-direct {p0, v0, p1, v1}, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->updateIntentLayout(IIZ)V

    :cond_1f
    return-void
.end method

.method public onRelativePreviewRectChanged(Landroid/graphics/Rect;)V
    .registers 2

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 10

    .line 527
    sget-object p2, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScreenFormChanged  mScreenFormType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 528
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mScreenFormType:I

    .line 529
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mIsReviewShown:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isOnlySupportTBHoverUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_25

    return-void

    .line 533
    :cond_25
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mReviewImageView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 534
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mOrientation:I

    iget v1, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mScreenFormType:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->updateIntentLayout(IIZ)V

    .line 535
    new-instance v0, Landroid/util/Size;

    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getMainScreenSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getMainScreenSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 536
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getMainScreenSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getMainScreenSize()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {v0, v1, v3}, Landroid/util/Size;-><init>(II)V

    .line 537
    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mReviewImageView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 538
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, 0x1

    if-ne p1, v3, :cond_95

    .line 541
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mPictureH:I

    iget v3, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mPictureW:I

    if-le p1, v3, :cond_83

    .line 542
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result p1

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 543
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result p1

    int-to-double v3, p1

    iget-wide v5, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mRatio:D

    div-double/2addr v3, v5

    double-to-int p1, v3

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_a6

    .line 545
    :cond_83
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result p1

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 546
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-double v3, p1

    iget-wide v5, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mRatio:D

    mul-double/2addr v3, v5

    double-to-int p1, v3

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_a6

    .line 549
    :cond_95
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result p1

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 550
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-double v3, p1

    iget-wide v5, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mRatio:D

    mul-double/2addr v3, v5

    double-to-int p1, v3

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 553
    :goto_a6
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result p1

    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    .line 554
    invoke-virtual {v1, v2, p1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 556
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "layoutParams.width = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 557
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "layoutParams.height = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 558
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mRatio = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-double v3, v0

    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-double v5, v0

    div-double/2addr v3, v5

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 559
    iget-object p1, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mReviewImageView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 560
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mReviewImageView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setBottomBarHeight(I)V
    .registers 2

    .line 142
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mBottomBarHeight:I

    return-void
.end method

.method public setNavigationBarHeight(I)V
    .registers 2

    .line 137
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mNavigationBarHeight:I

    return-void
.end method

.method public setPanelPaddingValue(II)V
    .registers 3

    .line 147
    iput p1, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mShutterPanelPaddingHeight:I

    .line 148
    iput p2, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mShutterButtonHeight:I

    return-void
.end method

.method public showActionView()V
    .registers 3

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$UIHandler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 204
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$UIHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showReviewView(Landroid/graphics/Bitmap;)V
    .registers 4

    if-nez p1, :cond_a

    .line 217
    sget-object p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "showReviewView bitmap is null, return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_a
    const/4 v0, 0x1

    .line 220
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mIsReviewShown:Z

    .line 221
    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mOrientation:I

    iput v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mShowOrientation:I

    .line 222
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$UIHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 223
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$UIHandler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 115
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->hideReviewView()Z

    .line 116
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mIntentRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_15

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mParent:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mIntentRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_15
    return-void
.end method

.method public updateReviewViewState(Z)V
    .registers 3

    .line 516
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractIntentReviewUI;->mUIHandler:Lcom/transsion/camera/app/ui/AbstractIntentReviewUI$UIHandler;

    const/16 v0, 0x66

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
