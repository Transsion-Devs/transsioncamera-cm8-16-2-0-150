.class public Lcom/transsion/camera/feature/common/utils/Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Utils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertTrue(Z)V
    .registers 1

    if-eqz p0, :cond_3

    return-void

    .line 16
    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public static nextPowerOf2(I)I
    .registers 4

    if-lez p0, :cond_1a

    const/high16 v0, 0x40000000    # 2.0f

    if-gt p0, v0, :cond_1a

    add-int/lit8 p0, p0, -0x1

    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    return p0

    .line 25
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setOrientation(Landroid/view/View;IZ)V
    .registers 6

    if-nez p0, :cond_a

    .line 37
    const-string p0, "Utils"

    const-string p1, "[setOrientation] view is null, return"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 41
    :cond_a
    instance-of v0, p0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-eqz v0, :cond_14

    .line 42
    check-cast p0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    return-void

    .line 43
    :cond_14
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2b

    .line 44
    check-cast p0, Landroid/view/ViewGroup;

    .line 45
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1f
    if-ge v1, v0, :cond_2b

    .line 46
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/transsion/camera/feature/common/utils/Utils;->setOrientation(Landroid/view/View;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_2b
    return-void
.end method
