.class public Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;
.super Lcom/transsion/camera/feature/mode/aigc/setting/ui/AbstractAIGCSettingUI;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/aigc/setting/ui/ITemplateListener;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mIndicatorAdapter:Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;

.field private mIndicatorListener:Lcom/transsion/camera/feature/mode/aigc/setting/ui/IIndicatorListener;

.field private mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private final mListItemDecoration:Lcom/transsion/camera/feature/mode/aigc/setting/ui/decoration/ListItemDecoration;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSelectedIndicator:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$-WjUgE-vr9mlamykapqL3epsGig(Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;Lcom/transsion/camera/feature/mode/aigc/info/IndicatorInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->lambda$createView$0(Lcom/transsion/camera/feature/mode/aigc/info/IndicatorInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iLUPZ2Om_mVHNQDjrLjPeD1d2dQ(Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->lambda$scrollSelectedItemToCenter$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AIGCIndicatorSettingUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 48
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AbstractAIGCSettingUI;-><init>()V

    .line 49
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 51
    new-instance v1, Lcom/transsion/camera/feature/mode/aigc/setting/ui/decoration/ListItemDecoration;

    sget v2, Lcom/transsion/camera/feature/aigc/R$dimen;->aigc_effect_indicator_internal:I

    .line 52
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Lcom/transsion/camera/feature/aigc/R$dimen;->aigc_effect_indicator_internal:I

    .line 53
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Lcom/transsion/camera/feature/aigc/R$dimen;->aigc_effect_indicator_internal:I

    .line 54
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/decoration/ListItemDecoration;-><init>(III)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->mListItemDecoration:Lcom/transsion/camera/feature/mode/aigc/setting/ui/decoration/ListItemDecoration;

    return-void
.end method

.method private synthetic lambda$createView$0(Lcom/transsion/camera/feature/mode/aigc/info/IndicatorInfo;)V
    .registers 5

    .line 101
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/aigc/info/IndicatorInfo;->indicator()Ljava/lang/String;

    move-result-object p1

    .line 103
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIndicatorClick indicator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->mIndicatorListener:Lcom/transsion/camera/feature/mode/aigc/setting/ui/IIndicatorListener;

    if-eqz v0, :cond_21

    .line 106
    invoke-interface {v0, p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/IIndicatorListener;->onIndicatorClick(Ljava/lang/String;)V

    .line 109
    :cond_21
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->mSelectedIndicator:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 110
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->mSelectedIndicator:Ljava/lang/String;

    .line 111
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->scrollSelectedItemToCenter()V

    :cond_2e
    return-void
.end method

.method private synthetic lambda$scrollSelectedItemToCenter$1()V
    .registers 4

    .line 187
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->mIndicatorAdapter:Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;

    if-nez v0, :cond_d

    goto :goto_3b

    .line 193
    :cond_d
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->getSelectPosition()I

    move-result v0

    .line 195
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_26

    .line 197
    sget-object v1, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "scrollSelectedItemToCenter selectView is null"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 198
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    return-void

    .line 202
    :cond_26
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v1

    .line 204
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void

    .line 188
    :cond_3b
    :goto_3b
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollSelectedItemToCenter failed mRecyclerView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mLayoutManager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mIndicatorAdapter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->mIndicatorAdapter:Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private scrollSelectedItemToCenter()V
    .registers 3

    .line 182
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "scrollSelectedItemToCenter"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_c

    return-void

    .line 186
    :cond_c
    new-instance v1, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateLayout()V
    .registers 4

    .line 77
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 78
    iget v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AbstractAIGCSettingUI;->mOrientation:I

    const/16 v1, 0x5a

    const/4 v2, 0x0

    if-eq v0, v1, :cond_11

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_12

    :cond_11
    move v0, v2

    .line 82
    :cond_12
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->mIndicatorAdapter:Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;

    if-eqz p0, :cond_19

    .line 83
    invoke-virtual {p0, v0, v2}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->setOrientation(IZ)V

    :cond_19
    return-void
.end method


# virtual methods
.method public createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .registers 4

    .line 90
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AbstractAIGCSettingUI;->createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    if-nez p2, :cond_d

    .line 93
    sget-object p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "createView parent is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 97
    :cond_d
    sget v0, Lcom/transsion/camera/feature/aigc/R$layout;->aigc_effect_indicator_layout:I

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 98
    sget p1, Lcom/transsion/camera/feature/aigc/R$id;->aigc_indicator_list:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 100
    new-instance p1, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;

    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo;->getIndicators()Ljava/util/List;

    move-result-object p2

    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;)V

    invoke-direct {p1, p2, v0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;-><init>(Ljava/util/List;Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter$OnItemClickListener;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->mIndicatorAdapter:Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;

    return-void
.end method

.method public bridge synthetic initSettingUI(II)V
    .registers 3

    .line 32
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AbstractAIGCSettingUI;->initSettingUI(II)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 72
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AbstractAIGCSettingUI;->onOrientationChanged(I)V

    .line 73
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->updateLayout()V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 3

    .line 63
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AbstractAIGCSettingUI;->onScreenFormChanged(IZ)V

    .line 64
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->mIndicatorAdapter:Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;

    if-eqz p2, :cond_f

    .line 65
    invoke-virtual {p2, p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->setScreenFormType(I)V

    .line 66
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->mIndicatorAdapter:Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_f
    return-void
.end method

.method public onTemplateScrolled(Ljava/lang/String;)V
    .registers 5

    .line 170
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTemplateScrolled template: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->mIndicatorAdapter:Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;

    if-eqz v0, :cond_30

    .line 172
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo;->getIndicator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->mSelectedIndicator:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 174
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->mSelectedIndicator:Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->mIndicatorAdapter:Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->setSelect(Ljava/lang/String;)V

    .line 176
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->scrollSelectedItemToCenter()V

    :cond_30
    return-void
.end method

.method public onTemplateSelected(Ljava/lang/String;)V
    .registers 5

    .line 157
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTemplateSelected template: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->mIndicatorAdapter:Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;

    if-eqz v0, :cond_30

    .line 159
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo;->getIndicator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->mSelectedIndicator:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 161
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->mSelectedIndicator:Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->mIndicatorAdapter:Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->setSelect(Ljava/lang/String;)V

    .line 163
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->scrollSelectedItemToCenter()V

    :cond_30
    return-void
.end method

.method public bridge synthetic setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 32
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AbstractAIGCSettingUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setIndicatorListener(Lcom/transsion/camera/feature/mode/aigc/setting/ui/IIndicatorListener;)V
    .registers 2

    .line 58
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->mIndicatorListener:Lcom/transsion/camera/feature/mode/aigc/setting/ui/IIndicatorListener;

    return-void
.end method

.method public setupView()V
    .registers 4

    .line 118
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AbstractAIGCSettingUI;->setupView()V

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_f

    .line 121
    sget-object p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "setupView mRecyclerView is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_f
    const/4 v1, 0x0

    .line 125
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->mSelectedIndicator:Ljava/lang/String;

    .line 127
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->mListItemDecoration:Lcom/transsion/camera/feature/mode/aigc/setting/ui/decoration/ListItemDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 130
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->mListItemDecoration:Lcom/transsion/camera/feature/mode/aigc/setting/ui/decoration/ListItemDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 132
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 133
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 135
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->mIndicatorAdapter:Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public updateLowLight(Z)V
    .registers 2

    .line 141
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AbstractAIGCSettingUI;->updateLowLight(Z)V

    .line 142
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->mIndicatorAdapter:Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;

    if-eqz p0, :cond_a

    .line 143
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/IndicatorAdapter;->updateLowLight(Z)V

    :cond_a
    return-void
.end method

.method public updateVisibility(Z)V
    .registers 2

    .line 149
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AbstractAIGCSettingUI;->updateVisibility(Z)V

    if-eqz p1, :cond_8

    .line 151
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCIndicatorSettingUI;->scrollSelectedItemToCenter()V

    :cond_8
    return-void
.end method
