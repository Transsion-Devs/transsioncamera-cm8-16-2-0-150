.class public Lcom/transsion/camera/app/ui/view/SwitchImageView;
.super Lcom/transsion/camera/app/ui/widget/RecyclerImageView;
.source "SourceFile"


# instance fields
.field private mAlwaysShow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/view/SwitchImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/app/ui/view/SwitchImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 12

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/widget/RecyclerImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 29
    sget-object p3, Lcom/transsion/camera/R$styleable;->SwitchImageView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 30
    sget-object v2, Lcom/transsion/camera/R$styleable;->SwitchImageView:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Landroid/view/View;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 31
    sget p0, Lcom/transsion/camera/R$styleable;->SwitchImageView_alwaysShow:I

    const/4 p1, 0x0

    invoke-virtual {v4, p0, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    .line 32
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/view/SwitchImageView;->setAlwaysShow(Z)V

    .line 33
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public setAlwaysShow(Z)V
    .registers 2

    .line 42
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/view/SwitchImageView;->mAlwaysShow:Z

    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    .line 38
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/view/SwitchImageView;->mAlwaysShow:Z

    if-eqz v0, :cond_5

    const/4 p1, 0x0

    :cond_5
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
