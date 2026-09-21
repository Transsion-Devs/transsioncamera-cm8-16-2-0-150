.class public Lcom/transsion/widgetslib/util/OSTouchBgHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mAlpha:I

.field private mAnimDuration:I

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mBackground:Landroid/graphics/drawable/LayerDrawable;

.field protected final mContext:Landroid/content/Context;

.field private mDrawableNormal:Landroid/graphics/drawable/Drawable;

.field private mDrawablePress:Landroid/graphics/drawable/Drawable;

.field private mIsAlwaysInRect:Z

.field protected mIsOpenNewPage:Z

.field protected mNewPageBackThenExecAnim:Z

.field private final mRect:Landroid/graphics/Rect;

.field protected mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/util/OSTouchBgHelper;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    .line 33
    iput v0, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mAlpha:I

    const/16 v0, 0x64

    .line 35
    iput v0, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mAnimDuration:I

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mRect:Landroid/graphics/Rect;

    .line 46
    iput-object p1, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/util/OSTouchBgHelper;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mDrawablePress:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method


# virtual methods
.method public cancelAnim()V
    .registers 1

    .line 194
    iget-object p0, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_7

    .line 195
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    return-void
.end method

.method public getAnimDuration()I
    .registers 1

    .line 212
    iget p0, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mAnimDuration:I

    return p0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mBackground:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mDrawablePress:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_9

    goto :goto_10

    :cond_9
    const/4 v1, 0x0

    .line 88
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 90
    iget-object p0, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mBackground:Landroid/graphics/drawable/LayerDrawable;

    return-object p0

    :cond_10
    :goto_10
    const/4 p0, 0x0

    return-object p0
.end method

.method public isOpenNewPage()Z
    .registers 1

    .line 204
    iget-boolean p0, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mIsOpenNewPage:Z

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .registers 5

    .line 94
    iget-object v0, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mDrawablePress:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    goto :goto_63

    .line 98
    :cond_5
    iget-object v0, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mView:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 99
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_63

    .line 104
    :cond_10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4e

    if-eq v0, v1, :cond_3b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_20

    const/4 p1, 0x3

    if-eq v0, p1, :cond_3b

    goto :goto_63

    .line 117
    :cond_20
    iget-object v0, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mView:Landroid/view/View;

    if-eqz v0, :cond_63

    .line 118
    iget-boolean v0, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mIsAlwaysInRect:Z

    if-eqz v0, :cond_63

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    .line 121
    iget-object v1, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mRect:Landroid/graphics/Rect;

    float-to-int v0, v0

    float-to-int p1, p1

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mIsAlwaysInRect:Z

    return-void

    .line 128
    :cond_3b
    iget-boolean p1, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mIsOpenNewPage:Z

    if-eqz p1, :cond_48

    if-ne v0, v1, :cond_48

    iget-boolean p1, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mIsAlwaysInRect:Z

    if-eqz p1, :cond_48

    .line 129
    iput-boolean v1, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mNewPageBackThenExecAnim:Z

    return-void

    :cond_48
    const-wide/16 v0, 0x64

    .line 133
    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->playTouchAnim(J)V

    return-void

    .line 108
    :cond_4e
    invoke-virtual {p0}, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->cancelAnim()V

    .line 109
    iget-object p1, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mDrawablePress:Landroid/graphics/drawable/Drawable;

    const/16 v0, 0xff

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 111
    iput-boolean v1, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mIsAlwaysInRect:Z

    .line 112
    iget-object p1, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mView:Landroid/view/View;

    if-eqz p1, :cond_63

    .line 113
    iget-object p0, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    :cond_63
    :goto_63
    return-void
.end method

