.class public Lcom/transsion/camera/app/ui/anim/AnimationManager5;
.super Lcom/transsion/camera/app/ui/anim/AnimationManager;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$UnionValueAnimatorUpdateListener;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mPreviewMoveDistance:Ljava/util/function/ToIntFunction;

.field private final mPreviewTranslationListener:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;


# direct methods
.method public static synthetic $r8$lambda$7JRC4r5twBFFambOfD6-mz6lIcE(Lcom/transsion/camera/app/ui/anim/AnimationManager5;Ljava/util/function/ToIntFunction;)Ljava/lang/Integer;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager5;->lambda$getTranslationPreviewRect$2(Ljava/util/function/ToIntFunction;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lbA923dUPNy2SecIKqskpF1lCbc(Lcom/transsion/camera/app/ui/anim/AnimationManager5;Ljava/lang/Integer;ZZ)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/anim/AnimationManager5;->lambda$new$0(Ljava/lang/Integer;ZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 18
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AnimMgr5"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/transsion/camera/app/ui/ScreenManager;)V
    .registers 3

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/anim/AnimationManager;-><init>(Landroid/view/View;Lcom/transsion/camera/app/ui/ScreenManager;)V

    .line 20
    new-instance p1, Lcom/transsion/camera/app/ui/anim/AnimationManager5$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager5$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/anim/AnimationManager5;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager5;->mPreviewTranslationListener:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;

    return-void
.end method

.method private getTranslationPreviewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 7

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager5;->mPreviewMoveDistance:Ljava/util/function/ToIntFunction;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/anim/AnimationManager5$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager5$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/anim/AnimationManager5;)V

    .line 86
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    .line 87
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 88
    sget-object v0, Lcom/transsion/camera/app/ui/anim/AnimationManager5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTranslationPreviewRect: previewRect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", distance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 89
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lez v1, :cond_66

    .line 90
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, p0

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p0

    invoke-direct {v1, v2, v3, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 92
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getTranslationPreviewRect: rect = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    :cond_66
    return-object p1
.end method

.method private synthetic lambda$getTranslationPreviewRect$2(Ljava/util/function/ToIntFunction;)Ljava/lang/Integer;
    .registers 2

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mCurrentMode:Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/Integer;ZZ)V
    .registers 7

    if-eqz p1, :cond_69

    .line 21
    iget-object p2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    if-nez p2, :cond_7

    goto :goto_69

    .line 25
    :cond_7
    sget-object p2, Lcom/transsion/camera/app/ui/anim/AnimationManager5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnimationUpdate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p3, :cond_40

    .line 27
    iget-object p2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    iget-object p3, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget p3, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr p3, v1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 28
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr v1, p1

    .line 27
    invoke-virtual {p2, v0, p3, v2, v1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setPreviewRect(IIII)V

    .line 29
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->requestLayout()V

    return-void

    .line 31
    :cond_40
    iget-object p2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->isRectAnimatorStarted()Z

    move-result p2

    if-nez p2, :cond_68

    .line 32
    iget-object p2, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    iget-object p3, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewRect:Landroid/graphics/Rect;

    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget p3, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr p3, v1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 33
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr v1, p1

    .line 32
    invoke-virtual {p2, v0, p3, v2, v1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->setPreviewRect(IIII)V

    .line 34
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/view/SwitchAnimView;->requestLayout()V

    :cond_68
    return-void

    .line 22
    :cond_69
    :goto_69
    sget-object p2, Lcom/transsion/camera/app/ui/anim/AnimationManager5;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAnimationUpdate: translation = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mSwitchAnimView = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager;->mSwitchAnimView:Lcom/transsion/camera/app/ui/view/SwitchAnimView;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;)Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;
    .registers 3

    .line 102
    sget-object v0, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;->UI5_ANIM_PREVIEW_TRANSLATION:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;

    if-ne p1, v0, :cond_7

    .line 103
    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager5;->mPreviewTranslationListener:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getPreviewRectChangeAnimDuration()J
    .registers 3

    const-wide/16 v0, 0x1c2

    return-wide v0
.end method

.method public setPreviewMoveDistance(Ljava/util/function/ToIntFunction;)V
    .registers 2

    .line 69
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->setPreviewMoveDistance(Ljava/util/function/ToIntFunction;)V

    .line 70
    iput-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager5;->mPreviewMoveDistance:Ljava/util/function/ToIntFunction;

    return-void
.end method

.method public unInit()V
    .registers 4

    .line 58
    sget-object v0, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;->UI5_ANIM_PREVIEW_TRANSLATION:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;

    .line 59
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager5;->getAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;)Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 61
    invoke-static {}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;->getInstance()Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;

    move-result-object v2

    .line 62
    invoke-virtual {v2, v0, v1}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;->unregisterAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;)V

    .line 64
    :cond_f
    invoke-super {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->unInit()V

    return-void
.end method

.method protected updateTargetRect(Landroid/graphics/Rect;ZZ)V
    .registers 4

    .line 45
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager5;->getTranslationPreviewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->updateTargetRect(Landroid/graphics/Rect;ZZ)V

    if-eqz p3, :cond_18

    .line 47
    sget-object p1, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;->UI5_ANIM_PREVIEW_TRANSLATION:Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;

    .line 48
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/anim/AnimationManager5;->getAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;)Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 50
    invoke-static {}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;->getInstance()Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;

    move-result-object p2

    .line 51
    invoke-virtual {p2, p1, p0}, Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder;->registerAnimatorUpdateListener(Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimationDescription;Lcom/transsion/camera/app/common/ui/anim/UnionAnimatorHolder$AnimatorUpdateListener;)V

    :cond_18
    return-void
.end method
