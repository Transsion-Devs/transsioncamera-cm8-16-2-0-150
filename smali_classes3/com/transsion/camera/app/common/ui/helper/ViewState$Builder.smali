.class public Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/ui/helper/ViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAlpha:F

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundTint:Landroid/content/res/ColorStateList;

.field private mVisibility:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_6

    return-void

    .line 42
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;->mAlpha:F

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;->mVisibility:I

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;->mBackgroundTint:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/ui/helper/ViewState;)V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_6

    return-void

    .line 52
    :cond_6
    invoke-static {p1}, Lcom/transsion/camera/app/common/ui/helper/ViewState;->-$$Nest$fgetmAlpha(Lcom/transsion/camera/app/common/ui/helper/ViewState;)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;->mAlpha:F

    .line 53
    invoke-static {p1}, Lcom/transsion/camera/app/common/ui/helper/ViewState;->-$$Nest$fgetmBackground(Lcom/transsion/camera/app/common/ui/helper/ViewState;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 54
    invoke-static {p1}, Lcom/transsion/camera/app/common/ui/helper/ViewState;->-$$Nest$fgetmVisibility(Lcom/transsion/camera/app/common/ui/helper/ViewState;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;->mVisibility:I

    return-void
.end method


# virtual methods
.method public build()Lcom/transsion/camera/app/common/ui/helper/ViewState;
    .registers 7

    .line 106
    new-instance v0, Lcom/transsion/camera/app/common/ui/helper/ViewState;

    iget v1, p0, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;->mVisibility:I

    iget v2, p0, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;->mAlpha:F

    iget-object v3, p0, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;->mBackgroundTint:Landroid/content/res/ColorStateList;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/common/ui/helper/ViewState;-><init>(IFLandroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Lcom/transsion/camera/app/common/ui/helper/ViewState-IA;)V

    return-object v0
.end method

.method public varargs setBackgroundTintList(Landroid/content/res/ColorStateList;[Ljava/lang/Runnable;)Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;
    .registers 5

    .line 94
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;->mBackgroundTint:Landroid/content/res/ColorStateList;

    if-eqz p2, :cond_12

    .line 96
    array-length p1, p2

    const/4 v0, 0x0

    :goto_6
    if-ge v0, p1, :cond_12

    aget-object v1, p2, v0

    if-eqz v1, :cond_f

    .line 98
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_12
    return-object p0
.end method

.method public varargs setVisibility(I[Ljava/lang/Runnable;)Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;
    .registers 5

    .line 58
    iput p1, p0, Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;->mVisibility:I

    if-eqz p2, :cond_12

    .line 60
    array-length p1, p2

    const/4 v0, 0x0

    :goto_6
    if-ge v0, p1, :cond_12

    aget-object v1, p2, v0

    if-eqz v1, :cond_f

    .line 62
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_12
    return-object p0
.end method
