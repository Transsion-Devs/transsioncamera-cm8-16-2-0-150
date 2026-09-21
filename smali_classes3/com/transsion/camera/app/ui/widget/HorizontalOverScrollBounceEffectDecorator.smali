.class public Lcom/transsion/camera/app/ui/widget/HorizontalOverScrollBounceEffectDecorator;
.super Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/widget/HorizontalOverScrollBounceEffectDecorator$ViewAdapter;,
        Lcom/transsion/camera/app/ui/widget/HorizontalOverScrollBounceEffectDecorator$MotionAttributesHorizontal;,
        Lcom/transsion/camera/app/ui/widget/HorizontalOverScrollBounceEffectDecorator$AnimationAttributesHorizontal;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/widget/HorizontalScrollView;)V
    .registers 5

    .line 78
    new-instance v0, Lcom/transsion/camera/app/ui/widget/HorizontalOverScrollBounceEffectDecorator$ViewAdapter;

    invoke-direct {v0, p1}, Lcom/transsion/camera/app/ui/widget/HorizontalOverScrollBounceEffectDecorator$ViewAdapter;-><init>(Landroid/widget/HorizontalScrollView;)V

    const/high16 p1, 0x40400000    # 3.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40000000    # -2.0f

    invoke-direct {p0, v0, v2, p1, v1}, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase;-><init>(Lcom/transsion/camera/app/ui/widget/IOverScrollDecoratorAdapter;FFF)V

    return-void
.end method


# virtual methods
.method protected createAnimationAttributes()Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$AnimationAttributes;
    .registers 1

    .line 89
    new-instance p0, Lcom/transsion/camera/app/ui/widget/HorizontalOverScrollBounceEffectDecorator$AnimationAttributesHorizontal;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/HorizontalOverScrollBounceEffectDecorator$AnimationAttributesHorizontal;-><init>()V

    return-object p0
.end method

.method protected createMotionAttributes()Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$MotionAttributes;
    .registers 1

    .line 84
    new-instance p0, Lcom/transsion/camera/app/ui/widget/HorizontalOverScrollBounceEffectDecorator$MotionAttributesHorizontal;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/HorizontalOverScrollBounceEffectDecorator$MotionAttributesHorizontal;-><init>()V

    return-object p0
.end method

.method protected translateView(Landroid/view/View;F)V
    .registers 3

    .line 94
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method protected translateViewAndEvent(Landroid/view/View;FLandroid/view/MotionEvent;)V
    .registers 4

    .line 99
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    const/4 p0, 0x0

    .line 100
    invoke-virtual {p3, p0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p0

    sub-float/2addr p2, p0

    const/4 p0, 0x0

    invoke-virtual {p3, p2, p0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return-void
.end method
