.class Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$TitleItemHolder;
.super Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TitleItemHolder"
.end annotation


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 104
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;->mModeIconView:Landroid/widget/ImageView;

    .line 106
    sget v0, Lcom/transsion/camera/R$id;->mode_order_editor_item_ui_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/editor/OrderEditorRecycleViewAdapter$ModeItemHolder;->mModeTitleView:Landroid/widget/TextView;

    return-void
.end method
