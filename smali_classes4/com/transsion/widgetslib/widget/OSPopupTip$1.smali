.class Lcom/transsion/widgetslib/widget/OSPopupTip$1;
.super Landroid/transition/Visibility;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/widget/OSPopupTip;->show(Landroid/view/View;Ljava/lang/String;III)Landroid/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$layout:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .registers 3

    .line 170
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$1;->val$layout:Landroid/view/View;

    iput-object p2, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 6

    .line 183
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$1;->val$layout:Landroid/view/View;

    sget-object p2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 p3, 0x2

    new-array p4, p3, [F

    fill-array-data p4, :array_3e

    invoke-static {p2, p4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    sget-object p4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v0, p3, [F

    fill-array-data v0, :array_46

    .line 184
    invoke-static {p4, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p4

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array p3, p3, [F

    fill-array-data p3, :array_4e

    invoke-static {v0, p3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    filled-new-array {p2, p4, p3}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    .line 183
    invoke-static {p1, p2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 p2, 0xfa

    .line 185
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 186
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$1;->val$context:Landroid/content/Context;

    sget p2, Lcom/transsion/widgetslib/R$anim;->os_popup_tip_interpolator:I

    invoke-static {p0, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1

    nop

    :array_3e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_46
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4e
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 6

    .line 174
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$1;->val$layout:Landroid/view/View;

    sget-object p2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 p3, 0x2

    new-array p4, p3, [F

    fill-array-data p4, :array_3e

    invoke-static {p2, p4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    sget-object p4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v0, p3, [F

    fill-array-data v0, :array_46

    .line 175
    invoke-static {p4, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p4

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array p3, p3, [F

    fill-array-data p3, :array_4e

    invoke-static {v0, p3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    filled-new-array {p2, p4, p3}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    .line 174
    invoke-static {p1, p2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 p2, 0xfa

    .line 176
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 177
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/OSPopupTip$1;->val$context:Landroid/content/Context;

    sget p2, Lcom/transsion/widgetslib/R$anim;->os_popup_tip_interpolator:I

    invoke-static {p0, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1

    nop

    :array_3e
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_46
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_4e
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
