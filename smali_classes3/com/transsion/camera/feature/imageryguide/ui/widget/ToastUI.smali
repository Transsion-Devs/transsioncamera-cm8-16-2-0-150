.class public Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI$UIHandler;
    }
.end annotation


# static fields
.field private static final AUTO_HIDE_DELAY:I = 0xbb8

.field private static final MSG_HIDE_AUTO_TOAST:I = 0x65

.field private static final MSG_SHOW_AUTO_TOAST:I = 0x64

.field protected static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAutoHideToastText:Landroid/widget/TextView;

.field protected mOrientation:I

.field protected mRootView:Landroid/view/ViewGroup;

.field private final mUIHandler:Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI$UIHandler;


# direct methods
.method static bridge synthetic -$$Nest$mdoShowToast(Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;->doShowToast(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideAutoHideToastView(Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;->hideAutoHideToastView()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 17
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Guide_ToastUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .registers 5

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;->mOrientation:I

    .line 31
    new-instance v0, Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI$UIHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI$UIHandler;-><init>(Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;->mUIHandler:Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI$UIHandler;

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private doShowToast(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 5

    .line 81
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doShowToast,info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2f

    .line 83
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;->showAutoHideToastView(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;->mUIHandler:Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI$UIHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;->mUIHandler:Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI$UIHandler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 87
    :cond_2f
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;->mRootView:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private hideAutoHideToastView()V
    .registers 3

    .line 105
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideAutoHideToastView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;->mAutoHideToastText:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;->hideToastView(Landroid/widget/TextView;)V

    return-void
.end method

.method private hideToastView(Landroid/widget/TextView;)V
    .registers 2

    const/16 p0, 0x8

    .line 122
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x0

    .line 123
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private showToastView(Lcom/transsion/camera/app/common/ui/HintInfo;Landroid/widget/TextView;)V
    .registers 4

    const/4 p0, 0x0

    .line 110
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    .line 111
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_13

    .line 112
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_16

    .line 114
    :cond_13
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :goto_16
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/camera/feature/imageryguide/R$color;->imagery_guide_hint_text_color_normal:I

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    .line 117
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    sget p0, Lcom/transsion/camera/feature/imageryguide/R$drawable;->imagery_guide_toast_text_layout_background:I

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .registers 1

    .line 70
    sget p0, Lcom/transsion/camera/feature/imageryguide/R$layout;->imagery_guide_toast_layout:I

    return p0
.end method

.method public hideToast()V
    .registers 2

    .line 91
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;->mUIHandler:Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI$UIHandler;

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .registers 5

    .line 64
    invoke-virtual {p0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;->getLayoutId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 65
    sget p2, Lcom/transsion/camera/feature/imageryguide/R$id;->imagery_guide_toast_root_group:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;->mRootView:Landroid/view/ViewGroup;

    .line 66
    sget p2, Lcom/transsion/camera/feature/imageryguide/R$id;->imagery_guide_auto_hide_toast_text_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;->mAutoHideToastText:Landroid/widget/TextView;

    return-void
.end method

.method protected showAutoHideToastView(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 4

    .line 100
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showAutoHideToastView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;->mAutoHideToastText:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;->showToastView(Lcom/transsion/camera/app/common/ui/HintInfo;Landroid/widget/TextView;)V

    return-void
.end method

.method public showToast(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 4

    .line 74
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 75
    iget-object v0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;->mUIHandler:Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI$UIHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;->mUIHandler:Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI$UIHandler;

    const/16 v0, 0x64

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_19
    return-void
.end method

.method public unInit()V
    .registers 3

    .line 95
    sget-object v0, Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "unInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 96
    iget-object p0, p0, Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI;->mUIHandler:Lcom/transsion/camera/feature/imageryguide/ui/widget/ToastUI$UIHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
