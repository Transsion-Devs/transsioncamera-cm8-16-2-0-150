.class public Lcom/transsion/camera/feature/imageryguide/GuideUIManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mCacheManager:Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;

.field private final mCancelRequestListener:Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$ICancelRequestListener;

.field private mDetailGuideFragment:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;

.field private mFragmentCallBack:Lcom/transsion/camera/manager/BaseImageryGuideManager$IFragmentCallBack;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private final mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

.field private mImageryGuideFragment:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;

.field private mInteractionCallBack:Lcom/transsion/camera/manager/BaseImageryGuideManager$IInteractionCallBack;

.field private final mRootId:I

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

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "GuideUIManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;ILcom/transsion/camera/feature/imageryguide/cache/CacheManager;Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$ICancelRequestListener;)V
    .registers 7

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p2, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mFragmentManager:Landroid/app/FragmentManager;

    .line 44
    iput p3, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mRootId:I

    .line 45
    iput-object p4, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mCacheManager:Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;

    .line 46
    iput-object p5, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

    .line 47
    iput-object p6, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mCancelRequestListener:Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$ICancelRequestListener;

    return-void
.end method

.method private hasCurrentGuideFragment(Ljava/lang/String;)Z
    .registers 6

    .line 124
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mFragmentManager:Landroid/app/FragmentManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 128
    :cond_6
    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_25

    .line 130
    iget-object v3, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3, v2}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v3

    if-nez v3, :cond_16

    goto :goto_22

    .line 134
    :cond_16
    invoke-interface {v3}, Landroid/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_25
    return v1
.end method

