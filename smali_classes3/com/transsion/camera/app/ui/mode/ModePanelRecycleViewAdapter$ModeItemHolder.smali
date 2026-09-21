.class public Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModeItemHolder"
.end annotation


# instance fields
.field mModeIconView:Landroid/widget/ImageView;

.field mModeTitleView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;Landroid/view/View;)V
    .registers 3

    .line 141
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 142
    sget p1, Lcom/transsion/camera/R$id;->mode_item_ui_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;->mModeIconView:Landroid/widget/ImageView;

    .line 143
    sget p1, Lcom/transsion/camera/R$id;->mode_item_ui_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;->mModeTitleView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public getModeIconView()Landroid/widget/ImageView;
    .registers 1

    .line 147
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter$ModeItemHolder;->mModeIconView:Landroid/widget/ImageView;

    return-object p0
.end method
