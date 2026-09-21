.class final Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AnimatorHelper"
.end annotation


# instance fields
.field mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

.field mAnimators:Ljava/util/List;

.field mMoviePathInterpolator:Landroid/view/animation/PathInterpolator;

.field mViewStore:Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;)V
    .registers 6

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;->mViewStore:Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;

    .line 164
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;->mAnimators:Ljava/util/List;

    .line 165
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 v0, 0x3e800000    # 0.25f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;->mMoviePathInterpolator:Landroid/view/animation/PathInterpolator;

    .line 166
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ea8f5c3    # 0.33f

    const v3, 0x3f28f5c3    # 0.66f

    invoke-direct {p1, v0, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method


# virtual methods
.method addMoveAnimator(Landroid/view/View;FFZ)V
    .registers 8

    .line 287
    invoke-static {}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addMoveAnimator isTranslateX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p4, :cond_2b

    .line 289
    new-array p4, v2, [F

    aput p2, p4, v1

    aput p3, p4, v0

    const-string/jumbo p2, "translationX"

    invoke-static {p1, p2, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_38

    .line 291
    :cond_2b
    new-array p4, v2, [F

    aput p2, p4, v1

    aput p3, p4, v0

    const-string/jumbo p2, "translationY"

    invoke-static {p1, p2, p4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    :goto_38
    const-wide/16 p2, 0x1c2

    .line 293
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 294
    iget-object p2, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;->mMoviePathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 295
    iget-object p0, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;->mAnimators:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addShowOrHideAnimatorSet(Landroid/view/View;FFFFLandroid/animation/AnimatorListenerAdapter;)V
    .registers 16

    cmpg-float v0, p2, p3

    if-gez v0, :cond_16

    .line 252
    invoke-static {}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->-$$Nest$sfgetsFirstEntry()Z

    move-result v1

    if-eqz v1, :cond_16

    const/high16 p0, 0x3f800000    # 1.0f

    .line 253
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    .line 254
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    .line 255
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    return-void

    .line 258
    :cond_16
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x2

    .line 260
    new-array v3, v2, [F

    const/4 v4, 0x0

    aput p2, v3, v4

    const/4 p2, 0x1

    aput p3, v3, p2

    const-string v5, "alpha"

    invoke-static {p1, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v5, 0xc8

    .line 261
    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 262
    iget-object v7, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 264
    new-array v7, v2, [F

    aput p4, v7, v4

    aput p5, v7, p2

    const-string v8, "scaleX"

    invoke-static {p1, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 265
    invoke-virtual {v7, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 266
    iget-object v8, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v7, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 268
    new-array v8, v2, [F

    aput p4, v8, v4

    aput p5, v8, p2

    const-string p4, "scaleY"

    invoke-static {p1, p4, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 269
    invoke-virtual {p1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 270
    iget-object p4, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;->mAlphaPathInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 p4, 0x3

    .line 272
    new-array p4, p4, [Landroid/animation/Animator;

    aput-object v3, p4, v4

    aput-object v7, p4, p2

    aput-object p1, p4, v2

    invoke-virtual {v1, p4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p6, :cond_6d

    .line 275
    invoke-virtual {v1, p6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_6d
    const/4 p1, 0x0

    cmpl-float p1, p3, p1

    if-nez p1, :cond_78

    .line 278
    iget-object p0, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;->mAnimators:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_78
    if-gez v0, :cond_84

    const-wide/16 p1, 0x64

    .line 280
    invoke-virtual {v1, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 281
    iget-object p0, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;->mAnimators:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_84
    return-void
.end method

.method animator(Ljava/lang/String;Landroid/view/View;Z)V
    .registers 17

    move/from16 v3, p3

    .line 182
    iget-object v4, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;->mViewStore:Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;->getValue(Ljava/lang/String;I)I

    move-result v4

    .line 183
    iget-object v6, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;->mViewStore:Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;

    const/4 v7, 0x1

    invoke-virtual {v6, p1, v7}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;->getValue(Ljava/lang/String;I)I

    move-result v6

    .line 184
    iget-object v8, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;->mViewStore:Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;

    const/4 v9, 0x2

    invoke-virtual {v8, p1, v9}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;->getValue(Ljava/lang/String;I)I

    move-result v8

    .line 185
    iget-object v10, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;->mViewStore:Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;

    const/4 v11, 0x3

    invoke-virtual {v10, p1, v11}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;->getValue(Ljava/lang/String;I)I

    move-result v1

    sub-int v10, v6, v4

    .line 186
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    if-le v10, v9, :cond_27

    move v5, v7

    .line 187
    :cond_27
    invoke-static {}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "animator isTranslateX: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", curTranslate: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v10, 0x0

    if-eqz v3, :cond_52

    int-to-float v3, v6

    .line 189
    invoke-virtual {p2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 190
    invoke-virtual {p2, v10}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_59

    .line 192
    :cond_52
    invoke-virtual {p2, v10}, Landroid/view/View;->setTranslationX(F)V

    int-to-float v3, v6

    .line 193
    invoke-virtual {p2, v3}, Landroid/view/View;->setTranslationY(F)V

    :goto_59
    if-ne v8, v9, :cond_6e

    if-ne v1, v7, :cond_6e

    .line 197
    invoke-virtual {p2, v10}, Landroid/view/View;->setAlpha(F)V

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    move-object v0, p0

    move-object v1, p2

    .line 198
    invoke-virtual/range {v0 .. v6}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;->addShowOrHideAnimatorSet(Landroid/view/View;FFFFLandroid/animation/AnimatorListenerAdapter;)V

    return-void

    :cond_6e
    if-ne v8, v7, :cond_7a

    if-ne v1, v7, :cond_7a

    if-eqz v5, :cond_8b

    int-to-float v1, v4

    int-to-float v3, v6

    .line 202
    invoke-virtual {p0, p2, v1, v3, v7}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;->addMoveAnimator(Landroid/view/View;FFZ)V

    return-void

    :cond_7a
    if-ne v8, v7, :cond_8b

    if-ne v1, v9, :cond_8b

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p2

    .line 205
    invoke-virtual/range {v0 .. v6}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;->addShowOrHideAnimatorSet(Landroid/view/View;FFFFLandroid/animation/AnimatorListenerAdapter;)V

    :cond_8b
    return-void
.end method

.method animatorEnd()V
    .registers 2

    .line 243
    iget-object v0, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;->mAnimators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_15

    .line 244
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 245
    iget-object p0, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;->mAnimators:Ljava/util/List;

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 246
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_15
    return-void
.end method

.method animatorStart()V
    .registers 4

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;->mAnimators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_12

    .line 171
    invoke-static {}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "mAnimators is empty"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 174
    :cond_12
    iget-object v0, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;->mAnimators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_19
    if-ge v1, v0, :cond_29

    .line 175
    iget-object v2, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;->mAnimators:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 176
    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 178
    :cond_29
    iget-object p0, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;->mAnimators:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method withoutAnimator(Ljava/lang/String;Landroid/view/View;Z)V
    .registers 11

    .line 210
    iget-object v0, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;->mViewStore:Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;->getValue(Ljava/lang/String;I)I

    move-result v0

    .line 211
    iget-object v2, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;->mViewStore:Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;->getValue(Ljava/lang/String;I)I

    move-result v2

    .line 212
    iget-object v4, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;->mViewStore:Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;

    const/4 v5, 0x2

    invoke-virtual {v4, p1, v5}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;->getValue(Ljava/lang/String;I)I

    move-result v4

    .line 213
    iget-object p0, p0, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$AnimatorHelper;->mViewStore:Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;

    const/4 v6, 0x3

    invoke-virtual {p0, p1, v6}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper$ViewStore;->getValue(Ljava/lang/String;I)I

    move-result p0

    sub-int p1, v2, v0

    .line 214
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-le p1, v5, :cond_25

    move v1, v3

    .line 215
    :cond_25
    invoke-static {}, Lcom/transsion/camera/app/ui/popsetting/PopSettingUpdateHelper;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "withoutAnimator isTranslateX: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", curTranslate: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-eqz p3, :cond_51

    int-to-float v0, v2

    .line 217
    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 218
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_58

    .line 220
    :cond_51
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    int-to-float v0, v2

    .line 221
    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    :goto_58
    if-ne v4, v5, :cond_62

    if-ne p0, v3, :cond_62

    const/high16 p0, 0x3f800000    # 1.0f

    .line 225
    invoke-virtual {p2, p0}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_62
    if-ne v4, v3, :cond_7a

    if-ne p0, v3, :cond_7a

    if-eqz v1, :cond_81

    if-eqz p3, :cond_72

    int-to-float p0, v2

    .line 230
    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationX(F)V

    .line 231
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 233
    :cond_72
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    int-to-float p0, v2

    .line 234
    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void

    :cond_7a
    if-ne v4, v3, :cond_81

    if-ne p0, v5, :cond_81

    .line 238
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_81
    return-void
.end method
