.class public Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI$ITabSelectListener;
.implements Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupTopUI$SeekBarChangeListener;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mTabSelectCallback:Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI$ITabSelectCallback;

.field private mVideoFaceBeautyMakeupSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private final mVideoItemUIList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$2BrHrAKIorn8FoDmorQiuttgTL8(ILcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;)V
    .registers 2

    .line 99
    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->onOrientationChanged(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$9OlQB2XXr96E4hKyYNFXyv5iq2g(Lcom/transsion/camera/app/common/setting/StatusMonitor;Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;)V
    .registers 2

    .line 58
    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ANFUn9PWfVuMLarrrInDWiWCGqI(Ljava/lang/String;Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;)V
    .registers 2

    .line 64
    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->tabSelectChanged(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Brcj_nX1dMAAymZPXEN702aMtZQ(ILcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;)V
    .registers 2

    .line 134
    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->notifyCameraOperateAction(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$EzVDygO8GQJNdrGeXjT0ku6r3uY(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->lambda$onProgressChanged$3(Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$I_YQp-oBO-qyNAehhB9D_NiRAN0(ZLcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;)V
    .registers 2

    .line 111
    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->setTabEnable(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$JJ_yiY0SkH0TxkPSgLFQXY0I8Jg(Ljava/util/List;Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;)V
    .registers 2

    .line 122
    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->setDeviceSettingData(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R1wgvwBX3enaUm9YUbcK1-sWuIs(ZLcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;)V
    .registers 2

    .line 107
    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->setEnable(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$UX0XN41hEEZpN7-zvRFBnvAlivw(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;)V
    .registers 3

    .line 76
    invoke-virtual {p2, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zi43annYwuWi3e_jcLw0v-EJCIM(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;IILcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->lambda$initItemUI$0(IILcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bo2jrBTyaw9UTEb2REtdRwGlPrY(IZLcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;)V
    .registers 3

    .line 95
    invoke-virtual {p2, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->onScreenFormChanged(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$fDrobYUlkgoYOeVcsPCvGO8Zfok(IZLcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;)V
    .registers 3

    .line 72
    invoke-virtual {p2, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->onProgressChanged(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$sFMgBWf431cweevH8ShSN9tbogY(ZLcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;)V
    .registers 2

    .line 103
    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->updateLowLight(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$umsYkdyQQG1pty3RmwO2NViiZNw(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Landroid/view/ViewGroup;Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;)V
    .registers 4

    .line 80
    invoke-virtual {p3, p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->createItemView(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Landroid/view/ViewGroup;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 37
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoFaceBeautyMakeupItemUIManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 4

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->mVideoItemUIList:Ljava/util/List;

    .line 45
    new-instance p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyItemUI;

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyOptionUISpec;

    invoke-direct {v1, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyOptionUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeupItemUI;

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpOptionUISpec;

    invoke-direct {v1, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpOptionUISpec;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeupItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$initItemUI$0(IILcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;)V
    .registers 4

    .line 51
    invoke-virtual {p3, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->initItemUI(II)V

    .line 52
    invoke-virtual {p3, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->setTabSelectListener(Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI$ITabSelectListener;)V

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->mTabSelectCallback:Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI$ITabSelectCallback;

    invoke-virtual {p3, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->setTabSelectCallback(Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI$ITabSelectCallback;)V

    return-void
.end method

.method private synthetic lambda$onProgressChanged$3(Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;)Z
    .registers 2

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->mVideoFaceBeautyMakeupSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p0, :cond_14

    .line 71
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public createItemView(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Landroid/view/ViewGroup;)V
    .registers 6

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->mVideoItemUIList:Ljava/util/List;

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda13;

    invoke-direct {v1, p1, p2, p3}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda13;-><init>(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Landroid/view/ViewGroup;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 81
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->mTabSelectCallback:Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI$ITabSelectCallback;

    if-eqz p1, :cond_32

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->mVideoItemUIList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_32

    .line 82
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->mTabSelectCallback:Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI$ITabSelectCallback;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->mVideoItemUIList:Ljava/util/List;

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;

    iget-object p2, p2, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->mTabView:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->mVideoItemUIList:Ljava/util/List;

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;->getSettingTitle()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI$ITabSelectCallback;->onTabSelectChanged(Landroid/view/ViewGroup;Ljava/lang/String;)V

    :cond_32
    return-void
.end method

.method public getCurrentSettingValue()Ljava/lang/String;
    .registers 1

    .line 146
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->mVideoFaceBeautyMakeupSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVideoItemUIList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->mVideoItemUIList:Ljava/util/List;

    return-object p0
.end method

.method public initItemUI(II)V
    .registers 5

    .line 50
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->mVideoItemUIList:Ljava/util/List;

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;II)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .registers 3

    .line 134
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->mVideoItemUIList:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 3

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->mVideoItemUIList:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onProgressChanged(IZ)V
    .registers 5

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->mVideoItemUIList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda14;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;)V

    .line 70
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda15;

    invoke-direct {v0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda15;-><init>(IZ)V

    .line 72
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .registers 4

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->mVideoItemUIList:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda2;-><init>(IZ)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onSettingOptionToggle()V
    .registers 2

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->mVideoItemUIList:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda12;-><init>()V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onTabSelectChanged(Ljava/lang/String;)V
    .registers 5

    .line 63
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTabSelectChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->mVideoItemUIList:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda11;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public resetUI()V
    .registers 2

    .line 126
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->mVideoItemUIList:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setDeviceSettingData(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_21

    .line 116
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;

    .line 117
    const-string v2, "key_video_face_beauty_makeup"

    iget-object v3, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->key:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 118
    iget-object v1, v1, Lcom/transsion/camera/app/common/ui/setting/ISettingUI$ISettingData;->iSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->mVideoFaceBeautyMakeupSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    goto :goto_6

    .line 122
    :cond_21
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->mVideoItemUIList:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda17;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda17;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setEnable(Z)V
    .registers 3

    .line 107
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->mVideoItemUIList:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda7;-><init>(Z)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .registers 3

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->mVideoItemUIList:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda8;-><init>(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setTabEnable(Z)V
    .registers 3

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->mVideoItemUIList:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda6;-><init>(Z)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setTabSelectCallback(Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI$ITabSelectCallback;)V
    .registers 2

    .line 142
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->mTabSelectCallback:Lcom/transsion/camera/feature/mode/makeup/ui/AbstractVideoItemUI$ITabSelectCallback;

    return-void
.end method

.method public setUIInterface(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;)V
    .registers 4

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->mVideoItemUIList:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setupItemView()V
    .registers 2

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->mVideoItemUIList:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda10;-><init>()V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public unInit()V
    .registers 2

    .line 130
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->mVideoItemUIList:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda16;-><init>()V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateLowLight(Z)V
    .registers 3

    .line 103
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager;->mVideoItemUIList:Ljava/util/List;

    new-instance v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyMakeupItemUIManager$$ExternalSyntheticLambda5;-><init>(Z)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
