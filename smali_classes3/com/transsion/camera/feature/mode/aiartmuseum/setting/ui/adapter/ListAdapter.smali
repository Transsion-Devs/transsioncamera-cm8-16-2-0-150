.class public Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$OnItemClickListener;,
        Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mItemClickListener:Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$OnItemClickListener;

.field private final mMainHandler:Landroid/os/Handler;

.field private mOrientation:I

.field private mScreenFormType:I

.field private mSelectPosition:I

.field private final mViewHolderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$626OYpRMZKqqBaQl5PfS_E7_dt0(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;ILcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;Landroid/view/View;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->lambda$onBindViewHolder$1(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;ILcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rY4NbjBw1ccmjNo1_W6_btNHgzE(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;)V
    .registers 2

    .line 167
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;->-$$Nest$fgetmTextView(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 168
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;->-$$Nest$fgetmTextView(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_e
    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 48
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ListAdapter"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$OnItemClickListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;",
            ">;",
            "Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$OnItemClickListener;",
            ")V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->mScreenFormType:I

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->mViewHolderList:Ljava/util/List;

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->mMainHandler:Landroid/os/Handler;

    .line 69
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->mInfoList:Ljava/util/List;

    .line 70
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->mItemClickListener:Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$OnItemClickListener;

    return-void
.end method

.method private animRotateItem()V
    .registers 6

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->mViewHolderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;

    .line 96
    sget-object v2, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "animRotateItem ViewHolder@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", item: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;->-$$Nest$fgetmTextView(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    .line 97
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mOrientation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->mOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 96
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 98
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;->-$$Nest$fgetmRotateContainer(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    move-result-object v2

    iget v3, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->mOrientation:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->setOrientation(IZ)V

    .line 99
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;->-$$Nest$fgetmImageView(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->mOrientation:I

    invoke-virtual {v1, v2, v4}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    goto :goto_6

    :cond_5a
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;ILcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;Landroid/view/View;)V
    .registers 5

    .line 193
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 196
    :cond_9
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->setSelect(I)V

    .line 197
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->mItemClickListener:Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$OnItemClickListener;

    invoke-virtual {p3}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$OnItemClickListener;->onItemClick(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 1

    .line 203
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->mInfoList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public notifyItemSelectChanged(I)V
    .registers 3

    .line 113
    iget v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->mSelectPosition:I

    if-eq v0, p1, :cond_a

    .line 115
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 116
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_a
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 46
    check-cast p1, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;I)V
    .registers 9
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 148
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->mInfoList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;

    .line 150
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;->-$$Nest$fgetmRotateContainer(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    move-result-object v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->mOrientation:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->setOrientation(IZ)V

    .line 151
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;->-$$Nest$fgetmImageView(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->mOrientation:I

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/ui/widget/RotateImageView;->setOrientation(IZ)V

    .line 153
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;->-$$Nest$fgetmImageView(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;->getIcon()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 154
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;->-$$Nest$fgetmTextView(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;->getTitle()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 156
    sget-object v1, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBindViewHolder ViewHolder@"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", position: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", effect: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    .line 157
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;->getTitle()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mOrientation: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->mOrientation:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 159
    iget v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->mSelectPosition:I

    const/4 v2, 0x0

    if-ne v1, p2, :cond_9e

    .line 160
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget-object v4, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    sget v5, Lcom/transsion/camera/feature/aiartmuseum/R$drawable;->ai_art_museum_effect_item_selected:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 161
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 162
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;->-$$Nest$fgetmImageView(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 165
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 166
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_b6

    .line 172
    :cond_9e
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 173
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 174
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;->-$$Nest$fgetmImageView(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    .line 175
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;->-$$Nest$fgetmTextView(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 178
    :goto_b6
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 180
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$1;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;ILcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;)V

    const v3, 0x3f6b851f    # 0.92f

    invoke-static {v1, v3, v2}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 192
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;ILcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;
    .registers 6

    .line 134
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object p2

    iget-boolean p2, p2, Lcom/transsion/camera/utils/CustomConfigUtil;->mSupportUI5:Z

    if-nez p2, :cond_12

    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result p2

    if-eqz p2, :cond_f

    goto :goto_12

    .line 137
    :cond_f
    sget p2, Lcom/transsion/camera/feature/aiartmuseum/R$layout;->ai_art_museum_effect_item_layout:I

    goto :goto_14

    .line 135
    :cond_12
    :goto_12
    sget p2, Lcom/transsion/camera/feature/aiartmuseum/R$layout;->ai_art_museum_effect_item_layout_ui5:I

    .line 139
    :goto_14
    new-instance v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    .line 141
    invoke-virtual {v1, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 142
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->mViewHolderList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public setOrientation(IZ)V
    .registers 6

    .line 81
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOrientation orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rotateAnimation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p2, :cond_30

    .line 84
    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->mOrientation:I

    .line 85
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->animRotateItem()V

    return-void

    .line 87
    :cond_30
    iget p2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->mOrientation:I

    if-eq p2, p1, :cond_39

    .line 88
    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->mOrientation:I

    .line 89
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_39
    return-void
.end method

.method public setScreenFormType(I)V
    .registers 3

    .line 74
    iget v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->mScreenFormType:I

    if-eq v0, p1, :cond_9

    .line 75
    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->mScreenFormType:I

    .line 76
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_9
    return-void
.end method

.method public setSelect(I)V
    .registers 5

    .line 104
    sget-object v0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSelect selectPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mSelectPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->mSelectPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 106
    iget v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->mSelectPosition:I

    if-eq v0, p1, :cond_29

    .line 107
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->notifyItemSelectChanged(I)V

    .line 108
    iput p1, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->mSelectPosition:I

    :cond_29
    return-void
.end method

.method public setSelect(Ljava/lang/String;)V
    .registers 5

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->mInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_22

    .line 122
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->mInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;

    .line 123
    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/info/ItemInfo;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 124
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/aiartmuseum/setting/ui/adapter/ListAdapter;->setSelect(I)V

    return-void

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_22
    return-void
.end method
