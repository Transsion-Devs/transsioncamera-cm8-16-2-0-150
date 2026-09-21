.class public Lcom/transsion/camera/app/ui/widget/RotateLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/IRotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/widget/RotateLayout$OnSizeChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mChild:Landroid/view/View;

.field private mOrientation:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 12
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "RotateLayout"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x106000d

    .line 23
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method public getOrientation()I
    .registers 1

    .line 134
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/RotateLayout;->mOrientation:I

    return p0
.end method

.method public onFinishInflate()V
    .registers 3

    .line 37
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/RotateLayout;->mChild:Landroid/view/View;

    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 45
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/RotateLayout;->mChild:Landroid/view/View;

    if-nez p1, :cond_5

    goto :goto_18

    :cond_5
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 50
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/RotateLayout;->mOrientation:I

    const/4 p2, 0x0

    if-eqz p0, :cond_1d

    const/16 p3, 0x5a

    if-eq p0, p3, :cond_19

    const/16 p3, 0xb4

    if-eq p0, p3, :cond_1d

    const/16 p3, 0x10e

    if-eq p0, p3, :cond_19

    :goto_18
    return-void

    .line 57
    :cond_19
    invoke-virtual {p1, p2, p2, p5, p4}, Landroid/view/View;->layout(IIII)V

    return-void

    .line 53
    :cond_1d
    invoke-virtual {p1, p2, p2, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 9

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/RotateLayout;->mChild:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_9

    .line 69
    invoke-virtual {p0, v1, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    .line 72
    :cond_9
    iget v2, p0, Lcom/transsion/camera/app/ui/widget/RotateLayout;->mOrientation:I

    const/16 v3, 0x10e

    const/16 v4, 0xb4

    const/16 v5, 0x5a

    if-eqz v2, :cond_2b

    if-eq v2, v5, :cond_1b

    if-eq v2, v4, :cond_2b

    if-eq v2, v3, :cond_1b

    move p1, v1

    goto :goto_3a

    .line 81
    :cond_1b
    invoke-virtual {p0, v0, p2, p1}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 82
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 83
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    goto :goto_3a

    .line 75
    :cond_2b
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 76
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 77
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 88
    :goto_3a
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 90
    iget p2, p0, Lcom/transsion/camera/app/ui/widget/RotateLayout;->mOrientation:I

    const/4 v0, 0x0

    if-eqz p2, :cond_6e

    if-eq p2, v5, :cond_62

    if-eq p2, v4, :cond_55

    if-eq p2, v3, :cond_49

    goto :goto_78

    .line 104
    :cond_49
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/RotateLayout;->mChild:Landroid/view/View;

    int-to-float p2, v1

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 105
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_78

    .line 100
    :cond_55
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v0, v1

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 101
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/RotateLayout;->mChild:Landroid/view/View;

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_78

    .line 96
    :cond_62
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 97
    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/RotateLayout;->mChild:Landroid/view/View;

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_78

    .line 92
    :cond_6e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 93
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 110
    :goto_78
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/RotateLayout;->mChild:Landroid/view/View;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/RotateLayout;->mOrientation:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    return-void
.end method

.method public setOnSizeChangedListener(Lcom/transsion/camera/app/ui/widget/RotateLayout$OnSizeChangedListener;)V
    .registers 2

    return-void
.end method

.method public setOrientation(IZ)V
    .registers 4

    if-eqz p1, :cond_25

    const/16 p2, 0x5a

    if-eq p1, p2, :cond_25

    const/16 p2, 0xb4

    if-eq p1, p2, :cond_25

    const/16 p2, 0x10e

    if-eq p1, p2, :cond_25

    .line 122
    sget-object p0, Lcom/transsion/camera/app/ui/widget/RotateLayout;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setOrientation : Not support orientation = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 125
    :cond_25
    rem-int/lit16 p1, p1, 0x168

    .line 126
    iget p2, p0, Lcom/transsion/camera/app/ui/widget/RotateLayout;->mOrientation:I

    if-ne p2, p1, :cond_2c

    return-void

    .line 129
    :cond_2c
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/RotateLayout;->mOrientation:I

    .line 130
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
