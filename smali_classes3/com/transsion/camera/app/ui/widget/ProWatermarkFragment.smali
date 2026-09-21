.class public Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;
.super Lcom/transsion/camera/app/ui/AbstractSettingFragment;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;
.implements Lcom/transsion/camera/app/ui/view/ProWatermarkTabView$IProWatermarkTabListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment$MyPagerAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCurrentModeName:Ljava/lang/String;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

.field private mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

.field private mProEditWatermark:Lcom/transsion/camera/app/ui/widget/ProEditWatermark;

.field private mProWatermarkSwitch:Landroid/widget/RelativeLayout;

.field private mProWatermarkTabView:Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;

.field private final mProWatermarkTopViews:Ljava/util/List;

.field private final mProWatermarkViews:Ljava/util/List;

.field private mSelectIndex:I

.field private mSelectWatermark:Ljava/lang/String;

.field private mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private mWatermarkOn:Z

.field private mWatermarkSwitchWidget:Landroid/widget/Switch;


# direct methods
.method static bridge synthetic -$$Nest$fgetmProWatermarkTopViews(Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mProWatermarkTopViews:Ljava/util/List;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 50
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ProWatermarkFragment"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mProWatermarkTopViews:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mProWatermarkViews:Ljava/util/List;

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mSelectIndex:I

    return-void
.end method

.method private addWatermarkViews()V
    .registers 9

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mProWatermarkViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mProWatermarkTopViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 168
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->currentAIGCMode()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_20

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->currentAIArtMuseumMode()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_20

    .line 171
    :cond_19
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-object v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mProWatermarkConfigItems:[Ljava/lang/String;

    goto :goto_26

    .line 169
    :cond_20
    :goto_20
    new-array v0, v2, [Ljava/lang/String;

    const-string v3, "com.transsion.camera.app.ui.widget.ProGoldWatermark"

    aput-object v3, v0, v1

    :goto_26
    if-eqz v0, :cond_94

    .line 173
    array-length v3, v0

    if-nez v3, :cond_2c

    goto :goto_94

    .line 176
    :cond_2c
    array-length v3, v0

    :goto_2d
    if-ge v1, v3, :cond_9b

    aget-object v4, v0, v1

    .line 177
    invoke-virtual {p0}, Landroid/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;

    if-eqz v4, :cond_91

    .line 179
    sget-object v5, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[addWatermarkViews]: ProWatermarkValue = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->getProWatermarkValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 180
    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mProWatermarkViews:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mProWatermarkTopViews:Ljava/util/List;

    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->getWatermarkView()Landroid/view/View;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v5, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mProWatermarkViews:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    .line 183
    invoke-virtual {v4, v5}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->setIndex(I)V

    .line 184
    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->getProWatermarkValue()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mSelectWatermark:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_81

    .line 185
    iput v5, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mSelectIndex:I

    .line 187
    :cond_81
    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->getProWatermarkValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_91

    .line 188
    check-cast v4, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;

    iput-object v4, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mProEditWatermark:Lcom/transsion/camera/app/ui/widget/ProEditWatermark;

    :cond_91
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 174
    :cond_94
    :goto_94
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[addWatermarkViews]: error! pro watermark items is null!"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 193
    :cond_9b
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment$MyPagerAdapter;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment$MyPagerAdapter;-><init>(Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private currentAIArtMuseumMode()Z
    .registers 2

    .line 384
    const-string v0, "com.transsion.camera.feature.mode.aiartmuseum.AIArtMuseumModeEntry"

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mCurrentModeName:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private currentAIGCMode()Z
    .registers 3

    .line 379
    const-string v0, "com.transsion.camera.feature.mode.aigc.AIGCModeEntry"

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mCurrentModeName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_1d

    .line 380
    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->isIntentFromNegativeScreen()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->isAIGCFromNegativeScreen()Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    return p0

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    return p0
.end method

.method private initProWatermarkView(Lcom/transsion/camera/app/ui/widget/ProWatermarkView;)V
    .registers 2

    .line 198
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private linkAppUI(Lcom/transsion/camera/app/ui/widget/ProWatermarkView;)V
    .registers 2

    .line 202
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    return-void
.end method

.method private setLocationManager(Lcom/transsion/camera/app/ui/widget/ProWatermarkView;)V
    .registers 2

    .line 218
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->setLocationManager(Lcom/transsion/camera/app/common/location/LocationManager;)V

    return-void
.end method

.method private setLocationPermission(Lcom/transsion/camera/app/ui/widget/ProWatermarkView;)V
    .registers 2

    .line 157
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->setLocationPermission(Lcom/transsion/camera/app/common/permission/PermissionManager;)V

    return-void
.end method

.method private setSettingMonitor(Lcom/transsion/camera/app/ui/widget/ProWatermarkView;)V
    .registers 2

    .line 210
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    return-void
.end method

.method private setSettingProvide(Lcom/transsion/camera/app/ui/widget/ProWatermarkView;)V
    .registers 2

    .line 214
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->setSettingProvide(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V

    return-void
.end method

.method private setUpViews(Lcom/transsion/camera/app/ui/widget/ProWatermarkView;)V
    .registers 2

    .line 161
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->setUpViews()V

    return-void
.end method

.method private updateCurrentMode(Lcom/transsion/camera/app/ui/widget/ProWatermarkView;)V
    .registers 2

    .line 206
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mCurrentModeName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->updateCurrentMode(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected addAllPreferences()V
    .registers 1

    return-void
.end method

.method public exitEditAndGoldWaterMarkFragment()V
    .registers 1

    return-void
.end method

.method protected getPreferenceResource()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected getToolbar(Landroid/view/View;)Landroid/widget/Toolbar;
    .registers 2

    .line 338
    sget p0, Lcom/transsion/camera/R$id;->watermark_fragment_toolbar:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Toolbar;

    .line 339
    sget p1, Lcom/transsion/camera/R$string;->pro_watermark_setting_title:I

    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->setTitle(I)V

    .line 340
    invoke-virtual {p0}, Landroid/widget/Toolbar;->hideOverflowMenu()Z

    return-object p0
.end method

.method protected initViews(Landroid/view/View;)V
    .registers 3

    .line 332
    sget v0, Lcom/transsion/camera/R$id;->pro_watermark_fragment_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mFragmentRoot:Landroid/widget/LinearLayout;

    .line 333
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->initViews(Landroid/view/View;)V

    return-void
.end method

.method public linkAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 345
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8

    .line 233
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    if-nez p1, :cond_5

    goto :goto_6b

    .line 236
    :cond_5
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mWatermarkOn:Z

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mWatermarkOn:Z

    .line 237
    const-string v1, "off"

    const-string v2, "on"

    if-nez v0, :cond_13

    move-object v0, v2

    goto :goto_14

    :cond_13
    move-object v0, v1

    .line 238
    :goto_14
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 237
    const-string v5, "key_watermark"

    invoke-virtual {p1, v5, v0, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 239
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mWatermarkSwitchWidget:Landroid/widget/Switch;

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mWatermarkOn:Z

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 240
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mProWatermarkViews:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;

    .line 241
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mWatermarkOn:Z

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->updateCoverViewState(Z)V

    .line 242
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mWatermarkOn:Z

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->updateWatermarkState(Z)V

    goto :goto_2b

    .line 244
    :cond_42
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_6b

    .line 245
    invoke-virtual {p1, v5}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    .line 246
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mWatermarkOn:Z

    if-eqz v0, :cond_4f

    move-object v1, v2

    .line 245
    :cond_4f
    invoke-virtual {p1, v5, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 247
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    const-string v0, "key_pro_watermark"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mProWatermarkViews:Ljava/util/List;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mSelectIndex:I

    .line 248
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->getProWatermarkValue()Ljava/lang/String;

    move-result-object p0

    .line 247
    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6b
    :goto_6b
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 153
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 73
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    new-instance p1, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 75
    new-instance p1, Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

    .line 76
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v0, "2"

    .line 77
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    .line 76
    const-string v2, "key_pro_watermark"

    invoke-virtual {p1, v2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mSelectWatermark:Ljava/lang/String;

    .line 79
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v1

    .line 79
    const-string v2, "key_pro_watermark_select_type"

    invoke-virtual {p1, v2, v0, v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->currentAIGCMode()Z

    move-result v0

    if-nez v0, :cond_4c

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->currentAIArtMuseumMode()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 82
    const-string v0, "1"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 83
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mSelectWatermark:Ljava/lang/String;

    :cond_4c
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    .line 89
    sget p0, Lcom/transsion/camera/R$layout;->pro_watermark_fragment:I

    const/4 p3, 0x0

    .line 90
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .registers 3

    .line 321
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mProWatermarkViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;

    .line 323
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->onDestroy()V

    goto :goto_d

    .line 325
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mProWatermarkViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 326
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mProWatermarkTopViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 327
    invoke-super {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .registers 3

    .line 136
    invoke-super {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onDestroyView()V

    .line 137
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mProWatermarkSwitch:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 138
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    :cond_b
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mProWatermarkTabView:Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;

    if-eqz p0, :cond_12

    .line 141
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->setProWatermarkTabListener(Lcom/transsion/camera/app/ui/view/ProWatermarkTabView$IProWatermarkTabListener;)V

    :cond_12
    return-void
.end method

.method public onEditWatermarkTabClick()V
    .registers 3

    .line 228
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    return-void
.end method

.method public onPageSelected(I)V
    .registers 5

    .line 402
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageSelected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->updateSelectPage(I)V

    .line 406
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_34

    .line 407
    const-string v0, "key_pro_watermark"

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mProWatermarkViews:Ljava/util/List;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mSelectIndex:I

    .line 408
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->getProWatermarkValue()Ljava/lang/String;

    move-result-object p0

    .line 407
    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_34
    return-void
.end method

.method public onPause()V
    .registers 6

    .line 304
    invoke-super {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onPause()V

    .line 305
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    if-nez v0, :cond_8

    return-void

    .line 310
    :cond_8
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->currentAIGCMode()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->currentAIArtMuseumMode()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 311
    :cond_14
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mProWatermarkViews:Ljava/util/List;

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mSelectIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->getProWatermarkValue()Ljava/lang/String;

    move-result-object v0

    .line 312
    sget-object v1, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause, proWatermarkValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 313
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 314
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 313
    const-string v4, "key_pro_watermark_select_type"

    invoke-virtual {v1, v4, v0, v2, v3}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 316
    :cond_44
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mProWatermarkViews:Ljava/util/List;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mSelectIndex:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->onPause()V

    return-void
.end method

.method public onProWatermarkTabClick()V
    .registers 2

    .line 223
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public onResume()V
    .registers 7

    .line 279
    invoke-super {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onResume()V

    .line 280
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mProWatermarkViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;

    .line 281
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->onResume()V

    goto :goto_9

    .line 285
    :cond_19
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    iget-boolean v0, v0, Lcom/transsion/camera/utils/CustomConfigUtil;->mWatermarkDefaultValueOn:Z

    const-string v1, "off"

    const-string v2, "on"

    if-eqz v0, :cond_2e

    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isInTrOrRuMarket()Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_2e

    :cond_2c
    move-object v0, v2

    goto :goto_2f

    :cond_2e
    :goto_2e
    move-object v0, v1

    .line 288
    :goto_2f
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    if-nez v3, :cond_34

    goto :goto_76

    .line 291
    :cond_34
    invoke-virtual {v3}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "key_watermark"

    invoke-virtual {v3, v5, v0, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mWatermarkOn:Z

    .line 293
    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mWatermarkSwitchWidget:Landroid/widget/Switch;

    invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 294
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {v0, v5}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    .line 295
    iget-boolean v3, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mWatermarkOn:Z

    if-eqz v3, :cond_54

    move-object v1, v2

    .line 294
    :cond_54
    invoke-virtual {v0, v5, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mWatermarkSwitchWidget:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mWatermarkOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 297
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mProWatermarkViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_64
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_76

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;

    .line 298
    iget-boolean v2, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mWatermarkOn:Z

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->updateCoverViewState(Z)V

    goto :goto_64

    :cond_76
    :goto_76
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    .line 100
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 101
    new-instance p2, Lcom/transsion/camera/app/common/permission/PermissionManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/transsion/camera/app/common/permission/PermissionManager;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mLocationPermission:Lcom/transsion/camera/app/common/permission/PermissionManager;

    .line 102
    sget p2, Lcom/transsion/camera/R$id;->edit_and_gold_viewpager:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/viewpager/widget/ViewPager;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 103
    sget p2, Lcom/transsion/camera/R$id;->pro_watermark_tab_view_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mProWatermarkTabView:Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;

    .line 104
    sget p2, Lcom/transsion/camera/R$id;->watermark_switch:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mProWatermarkSwitch:Landroid/widget/RelativeLayout;

    .line 105
    sget p2, Lcom/transsion/camera/R$id;->watermark_switch_widget:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mWatermarkSwitchWidget:Landroid/widget/Switch;

    .line 106
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mProWatermarkSwitch:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mProWatermarkTabView:Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->setProWatermarkTabListener(Lcom/transsion/camera/app/ui/view/ProWatermarkTabView$IProWatermarkTabListener;)V

    .line 108
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 109
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/16 p2, 0xc8

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setPageMargin(I)V

    .line 112
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setSaveEnabled(Z)V

    .line 113
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->addWatermarkViews()V

    .line 114
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mProWatermarkViews:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_81

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;

    .line 115
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->linkAppUI(Lcom/transsion/camera/app/ui/widget/ProWatermarkView;)V

    .line 116
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->updateCurrentMode(Lcom/transsion/camera/app/ui/widget/ProWatermarkView;)V

    .line 117
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->setSettingMonitor(Lcom/transsion/camera/app/ui/widget/ProWatermarkView;)V

    .line 118
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->setSettingProvide(Lcom/transsion/camera/app/ui/widget/ProWatermarkView;)V

    .line 119
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->setLocationManager(Lcom/transsion/camera/app/ui/widget/ProWatermarkView;)V

    .line 120
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->setLocationPermission(Lcom/transsion/camera/app/ui/widget/ProWatermarkView;)V

    .line 121
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->initProWatermarkView(Lcom/transsion/camera/app/ui/widget/ProWatermarkView;)V

    .line 122
    invoke-direct {p0, p2}, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->setUpViews(Lcom/transsion/camera/app/ui/widget/ProWatermarkView;)V

    goto :goto_5c

    .line 124
    :cond_81
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget p2, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mSelectIndex:I

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 125
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mProWatermarkTabView:Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;

    if-eqz p1, :cond_a4

    .line 126
    iget p2, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mSelectIndex:I

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;->setCurrentItem(I)V

    .line 127
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->currentAIGCMode()Z

    move-result p1

    if-nez p1, :cond_9d

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->currentAIArtMuseumMode()Z

    move-result p1

    if-eqz p1, :cond_a4

    .line 128
    :cond_9d
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mProWatermarkTabView:Lcom/transsion/camera/app/ui/view/ProWatermarkTabView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 131
    :cond_a4
    iget p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mSelectIndex:I

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->updateSelectPage(I)V

    return-void
.end method

.method protected removeAllPreferences()V
    .registers 1

    return-void
.end method

.method public setLocationManager(Lcom/transsion/camera/app/common/location/LocationManager;)V
    .registers 2

    .line 432
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 388
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setSettingProvide(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V
    .registers 2

    .line 392
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 436
    sget-object v0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "unInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 437
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mIAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 438
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 439
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mProEditWatermark:Lcom/transsion/camera/app/ui/widget/ProEditWatermark;

    if-eqz v1, :cond_16

    .line 440
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/widget/ProEditWatermark;->unInit()V

    .line 441
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mProEditWatermark:Lcom/transsion/camera/app/ui/widget/ProEditWatermark;

    .line 443
    :cond_16
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_22

    .line 444
    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 445
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :cond_22
    return-void
.end method

.method protected unInitViews()V
    .registers 1

    return-void
.end method

.method public updateCurrentMode(Ljava/lang/String;)V
    .registers 2

    .line 375
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mCurrentModeName:Ljava/lang/String;

    return-void
.end method

.method public updateScreenFormType(I)V
    .registers 2

    .line 95
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->updateScreenFormType(I)V

    return-void
.end method

.method public updateSelectPage(I)V
    .registers 4

    .line 413
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mSelectIndex:I

    .line 414
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mProWatermarkViews:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 415
    sget-object p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[updateSelectPage]: proWatermarkViews is null or size is 0"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 418
    :cond_12
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mProWatermarkViews:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;

    .line 419
    iget v1, p0, Lcom/transsion/camera/app/ui/widget/ProWatermarkFragment;->mSelectIndex:I

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/ProWatermarkView;->updateSelectedState(I)V

    goto :goto_18

    :cond_2a
    return-void
.end method
