.class Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView$1;
.super Landroid/transition/Visibility;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->show(Landroid/view/View;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView$1;->this$0:Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;

    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5

    .line 156
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView$1;->this$0:Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->-$$Nest$fgetmViewLayout(Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;)Landroid/view/View;

    move-result-object p0

    sget-object p1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 p2, 0x2

    new-array p3, p2, [F

    fill-array-data p3, :array_36

    invoke-static {p1, p3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    sget-object p3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array p4, p2, [F

    fill-array-data p4, :array_3e

    invoke-static {p3, p4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    sget-object p4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array p2, p2, [F

    fill-array-data p2, :array_46

    invoke-static {p4, p2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    filled-new-array {p1, p3, p2}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 p1, 0xfa

    .line 157
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0

    :array_36
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

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
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5

    .line 150
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView$1;->this$0:Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;->-$$Nest$fgetmViewLayout(Lcom/transsion/camera/app/ui/widget/RecommendPopupTipsView;)Landroid/view/View;

    move-result-object p0

    sget-object p1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 p2, 0x2

    new-array p3, p2, [F

    fill-array-data p3, :array_36

    invoke-static {p1, p3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    sget-object p3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array p4, p2, [F

    fill-array-data p4, :array_3e

    invoke-static {p3, p4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    sget-object p4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array p2, p2, [F

    fill-array-data p2, :array_46

    invoke-static {p4, p2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    filled-new-array {p1, p3, p2}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 p1, 0xfa

    .line 151
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0

    :array_36
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

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
.end method
