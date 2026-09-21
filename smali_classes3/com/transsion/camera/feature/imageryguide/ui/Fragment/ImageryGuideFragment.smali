.class public Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;
.super Landroid/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment$IToastUICallBack;
    }
.end annotation


# instance fields
.field private mCacheManager:Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;

.field private mCancelRequestListener:Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$ICancelRequestListener;

.field private mFragmentExitCallBack:Lcom/transsion/camera/manager/BaseImageryGuideManager$IFragmentCallBack;

.field private mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

.field private mImageryGuideUI:Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;

.field private mSupportModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mToastUI:Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;

.field public final mToastUICallBack:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment$IToastUICallBack;


# direct methods
.method static bridge synthetic -$$Nest$fgetmToastUI(Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;)Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;->mToastUI:Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 152
    new-instance v0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment$1;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;->mToastUICallBack:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment$IToastUICallBack;

    return-void
.end method

.method public static newInstance()Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;
    .registers 1

    .line 41
    new-instance v0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;

    invoke-direct {v0}, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public exitImageryGuideFragment()V
    .registers 1

    .line 107
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;->mImageryGuideUI:Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;

    if-nez p0, :cond_5

    return-void

    .line 110
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->startExitAnimation()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10

    .line 46
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    new-instance v0, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;->mSupportModes:Ljava/util/List;

    iget-object v3, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;->mCacheManager:Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;->mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

    iget-object v6, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;->mCancelRequestListener:Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$ICancelRequestListener;

    iget-object v7, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;->mToastUICallBack:Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment$IToastUICallBack;

    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;Landroid/app/FragmentManager;Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$ICancelRequestListener;Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment$IToastUICallBack;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;->mImageryGuideUI:Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 53
    sget p3, Lcom/transsion/camera/feature/imageryguide/R$layout;->imagery_guide_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 54
    sget p2, Lcom/transsion/camera/feature/imageryguide/R$id;->imagery_guide_root:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 55
    iget-object p3, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;->mImageryGuideUI:Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;

    invoke-virtual {p3, p2}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->initView(Landroid/view/View;)V

    .line 56
    new-instance p3, Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;

    invoke-virtual {p0}, Landroid/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    check-cast p2, Landroid/view/ViewGroup;

    invoke-direct {p3, v0, p2}, Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    iput-object p3, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;->mToastUI:Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;

    return-object p1
.end method

.method public onDestroy()V
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;->mImageryGuideUI:Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->onDestroy()V

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;->mFragmentExitCallBack:Lcom/transsion/camera/manager/BaseImageryGuideManager$IFragmentCallBack;

    if-eqz v0, :cond_c

    .line 86
    invoke-interface {v0}, Lcom/transsion/camera/manager/BaseImageryGuideManager$IFragmentCallBack;->onAllGuideFragmentExit()V

    .line 88
    :cond_c
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;->mCancelRequestListener:Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$ICancelRequestListener;

    if-eqz v0, :cond_13

    .line 89
    invoke-interface {v0}, Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$ICancelRequestListener;->onCancel()V

    .line 91
    :cond_13
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .registers 1

    .line 79
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onImageryConfigSucceed()V
    .registers 1

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;->mImageryGuideUI:Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;

    if-eqz p0, :cond_7

    .line 123
    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->onImageryConfigSucceed()V

    :cond_7
    return-void
.end method

.method public onPause()V
    .registers 2

    .line 72
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;->mToastUI:Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;->hideToast()V

    .line 74
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;->mToastUI:Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;->unInit()V

    return-void
.end method

.method public onRequestFailed()V
    .registers 1

    .line 134
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;->mImageryGuideUI:Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;

    if-eqz p0, :cond_7

    .line 135
    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->onRequestFailed()V

    :cond_7
    return-void
.end method

.method public onRequestSourceFailed()V
    .registers 1

    .line 128
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;->mImageryGuideUI:Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;

    if-eqz p0, :cond_7

    .line 129
    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->onRequestSourceFailed()V

    :cond_7
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 63
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;->mFragmentExitCallBack:Lcom/transsion/camera/manager/BaseImageryGuideManager$IFragmentCallBack;

    if-eqz v0, :cond_a

    .line 65
    invoke-interface {v0}, Lcom/transsion/camera/manager/BaseImageryGuideManager$IFragmentCallBack;->onGuideFragmentResume()V

    .line 67
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;->mImageryGuideUI:Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->onResume()V

    return-void
.end method

.method public setCacheManager(Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;->mCacheManager:Lcom/transsion/camera/feature/imageryguide/cache/CacheManager;

    return-void
.end method

.method public setCancelRequestListener(Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$ICancelRequestListener;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;->mCancelRequestListener:Lcom/transsion/camera/feature/imageryguide/ImageryGuideManager$ICancelRequestListener;

    return-void
.end method

.method public setGuideManagerListener(Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;)V
    .registers 2

    .line 99
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;->mGuideManagerListener:Lcom/transsion/camera/feature/imageryguide/callBack/IGuideManagerListener;

    return-void
.end method

.method public setOnFragmentExitListener(Lcom/transsion/camera/manager/BaseImageryGuideManager$IFragmentCallBack;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;->mFragmentExitCallBack:Lcom/transsion/camera/manager/BaseImageryGuideManager$IFragmentCallBack;

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

    .line 140
    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;->mSupportModes:Ljava/util/List;

    return-void
.end method

.method public showNetWeakTips()V
    .registers 3

    .line 144
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;->mToastUI:Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;

    if-nez v0, :cond_5

    return-void

    .line 147
    :cond_5
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    .line 148
    sget v1, Lcom/transsion/camera/feature/imageryguide/R$string;->imagery_guide_net_weak_tips:I

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 149
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;->mToastUI:Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;->showToast(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method public updateImageryGuideResource()V
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/Fragment/ImageryGuideFragment;->mImageryGuideUI:Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/ui/ImageryGuideUI;->updateImageryGuideResource()V

    return-void
.end method
