.class final Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$AnimatorHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AnimatorHelper"
.end annotation


# static fields
.field static final ANIMATION_DURATION:I = 0xc8

.field static final PATH_INTERPOLATOR_X:F = 0.25f

.field static final PATH_INTERPOLATOR_Y1:F = 0.1f

.field static final PATH_INTERPOLATOR_Y2:F = 1.0f

.field static final PROPERTY_NAME_ALPHA:Ljava/lang/String; = "alpha"

.field static final PROPERTY_NAME_TRANSLATION_X:Ljava/lang/String; = "translationX"

.field static final PROPERTY_NAME_TRANSLATION_Y:Ljava/lang/String; = "translationY"


# instance fields
.field mAnimators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mPathInterpolator:Landroid/view/animation/PathInterpolator;

.field mViewStore:Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;)V
    .registers 5

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$AnimatorHelper;->mViewStore:Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;

    .line 190
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$AnimatorHelper;->mAnimators:Ljava/util/List;

    .line 191
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-direct {p1, v2, v0, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$AnimatorHelper;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method


# virtual methods
.method addAlphaAnimator(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)V
    .registers 7

    const/4 v0, 0x2

    .line 275
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    const-string p2, "alpha"

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 p2, 0xc8

    .line 276
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 277
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$AnimatorHelper;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p4, :cond_1e

    .line 279
    invoke-virtual {p1, p4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 281
    :cond_1e
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$AnimatorHelper;->mAnimators:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addMoveAnimator(Landroid/view/View;FF)V
    .registers 6

    const/4 v0, 0x2

    .line 285
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    const-string/jumbo p2, "translationX"

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 p2, 0xc8

    .line 286
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 287
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$AnimatorHelper;->mPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 288
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$AnimatorHelper;->mAnimators:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method animator(Ljava/lang/String;Landroid/view/View;Z)V
    .registers 12

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$AnimatorHelper;->mViewStore:Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;->getValue(Ljava/lang/String;I)I

    move-result v0

    .line 210
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$AnimatorHelper;->mViewStore:Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;->getValue(Ljava/lang/String;I)I

    move-result v2

    .line 211
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$AnimatorHelper;->mViewStore:Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;

    const/4 v5, 0x2

    invoke-virtual {v4, p1, v5}, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;->getValue(Ljava/lang/String;I)I

    move-result v4

    .line 212
    iget-object v6, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$AnimatorHelper;->mViewStore:Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;

    const/4 v7, 0x3

    invoke-virtual {v6, p1, v7}, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;->getValue(Ljava/lang/String;I)I

    move-result p1

    sub-int v6, v2, v0

    .line 213
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v6, v5, :cond_25

    move v1, v3

    :cond_25
    const/4 v6, 0x0

    if-eqz p3, :cond_30

    int-to-float p3, v2

    .line 215
    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationX(F)V

    .line 216
    invoke-virtual {p2, v6}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_37

    .line 218
    :cond_30
    invoke-virtual {p2, v6}, Landroid/view/View;->setTranslationX(F)V

    int-to-float p3, v2

    .line 219
    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    :goto_37
    const/4 p3, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    if-ne v4, v5, :cond_42

    if-ne p1, v3, :cond_42

    .line 223
    invoke-virtual {p0, p2, v6, v7, p3}, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$AnimatorHelper;->addAlphaAnimator(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)V

    return-void

    :cond_42
    if-ne v4, v3, :cond_4e

    if-ne p1, v3, :cond_4e

    if-eqz v1, :cond_55

    int-to-float p1, v0

    int-to-float p3, v2

    .line 227
    invoke-virtual {p0, p2, p1, p3}, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$AnimatorHelper;->addMoveAnimator(Landroid/view/View;FF)V

    return-void

    :cond_4e
    if-ne v4, v3, :cond_55

    if-ne p1, v5, :cond_55

    .line 230
    invoke-virtual {p0, p2, v7, v6, p3}, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$AnimatorHelper;->addAlphaAnimator(Landroid/view/View;FFLandroid/animation/AnimatorListenerAdapter;)V

    :cond_55
    return-void
.end method

.method animatorEnd()V
    .registers 2

    .line 267
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$AnimatorHelper;->mAnimators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_15

    .line 268
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 269
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$AnimatorHelper;->mAnimators:Ljava/util/List;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 270
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_15
    return-void
.end method

.method animatorStart()V
    .registers 5

    .line 195
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$AnimatorHelper;->mAnimators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_12

    .line 196
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "mAnimators is empty"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 199
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$AnimatorHelper;->mAnimators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_19
    if-ge v1, v0, :cond_2f

    .line 200
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$AnimatorHelper;->mAnimators:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 201
    invoke-virtual {v2}, Landroid/animation/Animator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 202
    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 205
    :cond_2f
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$AnimatorHelper;->mAnimators:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method withoutAnimator(Ljava/lang/String;Landroid/view/View;Z)V
    .registers 11

    .line 235
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$AnimatorHelper;->mViewStore:Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;->getValue(Ljava/lang/String;I)I

    move-result v0

    .line 236
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$AnimatorHelper;->mViewStore:Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;->getValue(Ljava/lang/String;I)I

    move-result v2

    .line 237
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$AnimatorHelper;->mViewStore:Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;

    const/4 v5, 0x2

    invoke-virtual {v4, p1, v5}, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;->getValue(Ljava/lang/String;I)I

    move-result v4

    .line 238
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$AnimatorHelper;->mViewStore:Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;

    const/4 v6, 0x3

    invoke-virtual {p0, p1, v6}, Lcom/transsion/camera/feature/mode/vlog/helper/VlogTopBarUpdateHelper$ViewStore;->getValue(Ljava/lang/String;I)I

    move-result p0

    sub-int p1, v2, v0

    .line 239
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-le p1, v5, :cond_25

    move v1, v3

    :cond_25
    const/4 p1, 0x0

    if-eqz p3, :cond_30

    int-to-float v0, v2

    .line 241
    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 242
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_37

    .line 244
    :cond_30
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    int-to-float v0, v2

    .line 245
    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    :goto_37
    if-ne v4, v5, :cond_41

    if-ne p0, v3, :cond_41

    const/high16 p0, 0x3f800000    # 1.0f

    .line 249
    invoke-virtual {p2, p0}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_41
    if-ne v4, v3, :cond_59

    if-ne p0, v3, :cond_59

    if-eqz v1, :cond_60

    if-eqz p3, :cond_51

    int-to-float p0, v2

    .line 254
    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationX(F)V

    .line 255
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 257
    :cond_51
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    int-to-float p0, v2

    .line 258
    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void

    :cond_59
    if-ne v4, v3, :cond_60

    if-ne p0, v5, :cond_60

    .line 262
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_60
    return-void
.end method
