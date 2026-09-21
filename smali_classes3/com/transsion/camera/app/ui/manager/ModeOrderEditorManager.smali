.class public Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIControl$IOrderEditorFragmentControl;
.implements Lcom/transsion/camera/app/common/IScreenFormControl;
.implements Lcom/transsion/camera/app/ui/AbstractSettingFragment$OrientationAnimationListener;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAllModeResources:Ljava/util/List;

.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mBackCameraModeList:Ljava/util/List;

.field private mCamera:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mFrontCameraModeList:Ljava/util/List;

.field private mIsSecureCamera:Z

.field mModeOrderEditorFragment:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

.field private mModePolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

.field private mModesNumberInTab:Ljava/lang/String;

.field private mRootLayoutId:I

.field protected mScreenFormType:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ModeOrderEditorManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUI;Landroid/app/FragmentManager;ILandroid/content/Context;IZLcom/transsion/camera/app/common/storage/DataStore;)V
    .registers 9

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "0"

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mCamera:Ljava/lang/String;

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mScreenFormType:I

    .line 55
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 56
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mFragmentManager:Landroid/app/FragmentManager;

    .line 57
    iput p3, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mRootLayoutId:I

    .line 58
    iput-object p4, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mContext:Landroid/content/Context;

    .line 59
    new-instance p2, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

    invoke-direct {p2}, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;-><init>()V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModeOrderEditorFragment:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

    .line 60
    invoke-virtual {p2, p0}, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->setOrientationAnimationListener(Lcom/transsion/camera/app/ui/AbstractSettingFragment$OrientationAnimationListener;)V

    .line 61
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModeOrderEditorFragment:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->linkAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 62
    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModeOrderEditorFragment:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

    invoke-virtual {p2, p5}, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->initModesNumber(I)V

    .line 63
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModesNumberInTab:Ljava/lang/String;

    .line 64
    iput-boolean p6, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mIsSecureCamera:Z

    .line 65
    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->updateScreenFormType(I)V

    .line 66
    iput-object p7, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-void
.end method

