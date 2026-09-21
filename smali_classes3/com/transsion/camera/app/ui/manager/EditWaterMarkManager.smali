.class public Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIControl$IEditWaterMarkFragmentControl;
.implements Lcom/transsion/camera/app/common/IScreenFormControl;
.implements Lcom/transsion/camera/app/ui/AbstractSettingFragment$OrientationAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager$EditWaterMarkFragmentStateListenerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mContext:Landroid/content/Context;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

.field mEditWaterMarkSortFragment:Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mRootLayoutId:I

.field protected mScreenFormType:I

.field private mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

.field private mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAppUI(Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;)Lcom/transsion/camera/app/common/IAppUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 36
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "EditWaterMarkManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUI;Landroid/app/FragmentManager;ILandroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .registers 7

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mScreenFormType:I

    .line 56
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    .line 57
    iput-object p2, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mFragmentManager:Landroid/app/FragmentManager;

    .line 58
    iput p3, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mRootLayoutId:I

    .line 59
    iput-object p4, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mContext:Landroid/content/Context;

    .line 60
    iput-object p5, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 61
    invoke-interface {p5}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    return-void
.end method

.method private initEditWaterMarkFragment()V
    .registers 3

    .line 65
    new-instance v0, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    .line 66
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->setOrientationAnimationListener(Lcom/transsion/camera/app/ui/AbstractSettingFragment$OrientationAnimationListener;)V

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    new-instance v1, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager$1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager$1;-><init>(Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->setIFragmentControl(Lcom/transsion/camera/app/ui/EditWaterMarkFragment$IFragmentControl;)V

    .line 79
    new-instance v0, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkSortFragment:Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;

    .line 80
    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->setOrientationAnimationListener(Lcom/transsion/camera/app/ui/AbstractSettingFragment$OrientationAnimationListener;)V

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkSortFragment:Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;

    new-instance v1, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager$2;-><init>(Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->setIFragmentSortControl(Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment$IFragmentSortControl;)V

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    if-eqz v0, :cond_54

    .line 93
    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->linkAppUI(Lcom/transsion/camera/app/common/IAppUI;)V

    .line 94
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->updateScreenFormType(I)V

    .line 95
    new-instance v0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager$EditWaterMarkFragmentStateListenerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager$EditWaterMarkFragmentStateListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager-IA;)V

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->onOrientationChanged(I)V

    .line 100
    :cond_54
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    if-eqz v0, :cond_71

    .line 101
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->setSettingProvide(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getStatusMonitor()Lcom/transsion/camera/app/common/setting/StatusMonitor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->setLocationManager(Lcom/transsion/camera/app/common/location/LocationManager;)V

    .line 105
    :cond_71
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz v0, :cond_78

    .line 106
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    :cond_78
    return-void
.end method

.method private updateScreenFormType(I)V
    .registers 3

    .line 296
    iput p1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mScreenFormType:I

    .line 297
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    if-eqz v0, :cond_9

    .line 298
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->updateScreenFormType(I)V

    .line 300
    :cond_9
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkSortFragment:Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;

    if-eqz p0, :cond_10

    .line 301
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->updateScreenFormType(I)V

    :cond_10
    return-void
.end method


# virtual methods
.method public enterEditWaterMarkFragment(Landroid/app/Fragment;Landroid/content/Context;)V
    .registers 9

    .line 112
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkSortFragment:Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;

    if-nez p1, :cond_b

    .line 113
    :cond_8
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->initEditWaterMarkFragment()V

    .line 116
    :cond_b
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const-string v1, "edit_watermark_fragment"

    if-eqz p1, :cond_29

    .line 117
    sget-object p1, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "[enterEditWaterMarkFragment] fragment is exist, return."

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p0, v1, v0}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    return-void

    .line 121
    :cond_29
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->updateScreenFormType(I)V

    .line 122
    sget-object p1, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[enterEditWaterMarkFragment] mScreenFormType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mScreenFormType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 123
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result p1

    const-string v2, "edit_watermark"

    if-eqz p1, :cond_95

    iget p1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mScreenFormType:I

    if-eq p1, v0, :cond_63

    const/4 v0, 0x2

    if-eq p1, v0, :cond_63

    const/4 v0, 0x4

    if-eq p1, v0, :cond_63

    const/4 v0, 0x5

    if-ne p1, v0, :cond_95

    .line 128
    :cond_63
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    .line 129
    invoke-virtual {v0, p2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getEnterAnimation(Landroid/content/Context;)I

    move-result v0

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    .line 130
    invoke-virtual {v3, p2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getExitAnimation(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    .line 131
    invoke-virtual {v4, p2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getEnterAnimation(Landroid/content/Context;)I

    move-result v4

    iget-object v5, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    .line 132
    invoke-virtual {v5, p2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getExitAnimation(Landroid/content/Context;)I

    move-result p2

    .line 129
    invoke-virtual {p1, v0, v3, v4, p2}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    move-result-object p1

    iget p2, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mRootLayoutId:I

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    .line 133
    invoke-virtual {p1, p2, v0, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 134
    invoke-virtual {p1, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 135
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_c6

    .line 137
    :cond_95
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    .line 138
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getChildInAnim()I

    move-result p2

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    .line 139
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getParentOutAnim()I

    move-result v0

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    .line 140
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getParentInAnim()I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    .line 141
    invoke-virtual {v4}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getChildOutAnim()I

    move-result v4

    .line 138
    invoke-virtual {p1, p2, v0, v3, v4}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    move-result-object p1

    iget p2, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mRootLayoutId:I

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    .line 142
    invoke-virtual {p1, p2, v0, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 143
    invoke-virtual {p1, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 144
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    .line 147
    :goto_c6
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUI;->enterEditWaterMarkFragment()V

    return-void
.end method

.method public enterEditWaterMarkSortFragment(Landroid/app/Fragment;Landroid/content/Context;)V
    .registers 8

    .line 158
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkSortFragment:Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 159
    sget-object p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "enterEditWaterMarkSortFragment return."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 162
    :cond_16
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkSortFragment:Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;

    if-eqz p1, :cond_23

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->getScreenFormType()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->updateScreenFormType(I)V

    .line 165
    :cond_23
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->updateItemsList()V

    .line 166
    sget-object p1, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enterEditWaterMarkSortFragment mScreenFormType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mScreenFormType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 168
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    if-eqz p1, :cond_bd

    .line 169
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isSupportFoldUI(Landroid/content/Context;)Z

    move-result p1

    const-string v0, "edit_watermark_sort_fragment"

    if-eqz p1, :cond_8c

    iget p1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mScreenFormType:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5a

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5a

    const/4 v1, 0x4

    if-eq p1, v1, :cond_5a

    const/4 v1, 0x5

    if-ne p1, v1, :cond_8c

    .line 174
    :cond_5a
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    .line 175
    invoke-virtual {v1, p2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getEnterAnimation(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    .line 176
    invoke-virtual {v2, p2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getExitAnimation(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    .line 177
    invoke-virtual {v3, p2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getEnterAnimation(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    .line 178
    invoke-virtual {v4, p2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getExitAnimation(Landroid/content/Context;)I

    move-result p2

    .line 175
    invoke-virtual {p1, v1, v2, v3, p2}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    move-result-object p1

    iget p2, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mRootLayoutId:I

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkSortFragment:Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;

    .line 179
    invoke-virtual {p1, p2, p0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 180
    invoke-virtual {p0, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 181
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    return-void

    .line 183
    :cond_8c
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    .line 184
    invoke-virtual {p2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getChildInAnim()I

    move-result p2

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    .line 185
    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getParentOutAnim()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    .line 186
    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getParentInAnim()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    .line 187
    invoke-virtual {v3}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getChildOutAnim()I

    move-result v3

    .line 184
    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    move-result-object p1

    iget p2, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mRootLayoutId:I

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkSortFragment:Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;

    .line 188
    invoke-virtual {p1, p2, p0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 189
    invoke-virtual {p0, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 190
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_bd
    return-void
.end method

.method public exitEditWaterMarkFragment()V
    .registers 3

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v0, "edit_watermark_fragment"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    return-void
.end method

.method public exitEditWaterMarkSortFragment()V
    .registers 6

    .line 197
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkSortFragment:Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;

    if-eqz v0, :cond_50

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    if-nez v1, :cond_9

    goto :goto_50

    .line 202
    :cond_9
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->getEditWaterMarkUIItemsSorted()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, ""

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;

    .line 203
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/editwatermark/EditWaterMarkUIItem;->getIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    .line 205
    :cond_33
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v2, "key_edit_watermark_sort"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 206
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    const-string v2, "key_edit_watermark_item"

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 207
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->updateEditWaterMarkUIItemsSorted()V

    return-void

    .line 198
    :cond_50
    :goto_50
    sget-object p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[exitEditWaterMarkSortFragment] Fragment is Null!!!,"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public notifyCameraOperateActionToUI(I)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd()V
    .registers 9

    .line 321
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 322
    sget-object v1, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAnimationEnd size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_a0

    .line 323
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    if-eqz v0, :cond_a0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkSortFragment:Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;

    if-nez v1, :cond_2b

    goto :goto_a0

    .line 328
    :cond_2b
    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "edit_watermark_fragment"

    if-eqz v0, :cond_39

    .line 329
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 332
    :cond_39
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkSortFragment:Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    const-string v3, "edit_watermark_sort_fragment"

    if-eqz v0, :cond_48

    .line 333
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0, v3, v1}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 338
    :cond_48
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_76

    .line 339
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 340
    iget-object v5, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    iget-object v6, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getExitAnimation(Landroid/content/Context;)I

    move-result v5

    if-eq v5, v1, :cond_65

    .line 342
    invoke-virtual {v0, v4, v5, v4, v5}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    .line 344
    :cond_65
    iget v5, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mRootLayoutId:I

    iget-object v6, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    const-string v7, "edit_watermark"

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 345
    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 346
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 349
    :cond_76
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkSortFragment:Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 350
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 351
    iget-object v2, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkSortFragment:Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;

    iget-object v5, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->getExitAnimation(Landroid/content/Context;)I

    move-result v2

    if-eq v2, v1, :cond_91

    .line 353
    invoke-virtual {v0, v4, v2, v4, v2}, Landroid/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    .line 355
    :cond_91
    iget v1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mRootLayoutId:I

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkSortFragment:Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;

    invoke-virtual {v0, v1, p0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 356
    invoke-virtual {p0, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    .line 357
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_a0
    :goto_a0
    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 3

    .line 306
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    if-eqz v0, :cond_7

    .line 307
    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onOrientationChanged(I)V

    .line 309
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkSortFragment:Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;

    if-eqz p0, :cond_e

    .line 310
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->onOrientationChanged(I)V

    :cond_e
    return-void
.end method

.method public setLocationManager(Lcom/transsion/camera/app/common/location/LocationManager;)V
    .registers 2

    .line 278
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    if-eqz p0, :cond_7

    .line 279
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->setLocationmanager(Lcom/transsion/camera/app/common/location/LocationManager;)V

    :cond_7
    return-void
.end method

.method public setRTLDirection(Z)V
    .registers 2

    .line 290
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    if-eqz p0, :cond_7

    .line 291
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->setRTLDirection(Z)V

    :cond_7
    return-void
.end method

.method public setSettingFragmentManager(Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;)V
    .registers 2

    .line 284
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    if-eqz p0, :cond_7

    .line 285
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->setSettingFragmentManager(Lcom/transsion/camera/app/ui/manager/SettingFragmentManager;)V

    :cond_7
    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 2

    .line 259
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    if-eqz p0, :cond_7

    .line 260
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    :cond_7
    return-void
.end method

.method public setSettingProvide(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V
    .registers 2

    .line 255
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    return-void
.end method

.method public setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .registers 2

    .line 265
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    .line 266
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    if-eqz p0, :cond_9

    .line 267
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V

    :cond_9
    return-void
.end method

.method public setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V
    .registers 2

    .line 272
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    if-eqz p0, :cond_7

    .line 273
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/AbstractSettingFragment;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    :cond_7
    return-void
.end method

.method public unInit()V
    .registers 3

    .line 362
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 363
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->unInit()V

    .line 364
    iput-object v1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    .line 366
    :cond_a
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkSortFragment:Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;

    if-eqz v0, :cond_13

    .line 367
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->unInit()V

    .line 368
    iput-object v1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkSortFragment:Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;

    .line 370
    :cond_13
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->setStateListener(Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;)V

    return-void
.end method

.method public updateItemsList()V
    .registers 3

    .line 211
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    if-eqz v0, :cond_30

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkSortFragment:Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;

    if-eqz v1, :cond_30

    .line 212
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->getEditWaterMarkUIItem()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->setItemsList(Ljava/util/List;)V

    .line 213
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkSortFragment:Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->getShowTimeInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->setTimeInfo(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkSortFragment:Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    invoke-virtual {v1}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->getShowCityInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->setCityInfo(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkSortFragment:Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/EditWaterMarkManager;->mEditWaterMarkFragment:Lcom/transsion/camera/app/ui/EditWaterMarkFragment;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/EditWaterMarkFragment;->getTextInfo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/ui/EditWaterMarkSortFragment;->setTextInfo(Ljava/lang/String;)V

    :cond_30
    return-void
.end method
