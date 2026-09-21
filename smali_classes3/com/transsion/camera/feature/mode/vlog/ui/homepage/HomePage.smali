.class public Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/vlog/ui/homepage/IHomePage;
.implements Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore;


# static fields
.field private static final ENTER_ANIMATION_TIME:I = 0xc8

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private final mContext:Landroid/content/Context;

.field private mCurrentPage:I
    .annotation build Lcom/transsion/camera/feature/mode/vlog/IVlog$Page;
    .end annotation
.end field

.field private mDemoDisplayUI:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;

.field private mDraftEntryButton:Landroid/widget/TextView;

.field private final mDraftEntryListener:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/IHomePage$IDraftEntryListener;

.field private mDraftRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private final mDraftStore:Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;

.field private mIsPreviewSwitchOn:Z

.field private final mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

.field private mOrientation:I

.field private mScreenFormType:I

.field private mTemplateDisplayUI:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;

.field private mTemplateRootView:Landroid/widget/FrameLayout;


# direct methods
.method public static synthetic $r8$lambda$agOOKoMuDibWWy7cWaSZnKV-iWw(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->onDraftEntryClick(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Vlog_HomePageUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;IILcom/transsion/camera/feature/mode/vlog/ui/homepage/IHomePage$IDraftEntryListener;Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;)V
    .registers 8

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mCurrentPage:I

    .line 56
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 57
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getAboveMainCtrlInflateRoot()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    .line 58
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mDraftStore:Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;

    .line 60
    iput-object p5, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mDraftEntryListener:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/IHomePage$IDraftEntryListener;

    .line 61
    iput p4, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mOrientation:I

    .line 62
    iput p3, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mScreenFormType:I

    .line 63
    new-instance p2, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;

    invoke-direct {p2, p1, p6, p3, p4}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;-><init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/vlog/IVlogUIControl$IOperationControl;II)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mDemoDisplayUI:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;

    .line 64
    new-instance p2, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;

    invoke-direct {p2, p1, p3, p4}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;-><init>(Lcom/transsion/camera/app/common/IAppUI;II)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mTemplateDisplayUI:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;

    return-void
.end method

.method private hideHomePageView()V
    .registers 4

    .line 210
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mTemplateDisplayUI:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mDemoDisplayUI:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mDraftEntryButton:Landroid/widget/TextView;

    if-nez v1, :cond_d

    goto :goto_1d

    :cond_d
    const/16 v1, 0x8

    .line 217
    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mDemoDisplayUI:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->setVisibility(I)V

    .line 219
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mDraftEntryButton:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 213
    :cond_1d
    :goto_1d
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[hideHomePageView] mTemplateDisplayUI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mTemplateDisplayUI:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ,mDemoDisplayUI :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mDemoDisplayUI:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ,mDraftEntryButton :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mDraftEntryButton:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private initDraftEntry()V
    .registers 3

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mTemplateRootView:Landroid/widget/FrameLayout;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->draft_entrance_button_rotate_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mDraftRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mTemplateRootView:Landroid/widget/FrameLayout;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->draft_entrance_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mDraftEntryButton:Landroid/widget/TextView;

    .line 81
    new-instance v1, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;)V

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;->setOnclickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private onDraftEntryClick(Landroid/view/View;)V
    .registers 2

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mDraftEntryListener:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/IHomePage$IDraftEntryListener;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/IHomePage$IDraftEntryListener;->onDraftClick()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 4

    .line 187
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "enter home page"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mTemplateDisplayUI:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mDemoDisplayUI:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mTemplateDisplayUI:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->setTemplateDetailEnable(Z)V

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mDraftStore:Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/draft/DraftStore;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mDraftEntryButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mDraftEntryButton:Landroid/widget/TextView;

    const/16 v0, 0xc8

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/utils/AnimUtils;->pageChangeAlphaAnim(Landroid/view/View;I)V

    return-void

    .line 197
    :cond_2d
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mDraftEntryButton:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public exit()V
    .registers 3

    .line 203
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "exit home page"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mTemplateDisplayUI:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->exit()V

    .line 206
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->hideHomePageView()V

    return-void
