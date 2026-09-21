.class public Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter$ItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemHolder"
.end annotation


# instance fields
.field private final mTitleView:Landroid/widget/TextView;

.field final root:Landroid/view/View;

.field final synthetic this$0:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;Landroid/view/View;)V
    .registers 3

    .line 358
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter$ItemHolder;->this$0:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;

    .line 359
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 360
    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter$ItemHolder;->root:Landroid/view/View;

    .line 361
    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter$ItemHolder;->mTitleView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method initView(Ljava/lang/String;Z)V
    .registers 4

    .line 367
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter$ItemHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter$ItemHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    if-eqz p2, :cond_20

    .line 372
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter$ItemHolder;->this$0:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->-$$Nest$fgetmSelectedTextAppearance(Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;)I

    move-result p1

    if-lez p1, :cond_33

    .line 373
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter$ItemHolder;->mTitleView:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter$ItemHolder;->this$0:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->-$$Nest$fgetmSelectedTextAppearance(Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_33

    .line 376
    :cond_20
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter$ItemHolder;->this$0:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->-$$Nest$fgetmNormalTextAppearance(Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;)I

    move-result p1

    if-lez p1, :cond_33

    .line 377
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter$ItemHolder;->mTitleView:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter$ItemHolder;->this$0:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->-$$Nest$fgetmNormalTextAppearance(Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 380
    :cond_33
    :goto_33
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter$ItemHolder;->this$0:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->-$$Nest$fgetmItemHeight(Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;)I

    move-result p1

    if-ltz p1, :cond_46

    .line 381
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter$ItemHolder;->mTitleView:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter$ItemHolder;->this$0:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->-$$Nest$fgetmItemHeight(Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHeight(I)V

    .line 383
    :cond_46
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter$ItemHolder;->this$0:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->-$$Nest$fgetmItemTextSize(Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;)I

    move-result p1

    if-lez p1, :cond_5b

    .line 384
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter$ItemHolder;->mTitleView:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter$ItemHolder;->this$0:Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;->-$$Nest$fgetmItemTextSize(Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter;)I

    move-result p2

    int-to-float p2, p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 386
    :cond_5b
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/VerticalModeRecyclerView$RecycleAdapter$ItemHolder;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