.method protected playTouchAnim(J)V
    .registers 6

    .line 141
    iget-object v0, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mDrawablePress:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    goto :goto_2e

    .line 145
    :cond_5
    iget-object v0, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-nez v0, :cond_26

    .line 146
    filled-new-array {v1, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mAnimator:Landroid/animation/ValueAnimator;

    .line 147
    new-instance v2, Lcom/transsion/widgetslib/util/OSTouchBgHelper$1;

    invoke-direct {v2, p0}, Lcom/transsion/widgetslib/util/OSTouchBgHelper$1;-><init>(Lcom/transsion/widgetslib/util/OSTouchBgHelper;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 156
    iget-object v0, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/transsion/widgetslib/util/OSTouchBgHelper$2;

    invoke-direct {v2, p0}, Lcom/transsion/widgetslib/util/OSTouchBgHelper$2;-><init>(Lcom/transsion/widgetslib/util/OSTouchBgHelper;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 164
    :cond_26
    iget-object v0, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2f

    :goto_2e
    return-void

    .line 168
    :cond_2f
    iget-object v0, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mDrawablePress:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 170
    iget-object v0, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mAnimator:Landroid/animation/ValueAnimator;

    filled-new-array {v2, v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 171
    iget-object v0, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 172
    iget-object p1, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mAnimator:Landroid/animation/ValueAnimator;

    iget p2, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mAnimDuration:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 173
    iget-object p0, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public resetTouchAnimWhenUnable()V
    .registers 3

    .line 183
    iget-object v0, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mDrawablePress:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_22

    .line 184
    iget-object v0, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 185
    iget-object p0, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void

    .line 187
    :cond_1a
    iget-object v0, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mDrawablePress:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 188
    iput-boolean v1, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mNewPageBackThenExecAnim:Z

    :cond_22
    return-void
.end method

.method public restoreTouchAnim()V
    .registers 3

    .line 177
    iget-boolean v0, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mIsOpenNewPage:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mNewPageBackThenExecAnim:Z

    if-eqz v0, :cond_d

    const-wide/16 v0, 0x96

    .line 178
    invoke-virtual {p0, v0, v1}, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->playTouchAnim(J)V

    :cond_d
    return-void
.end method

.method public setAnimDuration(I)V
    .registers 2

    .line 216
    iput p1, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mAnimDuration:I

    return-void
.end method

.method public setDrawableNormal(I)V
    .registers 3

    .line 63
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->setDrawableNormal(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDrawableNormal(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 51
    iput-object p1, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mDrawableNormal:Landroid/graphics/drawable/Drawable;

    .line 53
    iget-object v0, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mBackground:Landroid/graphics/drawable/LayerDrawable;

    if-nez v0, :cond_1a

    .line 54
    iget-object p1, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mDrawablePress:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_19

    .line 55
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    iget-object v0, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mDrawableNormal:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mDrawablePress:Landroid/graphics/drawable/Drawable;

    filled-new-array {v0, v1}, [Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mBackground:Landroid/graphics/drawable/LayerDrawable;

    :cond_19
    return-void

    :cond_1a
    const/4 p0, 0x0

    .line 58
    invoke-virtual {v0, p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDrawablePress(I)V
    .registers 3

    .line 80
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->setDrawablePress(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDrawablePress(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 67
    iput-object p1, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mDrawablePress:Landroid/graphics/drawable/Drawable;

    .line 70
    iget-object v0, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mBackground:Landroid/graphics/drawable/LayerDrawable;

    if-nez v0, :cond_1a

    .line 71
    iget-object p1, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mDrawableNormal:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_19

    .line 72
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    iget-object v0, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mDrawableNormal:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mDrawablePress:Landroid/graphics/drawable/Drawable;

    filled-new-array {v0, v1}, [Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mBackground:Landroid/graphics/drawable/LayerDrawable;

    :cond_19
    return-void

    :cond_1a
    const/4 p0, 0x1

    .line 75
    invoke-virtual {v0, p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOpenNewPage(Z)V
    .registers 2

    .line 200
    iput-boolean p1, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mIsOpenNewPage:Z

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 2

    .line 208
    iput-object p1, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mView:Landroid/view/View;

    return-void
.end method