.method private generateOrderModeList([Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 9

    .line 117
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_2a

    aget-object v2, p1, v1

    .line 120
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/app/common/FeatureResource;

    .line 121
    iget-object v5, v4, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 122
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_2a
    return-object p0
.end method

.method private updateScreenFormType(I)V
    .registers 2

    .line 207
    iput p1, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mScreenFormType:I

    .line 208
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModeOrderEditorFragment:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->updateScreenFormType(I)V

    return-void
.end method


# virtual methods
.method public enterEditorFragment(Landroid/app/Fragment;Landroid/content/Context;)V
    .registers 6

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModeOrderEditorFragment:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 78
    sget-object p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "enterEditorFragment return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 81
    :cond_16
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModeOrderEditorFragment:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

    invoke-virtual {v1, p2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getEnterAnimation(Landroid/content/Context;)I

    move-result v1

    .line 83
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModeOrderEditorFragment:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

    invoke-virtual {v2, p2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getExitAnimation(Landroid/content/Context;)I

    move-result p2

    if-nez p1, :cond_2e

    .line 85
    invoke-virtual {v0, v1, p2, v1, p2}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    goto :goto_5d

    .line 87
    :cond_2e
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_42

    iget p1, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mScreenFormType:I

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3e

    const/4 v2, 0x2

    if-ne p1, v2, :cond_42

    .line 90
    :cond_3e
    invoke-virtual {v0, v1, p2, v1, p2}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    goto :goto_5d

    .line 92
    :cond_42
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModeOrderEditorFragment:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getChildInAnim()I

    move-result p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModeOrderEditorFragment:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

    .line 93
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getParentOutAnim()I

    move-result p2

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModeOrderEditorFragment:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

    .line 94
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getParentInAnim()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModeOrderEditorFragment:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

    .line 95
    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getChildOutAnim()I

    move-result v2

    .line 92
    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    .line 98
    :goto_5d
    iget p1, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mRootLayoutId:I

    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModeOrderEditorFragment:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

    const-string v1, "order_editor"

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    const-string p2, "order_editor_fragment"

    .line 99
    invoke-virtual {p1, p2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    .line 101
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->updateModesList()V

    .line 102
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->enterModeEditorFragment()V

    return-void
.end method

.method public exitEditorFragment()V
    .registers 3

    .line 71
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v0, "order_editor_fragment"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    return-void
.end method

.method public getInitialModesNumberInTab()Ljava/lang/String;
    .registers 1

    .line 190
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModesNumberInTab:Ljava/lang/String;

    return-object p0
.end method

.method public isEditorFragmentShow()Z
    .registers 1

    .line 185
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result p0

    if-lez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isSecureCamera()Z
    .registers 1

    .line 195
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mIsSecureCamera:Z

    return p0
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd()V
    .registers 1

    return-void
.end method

.method public setModeList(Ljava/util/List;Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;)V
    .registers 3

    .line 111
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mAllModeResources:Ljava/util/List;

    .line 112
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModePolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    return-void
.end method

.method public setSettingFragmentManager(Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;)V
    .registers 2

    .line 203
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModeOrderEditorFragment:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->setSettingFragmentManager(Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;)V

    return-void
.end method

.method public setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V
    .registers 2

    .line 199
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModeOrderEditorFragment:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    return-void
.end method

.method public unInit()V
    .registers 1

    .line 226
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModeOrderEditorFragment:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

    if-eqz p0, :cond_7

    .line 227
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->unInit()V

    :cond_7
    return-void
.end method

.method public updateCurrentCamera(Ljava/lang/String;)V
    .registers 2

    .line 130
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mCamera:Ljava/lang/String;

    return-void
.end method

.method public updateModesList()V
    .registers 9

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mCamera:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v0, :cond_81

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mCamera:Ljava/lang/String;

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v4

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_81

    .line 163
    :cond_1d
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModesNumberInTab:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "frontmainmodescount"

    invoke-virtual {v0, v5, v1, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 165
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModePolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    const-string v4, "1"

    invoke-interface {v1, v4}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getDataStoreModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3f

    .line 167
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModePolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    invoke-interface {v1, v4}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 169
    :cond_3f
    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/IAppUI;->isSecureCamera()Z

    move-result v4

    if-eqz v4, :cond_71

    .line 170
    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v6

    const-string v7, "frontarcoreposition"

    invoke-virtual {v4, v7, v5, v6}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-le v4, v2, :cond_71

    .line 172
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 173
    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v4, 0x1

    .line 174
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v4

    invoke-static {v1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v2

    .line 178
    :cond_71
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mAllModeResources:Ljava/util/List;

    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->generateOrderModeList([Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mFrontCameraModeList:Ljava/util/List;

    .line 179
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModeOrderEditorFragment:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mCamera:Ljava/lang/String;

    invoke-virtual {v2, v1, p0, v0}, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->setModeList(Ljava/util/List;Ljava/lang/String;I)V

    return-void

    .line 139
    :cond_81
    :goto_81
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModesNumberInTab:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    const-string v6, "backmainmodescount"

    invoke-virtual {v0, v6, v4, v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 141
    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModePolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    invoke-interface {v4, v1}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getDataStoreModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a1

    .line 143
    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModePolicy:Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;

    invoke-interface {v4, v1}, Lcom/transsion/camera/app/common/mode/IModeSwitchPolicy;->getModeNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 145
    :cond_a1
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->isSecureCamera()Z

    move-result v1

    if-eqz v1, :cond_d0

    move v1, v3

    .line 147
    :goto_aa
    array-length v5, v4

    if-ge v1, v5, :cond_bb

    .line 148
    aget-object v5, v4, v1

    const-string v6, "com.transsion.camera.feature.arcore.ARCoreModeEntry"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b8

    goto :goto_bc

    :cond_b8
    add-int/lit8 v1, v1, 0x1

    goto :goto_aa

    :cond_bb
    move v1, v2

    :goto_bc
    if-le v1, v2, :cond_d0

    .line 154
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 155
    invoke-static {v4, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v1, 0x1

    .line 156
    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v1

    invoke-static {v4, v3, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v2

    .line 160
    :cond_d0
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mAllModeResources:Ljava/util/List;

    invoke-direct {p0, v4, v1}, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->generateOrderModeList([Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mBackCameraModeList:Ljava/util/List;

    .line 161
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mModeOrderEditorFragment:Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/ModeOrderEditorManager;->mCamera:Ljava/lang/String;

    invoke-virtual {v2, v1, p0, v0}, Lcom/transsion/camera/app/ui/ModeOrderEditorFragment;->setModeList(Ljava/util/List;Ljava/lang/String;I)V

    return-void
.end method
