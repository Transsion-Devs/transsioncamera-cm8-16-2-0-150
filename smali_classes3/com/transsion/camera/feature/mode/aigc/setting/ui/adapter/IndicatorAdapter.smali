.class public Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$OnItemClickListener;,
        Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;"
    }
.end annotation


# static fields
.field private static final NORMAL_STATE_SET:[I

.field private static final SELECTED_STATE_SET:[I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final sStates:[[I


# instance fields
.field private final mIndicatorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/aigc/info/IndicatorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mItemClickListener:Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$OnItemClickListener;

.field private mLowLight:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private mOrientation:I

.field private mScreenFormType:I

.field private mSelectPosition:I

.field private final mStateList:Landroid/content/res/ColorStateList;

.field private final mStateListLowLight:Landroid/content/res/ColorStateList;

.field private final mViewHolderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$BDkaPAfuQlw5ZrvPnurAcoAWkpE(Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$ViewHolder;)V
    .registers 2

    .line 195
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$ViewHolder;->-$$Nest$fgetmTextView(Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 196
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$ViewHolder;->-$$Nest$fgetmTextView(Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_e
    return-void
.end method

.method public static synthetic $r8$lambda$H_32CZg1dTbmXMPtvdYuiCXew5E(Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$ViewHolder;ILcom/transsion/camera/feature/mode/aigc/info/IndicatorInfo;Landroid/view/View;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->lambda$onBindViewHolder$1(Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$ViewHolder;ILcom/transsion/camera/feature/mode/aigc/info/IndicatorInfo;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 46
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "IndicatorAdapter"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const v0, 0x10100a1

    .line 48
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->SELECTED_STATE_SET:[I

    const/4 v1, 0x0

    .line 52
    filled-new-array {v1}, [I

    move-result-object v1

    sput-object v1, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->NORMAL_STATE_SET:[I

    .line 54
    filled-new-array {v0, v1}, [[I

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->sStates:[[I

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$OnItemClickListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/aigc/info/IndicatorInfo;",
            ">;",
            "Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$OnItemClickListener;",
            ")V"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->mScreenFormType:I

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->mMainHandler:Landroid/os/Handler;

    .line 76
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->mViewHolderList:Ljava/util/List;

    .line 83
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->mIndicatorList:Ljava/util/List;

    .line 84
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->mItemClickListener:Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$OnItemClickListener;

    .line 86
    sget-object p1, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    sget p2, Lcom/transsion/camera/feature/aigc/R$color;->aigc_selected_color:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 87
    sget-object p2, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    sget v0, Lcom/transsion/camera/feature/aigc/R$color;->aigc_unselected_color:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    .line 88
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    sget v1, Lcom/transsion/camera/feature/aigc/R$color;->aigc_unselected_color_low_light:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 90
    new-instance v1, Landroid/content/res/ColorStateList;

    sget-object v2, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->sStates:[[I

    filled-new-array {p1, p2}, [I

    move-result-object p2

    invoke-direct {v1, v2, p2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->mStateList:Landroid/content/res/ColorStateList;

    .line 91
    new-instance p2, Landroid/content/res/ColorStateList;

    filled-new-array {p1, v0}, [I

    move-result-object p1

    invoke-direct {p2, v2, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->mStateListLowLight:Landroid/content/res/ColorStateList;

    return-void
.end method

.method private animRotateItem()V
    .registers 6

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->mViewHolderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 124
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 125
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 126
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$ViewHolder;

    if-nez v1, :cond_1e

    .line 128
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    .line 130
    :cond_1e
    sget-object v2, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "animRotateItem ViewHolder@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", item: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$ViewHolder;->-$$Nest$fgetmTextView(Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    .line 131
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mOrientation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->mOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 133
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$ViewHolder;->-$$Nest$fgetmRotateContainer(Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$ViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    move-result-object v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->mOrientation:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->setOrientation(IZ)V

    goto :goto_6

    :cond_5d
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$ViewHolder;ILcom/transsion/camera/feature/mode/aigc/info/IndicatorInfo;Landroid/view/View;)V
    .registers 5

    .line 218
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 221
    :cond_9
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->setSelect(I)V

    .line 222
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->mItemClickListener:Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$OnItemClickListener;

    invoke-interface {p0, p3}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$OnItemClickListener;->onItemClick(Lcom/transsion/camera/feature/mode/aigc/info/IndicatorInfo;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 1

    .line 228
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->mIndicatorList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getSelectPosition()I
    .registers 1

    .line 148
    iget p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->mSelectPosition:I

    return p0
.end method

.method public notifyItemSelectChanged(I)V
    .registers 3

    .line 152
    iget v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->mSelectPosition:I

    if-eq v0, p1, :cond_a

    .line 154
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 155
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

    .line 44
    check-cast p1, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->onBindViewHolder(Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$ViewHolder;I)V
    .registers 9
    .param p2    # I
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "RecyclerView"
            }
        .end annotation
    .end param

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->mIndicatorList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/mode/aigc/info/IndicatorInfo;

    .line 183
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$ViewHolder;->-$$Nest$fgetmRotateContainer(Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$ViewHolder;)Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;

    move-result-object v1

    iget v2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->mOrientation:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/ui/widget/RotateFrameLayout;->setOrientation(IZ)V

    .line 185
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$ViewHolder;->-$$Nest$fgetmTextView(Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/aigc/info/IndicatorInfo;->title()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 186
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$ViewHolder;->-$$Nest$fgetmTextView(Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->mLowLight:Z

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->mStateListLowLight:Landroid/content/res/ColorStateList;

    goto :goto_2a

    :cond_28
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->mStateList:Landroid/content/res/ColorStateList;

    :goto_2a
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 188
    sget-object v1, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 189
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/aigc/info/IndicatorInfo;->title()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mOrientation: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->mOrientation:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 188
    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 191
    iget v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->mSelectPosition:I

    if-ne v1, p2, :cond_80

    .line 193
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 194
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$ViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_87

    .line 200
    :cond_80
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$ViewHolder;->-$$Nest$fgetmTextView(Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 203
    :goto_87
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 205
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$1;-><init>(Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;ILcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$ViewHolder;)V

    const v3, 0x3f6b851f    # 0.92f

    invoke-static {v1, v3, v2}, Lcom/transsion/camera/utils/MultiTouchManager;->pressSealAnimation(Landroid/view/View;FLandroid/animation/AnimatorListenerAdapter;)V

    .line 217
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$ViewHolder;ILcom/transsion/camera/feature/mode/aigc/info/IndicatorInfo;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$ViewHolder;
    .registers 6

    .line 172
    new-instance p2, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$ViewHolder;

    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/aigc/R$layout;->aigc_indicator_list_item_layout:I

    const/4 v2, 0x0

    .line 174
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 175
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->mViewHolderList:Ljava/util/List;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public setOrientation(IZ)V
    .registers 6

    .line 109
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOrientation orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mOrientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rotateAnimation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p2, :cond_30

    .line 112
    iput p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->mOrientation:I

    .line 113
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->animRotateItem()V

    return-void

    .line 115
    :cond_30
    iget p2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->mOrientation:I

    if-eq p2, p1, :cond_39

    .line 116
    iput p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->mOrientation:I

    .line 117
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_39
    return-void
.end method

.method public setScreenFormType(I)V
    .registers 3

    .line 95
    iget v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->mScreenFormType:I

    if-eq v0, p1, :cond_9

    .line 96
    iput p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->mScreenFormType:I

    .line 97
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_9
    return-void
.end method

.method public setSelect(I)V
    .registers 5

    .line 139
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSelect selectPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mSelectPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->mSelectPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 141
    iget v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->mSelectPosition:I

    if-eq v0, p1, :cond_29

    .line 142
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->notifyItemSelectChanged(I)V

    .line 143
    iput p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->mSelectPosition:I

    :cond_29
    return-void
.end method

.method public setSelect(Ljava/lang/String;)V
    .registers 5

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->mIndicatorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_22

    .line 161
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->mIndicatorList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/aigc/info/IndicatorInfo;

    .line 162
    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/aigc/info/IndicatorInfo;->indicator()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 163
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->setSelect(I)V

    return-void

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_22
    return-void
.end method

.method public updateLowLight(Z)V
    .registers 3

    .line 102
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->mLowLight:Z

    if-eq v0, p1, :cond_9

    .line 103
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->mLowLight:Z

    .line 104
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_9
    return-void
.end method
