.class public Lcom/transsion/camera/app/ui/ToastUI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/IToastUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/ToastUI$UIHandler;
    }
.end annotation


# static fields
.field protected static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAutoHideToastText:Landroid/widget/TextView;

.field protected mOrientation:I

.field private mParentView:Landroid/view/View;

.field protected mRootView:Landroid/view/ViewGroup;

.field private final mUIHandler:Lcom/transsion/camera/app/ui/ToastUI$UIHandler;


# direct methods
.method static bridge synthetic -$$Nest$mdoShowToast(Lcom/transsion/camera/app/ui/ToastUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ToastUI;->doShowToast()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoShowToast(Lcom/transsion/camera/app/ui/ToastUI;Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ToastUI;->doShowToast(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 18
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ToastUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/ToastUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/transsion/camera/app/ui/ToastUI;->mOrientation:I

    .line 33
    new-instance v0, Lcom/transsion/camera/app/ui/ToastUI$UIHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/ToastUI$UIHandler;-><init>(Lcom/transsion/camera/app/ui/ToastUI;Lcom/transsion/camera/app/ui/ToastUI-IA;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ToastUI;->mUIHandler:Lcom/transsion/camera/app/ui/ToastUI$UIHandler;

    return-void
.end method

.method private doShowToast()V
    .registers 1

    .line 116
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ToastUI;->hideAutoHideToastView()V

    return-void
.end method

.method private doShowToast(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 5

    .line 97
    sget-object v0, Lcom/transsion/camera/app/ui/ToastUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doShowToast,info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1e

    goto :goto_30

    .line 100
    :cond_1e
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/ToastUI;->showAutoHideToastView(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ToastUI;->mUIHandler:Lcom/transsion/camera/app/ui/ToastUI$UIHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 102
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ToastUI;->mUIHandler:Lcom/transsion/camera/app/ui/ToastUI$UIHandler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 107
    :goto_30
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ToastUI;->mRootView:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private hideAutoHideToastView()V
    .registers 3

    .line 131
    sget-object v0, Lcom/transsion/camera/app/ui/ToastUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "hideAutoHideToastView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ToastUI;->mAutoHideToastText:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/ui/ToastUI;->hideToastView(Landroid/widget/TextView;)V

    return-void
.end method

.method private hideToastView(Landroid/widget/TextView;)V
    .registers 2

    const/16 p0, 0x8

    .line 170
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x0

    .line 171
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private showToastView(Lcom/transsion/camera/app/common/ui/HintInfo;Landroid/widget/TextView;)V
    .registers 7

    const/4 p0, 0x0

    .line 136
    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    .line 137
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 138
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_16

    .line 140
    :cond_13
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :goto_16
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->isHighlight()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 144
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/R$color;->hint_text_color_highlight:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    goto :goto_31

    .line 146
    :cond_27
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/camera/R$color;->hint_text_color_normal:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 148
    :goto_31
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 151
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, p0, p0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 152
    invoke-virtual {p2, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4c

    .line 154
    :cond_49
    invoke-virtual {p2, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 157
    :goto_4c
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->isBackgroundEnabled()Z

    move-result p0

    if-eqz p0, :cond_64

    .line 158
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->isHighlight()Z

    move-result p0

    if-eqz p0, :cond_5e

    .line 159
    sget p0, Lcom/transsion/camera/R$drawable;->hint_text_layout_highlight_background:I

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    .line 161
    :cond_5e
    sget p0, Lcom/transsion/camera/R$drawable;->toast_text_layout_background:I

    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    .line 164
    :cond_64
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .registers 1

    .line 72
    sget p0, Lcom/transsion/camera/R$layout;->toast_layout:I

    return p0
.end method

.method public hideToast()V
    .registers 2

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ToastUI;->mUIHandler:Lcom/transsion/camera/app/ui/ToastUI$UIHandler;

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 66
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ToastUI;->getLayoutId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ToastUI;->mParentView:Landroid/view/View;

    .line 67
    sget p2, Lcom/transsion/camera/R$id;->toast_root_group:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/ToastUI;->mRootView:Landroid/view/ViewGroup;

    return-object p1
.end method

.method public onOrientationChanged(IZ)V
    .registers 3

    .line 93
    iput p1, p0, Lcom/transsion/camera/app/ui/ToastUI;->mOrientation:I

    return-void
.end method

.method public setupViews()V
    .registers 3

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ToastUI;->mRootView:Landroid/view/ViewGroup;

    sget v1, Lcom/transsion/camera/R$id;->auto_hide_toast_text_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ToastUI;->mAutoHideToastText:Landroid/widget/TextView;

    return-void
.end method

.method protected showAutoHideToastView(Lcom/transsion/camera/app/common/ui/HintInfo;)V
    .registers 4

    .line 126
    sget-object v0, Lcom/transsion/camera/app/ui/ToastUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "showAutoHideToastView"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ToastUI;->mAutoHideToastText:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/ToastUI;->showToastView(Lcom/transsion/camera/app/common/ui/HintInfo;Landroid/widget/TextView;)V

    return-void
.end method

.method public showToast(Lcom/transsion/camera/app/common/ui/HintInfo;I)V
    .registers 4

    .line 82
    iput p2, p0, Lcom/transsion/camera/app/ui/ToastUI;->mOrientation:I

    .line 83
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->getType()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_a

    return-void

    .line 85
    :cond_a
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ToastUI;->mUIHandler:Lcom/transsion/camera/app/ui/ToastUI$UIHandler;

    const/16 v0, 0x65

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ToastUI;->mUIHandler:Lcom/transsion/camera/app/ui/ToastUI$UIHandler;

    const/16 p2, 0x64

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public unInit()V
    .registers 3

    .line 121
    sget-object v0, Lcom/transsion/camera/app/ui/ToastUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string/jumbo v1, "unInit"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ToastUI;->mUIHandler:Lcom/transsion/camera/app/ui/ToastUI$UIHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
