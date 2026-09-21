.class final Lcom/transsion/widgetslib/dialog/PromptController$ContentHolder;
.super Lcom/transsion/widgetslib/adapter/RecyclerAdapter$Holder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/dialog/PromptController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ContentHolder"
.end annotation


# instance fields
.field private final mCheckedTextView:Landroid/widget/CheckedTextView;

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .registers 4

    .line 1231
    sget v0, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_list_item_compat:I

    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/adapter/RecyclerAdapter$Holder;-><init>(Landroid/view/ViewGroup;I)V

    .line 1232
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/transsion/widgetslib/R$id;->text_list_item_compat:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController$ContentHolder;->mCheckedTextView:Landroid/widget/CheckedTextView;

    .line 1233
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$ContentHolder;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$1700(Lcom/transsion/widgetslib/dialog/PromptController$ContentHolder;)Landroid/widget/CheckedTextView;
    .registers 1

    .line 1226
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController$ContentHolder;->mCheckedTextView:Landroid/widget/CheckedTextView;

    return-object p0
.end method


# virtual methods
.method public setChoiceMode(I)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_b

    .line 1239
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$ContentHolder;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/widgetslib/drawable/OSRadioDrawable;->getInstance(Landroid/content/Context;)Lcom/transsion/widgetslib/drawable/OSRadioDrawable;

    move-result-object p1

    goto :goto_16

    :cond_b
    const/4 v0, 0x2

    if-ne p1, v0, :cond_15

    .line 1241
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$ContentHolder;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;->getInstance(Landroid/content/Context;)Lcom/transsion/widgetslib/drawable/OSCheckedDrawable;

    move-result-object p1

    goto :goto_16

    :cond_15
    move-object p1, v1

    :goto_16
    if-eqz p1, :cond_1d

    .line 1245
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController$ContentHolder;->mCheckedTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {p0, v1, v1, p1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1d
    return-void
.end method
