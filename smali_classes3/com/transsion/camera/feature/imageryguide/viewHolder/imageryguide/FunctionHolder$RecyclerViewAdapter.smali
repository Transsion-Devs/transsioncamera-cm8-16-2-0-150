.class Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecyclerViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter$recyclerViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultFunctionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;",
            ">;"
        }
    .end annotation
.end field

.field private mFunctionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/FunctionBean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;


# direct methods
.method public static synthetic $r8$lambda$X9n0L-9VBiWwGhmRkug-gJpDWIs(Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter;->lambda$onBindViewHolder$1(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$evN3TP1JR4lawahcCid9LZ2W7WY(Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter;)Ljava/util/List;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter;->lambda$getItemCount$2()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yPODNVkbyRmIbmYIyFSH9dKmevo(Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter$recyclerViewHolder;)V
    .registers 2

    .line 160
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter$recyclerViewHolder;->mTextView:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/FunctionBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;",
            ">;)V"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 116
    iput-object p2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter;->mContext:Landroid/content/Context;

    .line 117
    iput-object p3, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter;->mFunctionList:Ljava/util/List;

    .line 118
    iput-object p4, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter;->mDefaultFunctionList:Ljava/util/List;

    return-void
.end method

.method private synthetic lambda$getItemCount$2()Ljava/util/List;
    .registers 1

    .line 181
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter;->mDefaultFunctionList:Ljava/util/List;

    return-object p0
.end method

.method private synthetic lambda$onBindViewHolder$1(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .registers 8

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;

    invoke-static {v0}, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->-$$Nest$fgetmGuideManagerListener(Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;)Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

    move-result-object v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;

    invoke-static {v0}, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->-$$Nest$fgetmEnable(Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 167
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter;->mContext:Landroid/content/Context;

    .line 169
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/imageryguide/R$string;->imagery_guide_analytics_function:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "^"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x27

    .line 168
    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    .line 174
    :cond_47
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;

    invoke-static {p0}, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->-$$Nest$fgetmGuideManagerListener(Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;)Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

    move-result-object p0

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;->onClick(Ljava/lang/String;Ljava/lang/String;)V

    :cond_56
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 3

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter;->mFunctionList:Ljava/util/List;

    new-instance v1, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter;)V

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNullElseGet(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 9

    .line 129
    check-cast p1, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter$recyclerViewHolder;

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter;->mDefaultFunctionList:Ljava/util/List;

    const-string v1, "string"

    const-string v2, ""

    if-eqz v0, :cond_63

    .line 133
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;->getDetailName()Ljava/lang/String;

    move-result-object v0

    .line 134
    iget-object v3, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_40

    .line 136
    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 139
    :cond_40
    iget-object v1, p1, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter$recyclerViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter;->mDefaultFunctionList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v3, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter;->mDefaultFunctionList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/imageryguide/bean/DefaultBean;->getModeName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_ce

    .line 141
    :cond_63
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter;->mFunctionList:Ljava/util/List;

    if-eqz v0, :cond_cd

    .line 142
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6e

    return-void

    .line 145
    :cond_6e
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter;->mFunctionList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/imageryguide/bean/FunctionBean;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/bean/FunctionBean;->getDetailName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_98

    .line 147
    iget-object v3, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_98

    .line 149
    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 153
    :cond_98
    iget-object v3, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter;->mFunctionList:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/feature/imageryguide/bean/FunctionBean;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/imageryguide/bean/FunctionBean;->getFunctionName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_bb

    .line 156
    iget-object v3, p1, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter$recyclerViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 158
    :cond_bb
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v3, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter;->mFunctionList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/feature/imageryguide/bean/FunctionBean;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/imageryguide/bean/FunctionBean;->getBelongsModeName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_ce

    :cond_cd
    move-object v0, v2

    .line 160
    :goto_ce
    iget-object p2, p1, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter$recyclerViewHolder;->mTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter$recyclerViewHolder;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 164
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, v2, v0}, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 6

    .line 124
    new-instance p2, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter$recyclerViewHolder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/imageryguide/R$layout;->function_item_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter$recyclerViewHolder;-><init>(Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setEnable(Z)V
    .registers 2

    .line 185
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder$RecyclerViewAdapter;->this$0:Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;->-$$Nest$fputmEnable(Lcom/transsion/camera/feature/imageryguide/viewHolder/imageryguide/FunctionHolder;Z)V

    return-void
.end method
