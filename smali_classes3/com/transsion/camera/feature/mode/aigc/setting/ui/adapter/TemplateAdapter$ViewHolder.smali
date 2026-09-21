.class public Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private final mImageView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

.field private final mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmImageView(Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter$ViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateImageView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter$ViewHolder;->mImageView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRotateContainer(Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter$ViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter$ViewHolder;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTextView(Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    .line 253
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 254
    sget v0, Lcom/transsion/camera/feature/aigc/R$id;->aigc_effect_item_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter$ViewHolder;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    .line 255
    sget v0, Lcom/transsion/camera/feature/aigc/R$id;->aigc_effect_item_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter$ViewHolder;->mImageView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 256
    sget v1, Lcom/transsion/camera/feature/aigc/R$id;->aigc_effect_item_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    const/4 p1, 0x1

    .line 258
    invoke-virtual {v0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 259
    new-instance p1, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter$ViewHolder$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter$ViewHolder$1;-><init>(Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter$ViewHolder;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method
