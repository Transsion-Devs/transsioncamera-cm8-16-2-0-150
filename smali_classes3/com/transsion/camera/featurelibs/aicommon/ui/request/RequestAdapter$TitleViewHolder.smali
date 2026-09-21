.class Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$TitleViewHolder;
.super Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TitleViewHolder"
.end annotation


# instance fields
.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 215
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 216
    sget v0, Lcom/transsion/camera/featurelibs/aicommon/R$id;->ai_fragment_list_item_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$TitleViewHolder;->mTextView:Landroid/widget/TextView;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$TitleViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method bindView(Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/TitleItem;)V
    .registers 2

    .line 221
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$TitleViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/TitleItem;->getTitle()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
