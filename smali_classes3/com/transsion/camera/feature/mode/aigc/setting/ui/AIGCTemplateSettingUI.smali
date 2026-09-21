.class public Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;
.super Lcom/transsion/camera/feature/mode/aigc/setting/ui/AbstractAIGCSettingUI;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/aigc/setting/ui/IIndicatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI$LinearLayoutManager;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mIndicatorClickedScroll:Z

.field private final mListItemDecoration:Lcom/transsion/camera/feature/mode/aigc/setting/ui/decoration/ListItemDecoration;

.field private final mListItemDecorationExpanded:Lcom/transsion/camera/feature/mode/aigc/setting/ui/decoration/ListItemDecoration;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mTemplateAdapter:Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter;

.field private mTemplateListener:Lcom/transsion/camera/feature/mode/aigc/setting/ui/ITemplateListener;


# direct methods
.method public static synthetic $r8$lambda$V3tJpUzqWTiXW2bgQyv7sTvysx0(Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->lambda$createView$0(Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmIndicatorClickedScroll(Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mIndicatorClickedScroll:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTemplateAdapter(Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;)Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mTemplateAdapter:Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTemplateListener(Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;)Lcom/transsion/camera/feature/mode/aigc/setting/ui/ITemplateListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mTemplateListener:Lcom/transsion/camera/feature/mode/aigc/setting/ui/ITemplateListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIndicatorClickedScroll(Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mIndicatorClickedScroll:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 39
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AIGCTemplateSettingUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 52
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AbstractAIGCSettingUI;-><init>()V

    .line 53
    sget-object v0, Lcom/transsion/camera/app_info/AppInfo;->app:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 55
    new-instance v1, Lcom/transsion/camera/feature/mode/aigc/setting/ui/decoration/ListItemDecoration;

    sget v2, Lcom/transsion/camera/feature/aigc/R$dimen;->aigc_effect_list_padding:I

    .line 56
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Lcom/transsion/camera/feature/aigc/R$dimen;->aigc_effect_list_item_interval:I

    .line 57
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Lcom/transsion/camera/feature/aigc/R$dimen;->aigc_effect_list_padding:I

    .line 58
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/decoration/ListItemDecoration;-><init>(III)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mListItemDecoration:Lcom/transsion/camera/feature/mode/aigc/setting/ui/decoration/ListItemDecoration;

    .line 59
    new-instance v1, Lcom/transsion/camera/feature/mode/aigc/setting/ui/decoration/ListItemDecoration;

    sget v2, Lcom/transsion/camera/feature/aigc/R$dimen;->aigc_effect_list_padding:I

    .line 60
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v3, Lcom/transsion/camera/feature/aigc/R$dimen;->aigc_effect_list_item_interval_expanded:I

    .line 61
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Lcom/transsion/camera/feature/aigc/R$dimen;->aigc_effect_list_padding:I

    .line 62
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/decoration/ListItemDecoration;-><init>(III)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mListItemDecorationExpanded:Lcom/transsion/camera/feature/mode/aigc/setting/ui/decoration/ListItemDecoration;

    return-void
.end method

.method private synthetic lambda$createView$0(Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;)V
    .registers 5

    .line 114
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTemplateChanged template: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;->getTemplate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mTemplateListener:Lcom/transsion/camera/feature/mode/aigc/setting/ui/ITemplateListener;

    if-eqz v0, :cond_25

    .line 116
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;->getTemplate()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/ITemplateListener;->onTemplateSelected(Ljava/lang/String;)V

    .line 118
    :cond_25
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AbstractAIGCSettingUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_30

    .line 119
    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;->getTemplate()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_30
    return-void
.end method

.method private updateLayout()V
    .registers 4

    .line 94
    invoke-static {}, Lcom/transsion/camera/app/common/CommonConfigUtil;->isNewCamera4()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mTemplateAdapter:Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter;

    if-eqz v0, :cond_17

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_17

    .line 96
    iget v2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AbstractAIGCSettingUI;->mOrientation:I

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AbstractAIGCSettingUI;->viewVisible(Landroid/view/View;)Z

    move-result p0

    invoke-virtual {v0, v2, p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter;->setOrientation(IZ)V

    :cond_17
    return-void
.end method


# virtual methods
.method public createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .registers 4

    .line 103
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AbstractAIGCSettingUI;->createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    if-nez p2, :cond_d

    .line 106
    sget-object p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "createView parent is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 110
    :cond_d
    sget v0, Lcom/transsion/camera/feature/aigc/R$layout;->aigc_effect_template_layout:I

    invoke-virtual {p1, v0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 111
    sget p1, Lcom/transsion/camera/feature/aigc/R$id;->aigc_template_list:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 113
    new-instance p1, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter;

    invoke-static {}, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo;->getItems()Ljava/util/List;

    move-result-object p2

    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;)V

    invoke-direct {p1, p2, v0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter;-><init>(Ljava/util/List;Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter$OnItemClickListener;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mTemplateAdapter:Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter;

    return-void
.end method

.method public bridge synthetic initSettingUI(II)V
    .registers 3

    .line 37
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AbstractAIGCSettingUI;->initSettingUI(II)V

    return-void
.end method

.method public onIndicatorClick(Ljava/lang/String;)V
    .registers 5

    .line 213
    sget-object v0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIndicatorClick indicator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 215
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mTemplateAdapter:Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter;

    if-nez v1, :cond_1f

    goto :goto_36

    .line 221
    :cond_1f
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo;->getFirstItem(Ljava/lang/String;)Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 223
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mTemplateAdapter:Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter;->getPosition(Lcom/transsion/camera/feature/mode/aigc/info/ItemInfo;)I

    move-result p1

    if-ltz p1, :cond_35

    const/4 v0, 0x1

    .line 225
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mIndicatorClickedScroll:Z

    .line 226
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_35
    return-void

    .line 216
    :cond_36
    :goto_36
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIndicatorClick error, mRecyclerView: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mTemplateAdapter: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mTemplateAdapter:Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 2

    .line 89
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AbstractAIGCSettingUI;->onOrientationChanged(I)V

    .line 90
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->updateLayout()V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 4

    .line 71
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AbstractAIGCSettingUI;->onScreenFormChanged(IZ)V

    .line 72
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_27

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mListItemDecoration:Lcom/transsion/camera/feature/mode/aigc/setting/ui/decoration/ListItemDecoration;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 74
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mListItemDecorationExpanded:Lcom/transsion/camera/feature/mode/aigc/setting/ui/decoration/ListItemDecoration;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const/4 p2, 0x1

    .line 75
    iget v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AbstractAIGCSettingUI;->mScreenFormType:I

    if-ne p2, v0, :cond_20

    .line 76
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mListItemDecorationExpanded:Lcom/transsion/camera/feature/mode/aigc/setting/ui/decoration/ListItemDecoration;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto :goto_27

    .line 78
    :cond_20
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mListItemDecoration:Lcom/transsion/camera/feature/mode/aigc/setting/ui/decoration/ListItemDecoration;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 81
    :cond_27
    :goto_27
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mTemplateAdapter:Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter;

    if-eqz p2, :cond_33

    .line 82
    invoke-virtual {p2, p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter;->setScreenFormType(I)V

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mTemplateAdapter:Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_33
    return-void
.end method

.method public bridge synthetic setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .registers 2

    .line 37
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AbstractAIGCSettingUI;->setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setTemplateListener(Lcom/transsion/camera/feature/mode/aigc/setting/ui/ITemplateListener;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mTemplateListener:Lcom/transsion/camera/feature/mode/aigc/setting/ui/ITemplateListener;

    return-void
.end method

.method public setupView()V
    .registers 6

    .line 126
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AbstractAIGCSettingUI;->setupView()V

    .line 128
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_f

    .line 129
    sget-object p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "setupView mRecyclerView is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_f
    const/4 v1, 0x0

    .line 133
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mIndicatorClickedScroll:Z

    const/4 v2, 0x0

    .line 135
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mListItemDecoration:Lcom/transsion/camera/feature/mode/aigc/setting/ui/decoration/ListItemDecoration;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mListItemDecorationExpanded:Lcom/transsion/camera/feature/mode/aigc/setting/ui/decoration/ListItemDecoration;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    const/4 v0, 0x1

    .line 139
    iget v2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AbstractAIGCSettingUI;->mScreenFormType:I

    if-ne v0, v2, :cond_31

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mListItemDecorationExpanded:Lcom/transsion/camera/feature/mode/aigc/setting/ui/decoration/ListItemDecoration;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    goto :goto_38

    .line 142
    :cond_31
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mListItemDecoration:Lcom/transsion/camera/feature/mode/aigc/setting/ui/decoration/ListItemDecoration;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 145
    :goto_38
    new-instance v0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI$LinearLayoutManager;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 146
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1, v1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI$LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 147
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 149
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI$1;

    invoke-direct {v2, p0, v0}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI$1;-><init>(Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI$LinearLayoutManager;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 185
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mTemplateAdapter:Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 187
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AbstractAIGCSettingUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v1, :cond_94

    .line 188
    invoke-interface {v1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v1

    .line 189
    sget-object v2, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setupView template: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 190
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_94

    .line 191
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mTemplateAdapter:Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter;

    invoke-virtual {v2, v1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter;->setSelect(Ljava/lang/String;)V

    .line 192
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mTemplateAdapter:Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter;->getSelectPosition()I

    move-result v2

    if-ltz v2, :cond_94

    .line 194
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    .line 195
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mTemplateListener:Lcom/transsion/camera/feature/mode/aigc/setting/ui/ITemplateListener;

    if-eqz p0, :cond_94

    .line 196
    invoke-interface {p0, v1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/ITemplateListener;->onTemplateSelected(Ljava/lang/String;)V

    :cond_94
    return-void
.end method

.method public updateLowLight(Z)V
    .registers 2

    .line 205
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AbstractAIGCSettingUI;->updateLowLight(Z)V

    .line 206
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AIGCTemplateSettingUI;->mTemplateAdapter:Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter;

    if-eqz p0, :cond_a

    .line 207
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/adapter/TemplateAdapter;->updateLowLight(Z)V

    :cond_a
    return-void
.end method

.method public bridge synthetic updateVisibility(Z)V
    .registers 2

    .line 37
    invoke-super {p0, p1}, Lcom/transsion/camera/feature/mode/aigc/setting/ui/AbstractAIGCSettingUI;->updateVisibility(Z)V

    return-void
.end method
