.class public Lcom/transsion/camera/app/ui/widget/HorizontalOverScrollBounceEffectDecorator$AnimationAttributesHorizontal;
.super Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$AnimationAttributes;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/HorizontalOverScrollBounceEffectDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AnimationAttributesHorizontal"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$AnimationAttributes;-><init>()V

    .line 37
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$AnimationAttributes;->mProperty:Landroid/util/Property;

    return-void
.end method


# virtual methods
.method protected init(Landroid/view/View;)V
    .registers 3

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$AnimationAttributes;->mAbsOffset:F

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/transsion/camera/app/ui/widget/OverScrollBounceEffectDecoratorBase$AnimationAttributes;->mMaxOffset:F

    return-void
.end method
