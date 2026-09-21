.class public Lcom/transsion/camera/app/common/ui/helper/ViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/ui/helper/ViewState$Builder;
    }
.end annotation


# instance fields
.field private final mAlpha:F

.field private final mBackground:Landroid/graphics/drawable/Drawable;

.field private final mBackgroundTint:Landroid/content/res/ColorStateList;

.field private final mVisibility:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAlpha(Lcom/transsion/camera/app/common/ui/helper/ViewState;)F
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/common/ui/helper/ViewState;->mAlpha:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBackground(Lcom/transsion/camera/app/common/ui/helper/ViewState;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/helper/ViewState;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVisibility(Lcom/transsion/camera/app/common/ui/helper/ViewState;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/app/common/ui/helper/ViewState;->mVisibility:I

    return p0
.end method

.method private constructor <init>(IFLandroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .registers 5

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/transsion/camera/app/common/ui/helper/ViewState;->mVisibility:I

    .line 18
    iput p2, p0, Lcom/transsion/camera/app/common/ui/helper/ViewState;->mAlpha:F

    .line 19
    iput-object p3, p0, Lcom/transsion/camera/app/common/ui/helper/ViewState;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 20
    iput-object p4, p0, Lcom/transsion/camera/app/common/ui/helper/ViewState;->mBackgroundTint:Landroid/content/res/ColorStateList;

    return-void
.end method

.method synthetic constructor <init>(IFLandroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Lcom/transsion/camera/app/common/ui/helper/ViewState-IA;)V
    .registers 6

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/ui/helper/ViewState;-><init>(IFLandroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method public restore(Landroid/view/View;)V
    .registers 3

    .line 24
    iget v0, p0, Lcom/transsion/camera/app/common/ui/helper/ViewState;->mAlpha:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 25
    iget v0, p0, Lcom/transsion/camera/app/common/ui/helper/ViewState;->mVisibility:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 26
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/helper/ViewState;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/helper/ViewState;->mBackgroundTint:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method
