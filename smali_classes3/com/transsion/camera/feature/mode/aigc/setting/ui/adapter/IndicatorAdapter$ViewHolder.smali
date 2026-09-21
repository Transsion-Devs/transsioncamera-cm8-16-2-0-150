.class public Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private final mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmRotateContainer(Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$ViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$ViewHolder;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTextView(Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 238
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 239
    sget v0, Lcom/transsion/camera/feature/aigc/R$id;->aigc_effect_indicator_item_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$ViewHolder;->mRotateContainer:Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    .line 240
    sget v0, Lcom/transsion/camera/feature/aigc/R$id;->aigc_effect_indicator_item_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    return-void
.end method