.method private initDetailFragment(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Fragment;
    .registers 4

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mDetailGuideFragment:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;

    .line 97
    invoke-static {p1, p2}, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mDetailGuideFragment:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;

    .line 98
    iget-object p2, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mCacheManager:Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;->setCacheManager(Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;)V

    .line 99
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mDetailGuideFragment:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;

    iget-object p2, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mSupportModes:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;->setSupportModeEntry(Ljava/util/List;)V

    .line 100
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mDetailGuideFragment:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;

    iget-object p2, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mInteractionCallBack:Lcom/transsion/camera/manager/BaseImageryGuideManager$IInteractionCallBack;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;->setOnSwitchModeListener(Lcom/transsion/camera/manager/BaseImageryGuideManager$IInteractionCallBack;)V

    .line 101
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mDetailGuideFragment:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;

    iget-object p2, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;->setGuideManagerListener(Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;)V

    .line 102
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mDetailGuideFragment:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;

    iget-object p2, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mCancelRequestListener:Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$ICancelRequestListener;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;->setCancelRequestListener(Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$ICancelRequestListener;)V

    .line 103
    iget-object p1, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mDetailGuideFragment:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;

    iget-object p2, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mFragmentCallBack:Lcom/transsion/camera/manager/BaseImageryGuideManager$IFragmentCallBack;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;->setOnFragmentListener(Lcom/transsion/camera/manager/BaseImageryGuideManager$IFragmentCallBack;)V

    .line 105
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mDetailGuideFragment:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;

    return-object p0
.end method

.method private initImageryFragment()Landroid/app/Fragment;
    .registers 3

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mImageryGuideFragment:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;

    .line 85
    invoke-static {}, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;->newInstance()Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mImageryGuideFragment:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;

    .line 86
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mCacheManager:Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;->setCacheManager(Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;)V

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mImageryGuideFragment:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mSupportModes:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;->setSupportModeEntry(Ljava/util/List;)V

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mImageryGuideFragment:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;->setGuideManagerListener(Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;)V

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mImageryGuideFragment:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mCancelRequestListener:Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$ICancelRequestListener;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;->setCancelRequestListener(Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$ICancelRequestListener;)V

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mImageryGuideFragment:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;

    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mFragmentCallBack:Lcom/transsion/camera/manager/BaseImageryGuideManager$IFragmentCallBack;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;->setOnFragmentExitListener(Lcom/transsion/camera/manager/BaseImageryGuideManager$IFragmentCallBack;)V

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mImageryGuideFragment:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;

    return-object p0
.end method


# virtual methods
.method public enterFragment(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    .line 62
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterFragment : @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_2d

    .line 67
    const-string v0, "com.transsion.camera.feature.mode.autoscenedetection.ASDModeEntry"

    .line 68
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    if-nez p3, :cond_25

    goto :goto_2d

    .line 73
    :cond_25
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->initDetailFragment(Ljava/lang/String;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    .line 75
    const-string p2, "detail_guide_fragment"

    :goto_2b
    move-object p3, p2

    goto :goto_34

    .line 69
    :cond_2d
    :goto_2d
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->initImageryFragment()Landroid/app/Fragment;

    move-result-object p1

    .line 71
    const-string p2, "imagery_guide_fragment"

    goto :goto_2b

    .line 77
    :goto_34
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 78
    iget p0, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mRootId:I

    invoke-virtual {v0, p0, p1, p2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 79
    invoke-virtual {v0, p3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 80
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public exitImageryGuideFragment()V
    .registers 6

    .line 180
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mFragmentManager:Landroid/app/FragmentManager;

    if-nez v0, :cond_5

    goto :goto_2a

    .line 184
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v2, "imagery_guide_fragment"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 186
    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v3, "detail_guide_fragment"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-eqz v1, :cond_1f

    .line 188
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f
    if-eqz v2, :cond_24

    .line 192
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    :cond_24
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2b

    :goto_2a
    return-void

    .line 199
    :cond_2b
    iget-object v1, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 200
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_36
    :goto_36
    if-ge v3, v2, :cond_46

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Landroid/app/Fragment;

    if-eqz v4, :cond_36

    .line 202
    invoke-virtual {v1, v4}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_36

    .line 205
    :cond_46
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 206
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mFragmentManager:Landroid/app/FragmentManager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    return-void
.end method

.method public onBackPressed()Z
    .registers 3

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mDetailGuideFragment:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    const-string v0, "detail_guide_fragment"

    .line 110
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->hasCurrentGuideFragment(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 111
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mDetailGuideFragment:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;->exitDetailGuideFragment()V

    return v1

    .line 114
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mImageryGuideFragment:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;

    if-eqz v0, :cond_25

    const-string v0, "imagery_guide_fragment"

    .line 115
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->hasCurrentGuideFragment(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 116
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mImageryGuideFragment:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;->exitImageryGuideFragment()V

    return v1

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method public onImageryConfigSucceed()V
    .registers 2

    .line 170
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mImageryGuideFragment:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;

    if-eqz v0, :cond_7

    .line 171
    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;->onImageryConfigSucceed()V

    .line 174
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mDetailGuideFragment:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;

    if-eqz p0, :cond_e

    .line 175
    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;->onImageryConfigSucceed()V

    :cond_e
    return-void
.end method

.method public onRequestFailed()V
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mImageryGuideFragment:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;

    if-eqz v0, :cond_7

    .line 152
    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;->onRequestFailed()V

    .line 154
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mDetailGuideFragment:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;

    if-eqz p0, :cond_e

    .line 155
    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;->onRequestFailed()V

    :cond_e
    return-void
.end method

.method public onRequestSourceFailed(Ljava/lang/String;I)V
    .registers 4

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mImageryGuideFragment:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->getDetailPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mImageryGuideFragment:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;->onRequestSourceFailed()V

    .line 163
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mDetailGuideFragment:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;

    if-eqz v0, :cond_26

    .line 164
    invoke-static {}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->getDetailPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 165
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mDetailGuideFragment:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;->onRequestSourceFailed(Ljava/lang/String;I)V

    :cond_26
    return-void
.end method

.method public setOnFragmentListener(Lcom/transsion/camera/manager/BaseImageryGuideManager$IFragmentCallBack;)V
    .registers 2

    .line 147
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mFragmentCallBack:Lcom/transsion/camera/manager/BaseImageryGuideManager$IFragmentCallBack;

    return-void
.end method

.method public setOnSwitchModeListener(Lcom/transsion/camera/manager/BaseImageryGuideManager$IInteractionCallBack;)V
    .registers 2

    .line 143
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mInteractionCallBack:Lcom/transsion/camera/manager/BaseImageryGuideManager$IInteractionCallBack;

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

    .line 216
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mSupportModes:Ljava/util/List;

    return-void
.end method

.method public showNetWeakTips()V
    .registers 1

    .line 220
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mImageryGuideFragment:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;

    if-nez p0, :cond_5

    return-void

    .line 223
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;->showNetWeakTips()V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 210
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[unInit]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 211
    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mImageryGuideFragment:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;

    .line 212
    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mDetailGuideFragment:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;

    return-void
.end method

.method public updateImageryGuideResource(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mImageryGuideFragment:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;

    if-eqz v0, :cond_13

    .line 52
    invoke-static {}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->getDetailPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 53
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mImageryGuideFragment:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;->updateImageryGuideResource()V

    .line 55
    :cond_13
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mDetailGuideFragment:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;

    if-eqz v0, :cond_26

    .line 56
    invoke-static {}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideConstant;->getDetailPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/GuideUIManager;->mDetailGuideFragment:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/DetailGuideFragment;->updateDetailGuideResource(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_26
    return-void
.end method
