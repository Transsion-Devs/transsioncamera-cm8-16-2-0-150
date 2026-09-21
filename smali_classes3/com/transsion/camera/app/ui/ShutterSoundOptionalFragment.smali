.class public Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;
.super Lcom/transsion/camera/app/ui/AbstractSettingFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffect;,
        Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field protected mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

.field private final mActionSoundLock:Ljava/lang/Object;

.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mEffectSampleIds:[I

.field private mEffectSoundLoaded:Z

.field private mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRecycleViewAdapter:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;

.field private mShutterSoundNameResIds:[I

.field private mShutterSoundOptionalListRoot:Landroid/widget/FrameLayout;

.field private mShutterSoundPaths:[Ljava/lang/String;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;


# direct methods
.method public static synthetic $r8$lambda$YSnaI5HW1t5_FLjoLCZIZ8nr2F8(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;ILcom/transsion/camera/utils/sound/IActionSound;I)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->lambda$loadSoundEffectSource$1(ILcom/transsion/camera/utils/sound/IActionSound;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$jlqQA3w3ji2oyrSGvkS6GVCXFCA()V
    .registers 2

    .line 81
    sget-object v0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[loadSoundEffectSource] -- added"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tXClXIasH1ZQ8sJqqjRaiwlSmhE(Ljava/lang/Runnable;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 206
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_5
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmActionSoundLock(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mActionSoundLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDataStore(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;)Lcom/transsion/camera/app/common/storage/DataStore;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEffectSampleIds(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;)[I
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mEffectSampleIds:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEffectSoundLoaded(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mEffectSoundLoaded:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecycleView(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShutterSoundPaths(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;)[Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mShutterSoundPaths:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStatusMonitor(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;)Lcom/transsion/camera/app/common/setting/StatusMonitor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmEffectSoundLoaded(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mEffectSoundLoaded:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 46
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ShutterSoundOptionalFragment"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 4

    .line 62
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mEffectSoundLoaded:Z

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mActionSoundLock:Ljava/lang/Object;

    .line 63
    iput-object p2, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 64
    new-instance p2, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {p2, p1}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-void
.end method

.method private synthetic lambda$loadSoundEffectSource$1(ILcom/transsion/camera/utils/sound/IActionSound;I)V
    .registers 6

    .line 197
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mActionSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_3
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-nez v1, :cond_d

    .line 199
    invoke-interface {p2, p3}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    goto :goto_11

    :catchall_b
    move-exception p0

    goto :goto_13

    .line 201
    :cond_d
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mEffectSampleIds:[I

    aput p3, p0, p1

    .line 203
    :goto_11
    monitor-exit v0

    return-void

    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_b

    throw p0
.end method

.method private loadSoundEffectSource(Ljava/lang/Runnable;)V
    .registers 7

    .line 191
    sget-object v0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[loadSoundEffectSource] start ++ "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mEffectSoundLoaded:Z

    if-nez v0, :cond_2e

    const/4 v0, 0x0

    .line 193
    :goto_10
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mShutterSoundPaths:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_2b

    .line 195
    iget-object v2, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    if-eqz v2, :cond_28

    .line 196
    aget-object v1, v1, v0

    new-instance v3, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;I)V

    new-instance v4, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$$ExternalSyntheticLambda2;

    invoke-direct {v4, p1}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v2, v1, v3, v4}, Lcom/transsion/camera/utils/sound/IActionSound;->load(Ljava/lang/String;Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;Lcom/transsion/camera/utils/sound/IActionSound$SoundLoadCompleteCallback;)V

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_2b
    const/4 p1, 0x1

    .line 211
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mEffectSoundLoaded:Z

    :cond_2e
    return-void
.end method

.method private unloadSoundEffectSource()V
    .registers 4

    .line 216
    invoke-static {}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->getInstance()Lcom/transsion/camera/utils/threads/WorkThreadPools;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$2;

    const-string/jumbo v2, "unloadSoundEffectSource"

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$2;-><init>(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/threads/WorkThreadPools;->execute(Lcom/transsion/camera/utils/threads/WorkTask;)V

    return-void
.end method

.method private updateSoundOptionalRootLayout(II)V
    .registers 3

    .line 185
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mShutterSoundOptionalListRoot:Landroid/widget/FrameLayout;

    if-nez p0, :cond_b

    .line 186
    sget-object p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[updateSoundOptionalRootLayout] shutterSoundOptionalListRoot is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_b
    return-void
.end method


# virtual methods
.method protected addAllPreferences()V
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

    .line 143
    sget p0, Lcom/transsion/camera/R$id;->shutter_sound_optional_fragment_toolbar:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Toolbar;

    if-eqz p0, :cond_d

    .line 145
    invoke-virtual {p0}, Landroid/widget/Toolbar;->hideOverflowMenu()Z

    :cond_d
    return-object p0
.end method

.method protected initViews(Landroid/view/View;)V
    .registers 3

    .line 125
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->initViews(Landroid/view/View;)V

    .line 126
    sget v0, Lcom/transsion/camera/R$id;->shutter_sound_optional_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mFragmentRoot:Landroid/widget/LinearLayout;

    const v0, 0x102003f

    .line 127
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mShutterSoundOptionalListRoot:Landroid/widget/FrameLayout;

    .line 128
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mOrientation:I

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mScreenFormType:I

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->updateSoundOptionalRootLayout(II)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 180
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 181
    iget p1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mOrientation:I

    iget v0, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mScreenFormType:I

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->updateSoundOptionalRootLayout(II)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 74
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onCreate(Landroid/os/Bundle;)V

    .line 75
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getActionSound()Lcom/transsion/camera/utils/sound/IActionSound;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mActionSound:Lcom/transsion/camera/utils/sound/IActionSound;

    .line 76
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getShutterSoundEffectList()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mShutterSoundPaths:[Ljava/lang/String;

    .line 77
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getShutterSoundNameResIds()[I

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mShutterSoundNameResIds:[I

    .line 78
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mShutterSoundPaths:[Ljava/lang/String;

    array-length p1, p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mEffectSampleIds:[I

    .line 79
    new-instance p1, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->loadSoundEffectSource(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    .line 87
    sget p0, Lcom/transsion/camera/R$layout;->shutter_sound_optional_fragment:I

    const/4 p3, 0x0

    .line 88
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .registers 1

    .line 119
    invoke-super {p0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onDestroy()V

    .line 120
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->unloadSoundEffectSource()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 10

    .line 93
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 94
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p2, v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    iget-object v1, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mShutterSoundNameResIds:[I

    array-length v3, v1

    :goto_16
    if-ge v2, v3, :cond_31

    aget v4, v1, v2

    .line 97
    new-instance v5, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffect;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffect;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 99
    :cond_31
    new-instance v1, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;-><init>(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mRecycleViewAdapter:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;

    .line 100
    sget v0, Lcom/transsion/camera/R$id;->shutter_sound_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    .line 101
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 102
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mRecycleViewAdapter:Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$SoundEffectAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 103
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mRecycleView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment$1;-><init>(Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method protected removeAllPreferences()V
    .registers 1

    return-void
.end method

.method public setSettingFragmentManager(Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->mSettingFragmentManger:Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 170
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V
    .registers 2

    .line 175
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    return-void
.end method

.method public unInit()V
    .registers 2

    const/4 v0, 0x0

    .line 358
    iput-object v0, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 359
    iput-object v0, p0, Lcom/transsion/camera/app/ui/ShutterSoundOptionalFragment;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-void
.end method

.method protected unInitViews()V
    .registers 1

    return-void
.end method