.end method

.method public init()V
    .registers 5

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/vlog/R$layout;->template_view_layout:I

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mModeAboveMainCtrlInflateRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/feature/vlog/R$id;->template_view_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mTemplateRootView:Landroid/widget/FrameLayout;

    .line 72
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->initDraftEntry()V

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mDemoDisplayUI:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->init()V

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mTemplateDisplayUI:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mTemplateRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->init(Landroid/view/ViewGroup;)V

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->updateDraftLayout(Z)V

    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4a

    const/4 v1, 0x1

    if-eq p1, v1, :cond_42

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4a

    const/4 v2, 0x3

    if-eq p1, v2, :cond_42

    const/4 v2, 0x6

    if-eq p1, v2, :cond_4a

    const/4 v2, 0x7

    if-eq p1, v2, :cond_42

    const/16 v2, 0x9

    if-eq p1, v2, :cond_42

    const/16 v2, 0x1c

    if-eq p1, v2, :cond_4a

    const/16 v2, 0x92

    if-eq p1, v2, :cond_3e

    packed-switch p1, :pswitch_data_52

    goto :goto_51

    .line 125
    :pswitch_22
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mIsPreviewSwitchOn:Z

    .line 126
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->updateDraftLayout(Z)V

    return-void

    .line 129
    :pswitch_28
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mIsPreviewSwitchOn:Z

    .line 130
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->updateDraftLayout(Z)V

    return-void

    .line 120
    :pswitch_2e
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mTemplateDisplayUI:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;

    if-eqz p0, :cond_51

    .line 121
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->setTemplateDetailEnable(Z)V

    return-void

    .line 115
    :pswitch_36
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mTemplateDisplayUI:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;

    if-eqz p0, :cond_51

    .line 116
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->setTemplateDetailEnable(Z)V

    return-void

    .line 133
    :cond_3e
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->hideHomePageView()V

    return-void

    .line 110
    :cond_42
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mTemplateDisplayUI:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;

    if-eqz p0, :cond_51

    .line 111
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->setEnable(Z)V

    return-void

    .line 101
    :cond_4a
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mTemplateDisplayUI:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;

    if-eqz p0, :cond_51

    .line 102
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->setEnable(Z)V

    :cond_51
    :goto_51
    return-void

    :pswitch_data_52
    .packed-switch 0x271b
        :pswitch_36
        :pswitch_2e
        :pswitch_28
        :pswitch_22
    .end packed-switch
.end method

.method public onScreenFormChanged(IZ)V
    .registers 4

    .line 235
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mScreenFormType:I

    if-eq v0, p1, :cond_13

    .line 236
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mScreenFormType:I

    .line 237
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->updateDraftLayout(Z)V

    .line 238
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mDemoDisplayUI:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->onScreenFormChanged(IZ)V

    .line 239
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mTemplateDisplayUI:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->onScreenFormChanged(IZ)V

    :cond_13
    return-void
.end method

.method public pause()V
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mDemoDisplayUI:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;

    if-eqz v0, :cond_7

    .line 161
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->pause()V

    .line 164
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mTemplateDisplayUI:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;

    if-eqz p0, :cond_e

    .line 165
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->pause()V

    :cond_e
    return-void
.end method

.method public resetTempDisplayDefault()V
    .registers 1

    .line 254
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mTemplateDisplayUI:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->resetLocation()V

    return-void
.end method

.method public resume()V
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mDemoDisplayUI:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;

    if-eqz v0, :cond_7

    .line 150
    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->resume()V

    .line 153
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mTemplateDisplayUI:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;

    if-eqz p0, :cond_e

    .line 154
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->resume()V

    :cond_e
    return-void
.end method

.method public setSource(I)V
    .registers 2

    .line 171
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mDemoDisplayUI:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;

    if-eqz p0, :cond_7

    .line 172
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->setSource(I)V

    :cond_7
    return-void
.end method

