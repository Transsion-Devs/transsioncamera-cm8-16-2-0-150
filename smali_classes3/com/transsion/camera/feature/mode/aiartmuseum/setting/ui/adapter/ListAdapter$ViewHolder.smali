.class public Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;
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
.method static bridge synthetic -$$Nest$fgetmImageView(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateImageView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;->mImageView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRotateContainer(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTextView(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    .line 215
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 216
    sget v0, Lcom/transsion/camera/feature/aiartmuseum/R$id;->ai_art_museum_effect_item_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    .line 217
    sget v0, Lcom/transsion/camera/feature/aiartmuseum/R$id;->ai_art_museum_effect_item_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateImageView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;->mImageView:Lcom/transsion/camera/app/ui/widget/RotateImageView;

    .line 218
    sget v1, Lcom/transsion/camera/feature/aiartmuseum/R$id;->ai_art_museum_effect_item_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    const/4 p1, 0x1

    .line 220
    invoke-virtual {v0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 221
    new-instance p1, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder$1;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method
