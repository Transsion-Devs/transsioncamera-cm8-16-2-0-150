.class Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$SwitchViewHolder;
.super Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchViewHolder"
.end annotation


# instance fields
.field private final mSwitchIcon:Landroid/widget/ImageView;

.field private final mSwitchText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;


# direct methods
.method public static synthetic $r8$lambda$oK3v4fCzDSTq7r13sew4G_OF6O8(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$SwitchViewHolder;Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/SwitchItem;Landroid/view/View;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$SwitchViewHolder;->lambda$bindView$0(Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/SwitchItem;Landroid/view/View;)V

    return-void
.end method

.method private constructor <init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;Landroid/view/View;)V
    .registers 3

    .line 387
    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$SwitchViewHolder;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;

    .line 388
    invoke-direct {p0, p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 389
    sget p1, Lcom/transsion/camera/featurelibs/aicommon/R$id;->ai_fragment_list_item_switch_text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$SwitchViewHolder;->mSwitchText:Landroid/widget/TextView;

    .line 390
    sget p1, Lcom/transsion/camera/featurelibs/aicommon/R$id;->ai_fragment_list_item_switch_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$SwitchViewHolder;->mSwitchIcon:Landroid/widget/ImageView;

    const p0, 0x3f4ccccd    # 0.8f

    const/4 p1, 0x0

    .line 392
    invoke-static {p2, p0, p1}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;Landroid/view/View;Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$SwitchViewHolder;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$bindView$0(Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/SwitchItem;Landroid/view/View;)V
    .registers 4

    .line 398
    invoke-static {p2}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_7

    return-void

    .line 402
    :cond_7
    invoke-static {}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    const-string v0, "oppositeSwitch"

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 403
    iget-object p2, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$SwitchViewHolder;->this$0:Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;

    invoke-static {p2}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;->-$$Nest$fgetmRequestOperator(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter;)Lcom/transsion/camera/featurelibs/aicommon/ui/request/IRequestOperator;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/IRequestOperator;->oppositeSwitch(Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/SwitchItem;)V

    .line 405
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$SwitchViewHolder;->updateSwitch(Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/SwitchItem;)V

    return-void
.end method

.method private updateSwitch(Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/SwitchItem;)V
    .registers 3

    .line 412
    invoke-virtual {p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/SwitchItem;->switchExpand()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 413
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$SwitchViewHolder;->mSwitchText:Landroid/widget/TextView;

    sget v0, Lcom/transsion/camera/featurelibs/aicommon/R$string;->ai_fragment_list_item_collapse:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 414
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$SwitchViewHolder;->mSwitchIcon:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/camera/featurelibs/aicommon/R$drawable;->ic_ai_fragment_list_item_switch_collapse:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 416
    :cond_15
    iget-object p1, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$SwitchViewHolder;->mSwitchText:Landroid/widget/TextView;

    sget v0, Lcom/transsion/camera/featurelibs/aicommon/R$string;->ai_fragment_list_item_expand:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 417
    iget-object p0, p0, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$SwitchViewHolder;->mSwitchIcon:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/camera/featurelibs/aicommon/R$drawable;->ic_ai_fragment_list_item_switch_expand:I

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method bindView(Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/SwitchItem;)V
    .registers 4

    .line 397
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$SwitchViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$SwitchViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$SwitchViewHolder;Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/SwitchItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    invoke-direct {p0, p1}, Lcom/transsion/camera/featurelibs/aicommon/ui/request/RequestAdapter$SwitchViewHolder;->updateSwitch(Lcom/transsion/camera/featurelibs/aicommon/ui/request/item/SwitchItem;)V

    return-void
.end method