.method public setStoreValueMonitor(Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;)V
    .registers 3

    .line 229
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mDemoDisplayUI:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->setStoreValueMonitor(Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;)V

    .line 230
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mTemplateDisplayUI:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->setStoreValueMonitor(Lcom/transsion/camera/feature/mode/vlog/cache/ISettingStore$ISettingMonitor;)V

    return-void
.end method

.method public setTemplateListener(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/IHomePage$ITemplateListener;)V
    .registers 2

    .line 224
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mTemplateDisplayUI:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->setTemplateListener(Lcom/transsion/camera/feature/mode/vlog/ui/homepage/IHomePage$ITemplateListener;)V

    return-void
.end method

.method public unInit()V
    .registers 2

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mDemoDisplayUI:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->unInit()V

    .line 179
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mTemplateDisplayUI:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->unInit()V

    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mDemoDisplayUI:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;

    .line 182
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mTemplateDisplayUI:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;

    return-void
.end method

.method public updateCurrentPage(I)V
    .registers 2
    .param p1    # I
        .annotation build Lcom/transsion/camera/feature/mode/vlog/IVlog$Page;
        .end annotation
    .end param

    .line 90
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mCurrentPage:I

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mDemoDisplayUI:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->updateCurrentPage(I)V

    return-void
.end method

.method public updateDraftLayout(Z)V
    .registers 7

    .line 258
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mDraftRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    if-nez p1, :cond_5

    return-void

    .line 261
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, 0x0

    .line 262
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 263
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mScreenFormType:I

    const/4 v2, 0x1

    const/16 v3, 0x51

    const/16 v4, 0x31

    if-ne v1, v2, :cond_75

    .line 264
    iget v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mOrientation:I

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_5b

    const/16 v2, 0xb4

    if-eq v1, v2, :cond_4a

    const/16 v2, 0x10e

    if-eq v1, v2, :cond_37

    .line 279
    iput v4, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 280
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_draft_top_margin_expand_0:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_6d

    :cond_37
    const/16 v1, 0x15

    .line 274
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 275
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_draft_top_margin_expand_90:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_6d

    .line 270
    :cond_4a
    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 271
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_draft_top_margin_expand_0:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_6d

    :cond_5b
    const/16 v1, 0x13

    .line 266
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 267
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_draft_top_margin_expand_90:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 283
    :goto_6d
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mDraftRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mOrientation:I

    invoke-virtual {v1, v2, v0}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    goto :goto_c8

    :cond_75
    const/4 v2, 0x3

    if-ne v1, v2, :cond_9e

    .line 285
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mIsPreviewSwitchOn:Z

    if-eqz v0, :cond_8d

    .line 286
    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 287
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_draft_bottom_margin_hover:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_c8

    .line 289
    :cond_8d
    iput v4, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 290
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_draft_top_margin_hover:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_c8

    :cond_9e
    if-eqz v1, :cond_a3

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c8

    .line 294
    :cond_a3
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;

    move-result-object v1

    const-wide v2, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    invoke-interface {v1, v2, v3}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getTopBarHeight(D)I

    move-result v1

    .line 295
    iput v4, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 296
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/vlog/R$dimen;->vlog_draft_top_margin_increment:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 297
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mDraftRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {v1, v0, v0}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    .line 299
    :cond_c8
    :goto_c8
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mDraftRotateLayout:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateOrientation(I)V
    .registers 4

    .line 245
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mOrientation:I

    if-eq v0, p1, :cond_1a

    .line 246
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mOrientation:I

    .line 247
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mScreenFormType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->updateDraftLayout(Z)V

    .line 248
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mDemoDisplayUI:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->updateOrientation(I)V

    .line 249
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mTemplateDisplayUI:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/TemplateDisplayUI;->onOrientationChanged(I)V

    :cond_1a
    return-void
.end method

.method public updateSelectedTemplate(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V
    .registers 2

    .line 142
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/HomePage;->mDemoDisplayUI:Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;

    if-eqz p0, :cond_7

    .line 143
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/ui/homepage/DemoDisplayUI;->updateSelectedTemplate(Lcom/transsion/camera/feature/mode/vlog/bean/TemplateWrapItemData;)V

    :cond_7
    return-void
.end method
