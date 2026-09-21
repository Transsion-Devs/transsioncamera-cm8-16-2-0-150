.class public Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;
.super Landroid/app/Fragment;
.source "SourceFile"


# static fields
.field private static final ARG_DETAIL_NAME:Ljava/lang/String; = "detail_name"

.field private static final ARG_MODE_NAME:Ljava/lang/String; = "mode_name"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCacheManager:Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;

.field private mCancelRequestListener:Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$ICancelRequestListener;

.field private mDetailUI:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

.field private mFragmentCallBack:Lcom/transsion/camera/manager/BaseImageryGuideManager$IFragmentCallBack;

.field private mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

.field private mOnSwitchModeListener:Lcom/transsion/camera/manager/BaseImageryGuideManager$IInteractionCallBack;

.field private mSupportModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Guide_DetailGuideFragment"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private hasGuideFragments()Z
    .registers 6

    .line 158
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    .line 163
    :cond_8
    invoke-virtual {p0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    move v2, v0

    :goto_d
    if-ge v2, v1, :cond_27

    .line 165
    invoke-virtual {p0, v2}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v3

    if-nez v3, :cond_16

    goto :goto_24

    .line 169
    :cond_16
    invoke-interface {v3}, Landroid/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 170
    const-string v4, "imagery_guide_fragment"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    :goto_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_27
    return v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;
    .registers 5

    .line 43
    new-instance v0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;

    invoke-direct {v0}, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;-><init>()V

    .line 44
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 45
    const-string v2, "mode_name"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string p0, "detail_name"

    invoke-virtual {v1, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public exitDetailGuideFragment()V
    .registers 2

    .line 178
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;->mDetailUI:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    if-nez p0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 182
    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->startExitAnimation(Z)V

    return-void
.end method

.method public onBackPressed()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11

    .line 53
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 57
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "mode_name"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "detail_name"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, p1

    move-object v3, v0

    goto :goto_24

    .line 56
    :cond_20
    const-string p1, ""

    move-object v2, p1

    move-object v3, v2

    .line 60
    :goto_24
    new-instance v0, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;->mSupportModes:Ljava/util/List;

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    iget-object v6, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;->mCacheManager:Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;

    iget-object v7, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;->mOnSwitchModeListener:Lcom/transsion/camera/manager/BaseImageryGuideManager$IInteractionCallBack;

    iget-object v8, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;->mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

    invoke-direct/range {v0 .. v8}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/app/FragmentManager;Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;Lcom/transsion/camera/manager/BaseImageryGuideManager$IInteractionCallBack;Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;->mDetailUI:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 66
    sget p3, Lcom/transsion/camera/feature/imageryguide/R$layout;->detail_guide_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 67
    sget p2, Lcom/transsion/camera/feature/imageryguide/R$id;->detail_guide_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;->mDetailUI:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->init(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroy()V
    .registers 4

    .line 98
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;->mDetailUI:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->onDestroy()V

    .line 99
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onDestroy] mFragmentCallBack: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;->mFragmentCallBack:Lcom/transsion/camera/manager/BaseImageryGuideManager$IFragmentCallBack;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ,fragment :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;->hasGuideFragments()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;->mFragmentCallBack:Lcom/transsion/camera/manager/BaseImageryGuideManager$IFragmentCallBack;

    if-eqz v0, :cond_38

    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;->hasGuideFragments()Z

    move-result v0

    if-nez v0, :cond_38

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;->mFragmentCallBack:Lcom/transsion/camera/manager/BaseImageryGuideManager$IFragmentCallBack;

    invoke-interface {v0}, Lcom/transsion/camera/manager/BaseImageryGuideManager$IFragmentCallBack;->onAllGuideFragmentExit()V

    .line 103
    :cond_38
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;->mCancelRequestListener:Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$ICancelRequestListener;

    if-eqz v0, :cond_3f

    .line 104
    invoke-interface {v0}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$ICancelRequestListener;->onCancelDetail()V

    .line 106
    :cond_3f
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .registers 1

    .line 93
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onImageryConfigSucceed()V
    .registers 1

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;->mDetailUI:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    if-eqz p0, :cond_7

    .line 153
    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->onImageryConfigSucceed()V

    :cond_7
    return-void
.end method

.method public onPause()V
    .registers 1

    .line 88
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onRequestFailed()V
    .registers 1

    .line 132
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;->mDetailUI:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    if-eqz p0, :cond_7

    .line 133
    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->onRequestFailed()V

    :cond_7
    return-void
.end method

.method public onRequestSourceFailed(Ljava/lang/String;I)V
    .registers 3

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;->mDetailUI:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    if-eqz p0, :cond_7

    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->onRequestSourceFailed(Ljava/lang/String;I)V

    :cond_7
    return-void
.end method

.method public onResume()V
    .registers 1

    .line 80
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;->mFragmentCallBack:Lcom/transsion/camera/manager/BaseImageryGuideManager$IFragmentCallBack;

    if-eqz p0, :cond_a

    .line 82
    invoke-interface {p0}, Lcom/transsion/camera/manager/BaseImageryGuideManager$IFragmentCallBack;->onGuideFragmentResume()V

    :cond_a
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3

    .line 75
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setCacheManager(Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;->mCacheManager:Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;

    return-void
.end method

.method public setCancelRequestListener(Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$ICancelRequestListener;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;->mCancelRequestListener:Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$ICancelRequestListener;

    return-void
.end method

.method public setGuideManagerListener(Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;)V
    .registers 2

    .line 144
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;->mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

    return-void
.end method

.method public setOnFragmentListener(Lcom/transsion/camera/manager/BaseImageryGuideManager$IFragmentCallBack;)V
    .registers 2

    .line 122
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;->mFragmentCallBack:Lcom/transsion/camera/manager/BaseImageryGuideManager$IFragmentCallBack;

    return-void
.end method

.method public setOnSwitchModeListener(Lcom/transsion/camera/manager/BaseImageryGuideManager$IInteractionCallBack;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;->mOnSwitchModeListener:Lcom/transsion/camera/manager/BaseImageryGuideManager$IInteractionCallBack;

    return-void
.end method

.method public setSupportModeEntry(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 186
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;->mSupportModes:Ljava/util/List;

    return-void
.end method

.method public updateDetailGuideResource(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 126
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;->mDetailUI:Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;

    if-eqz p0, :cond_7

    .line 127
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/feature/imageryguide/ui/DetailGuideUI;->updateDetailGuideResource(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_7
    return-void
.end method
