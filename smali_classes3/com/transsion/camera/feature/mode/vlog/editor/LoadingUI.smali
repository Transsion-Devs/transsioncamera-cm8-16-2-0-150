.class public Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCurrentPage:I

.field private mNeedPlay:Z

.field private mOrientation:I

.field private mPaused:Z

.field private mProgressHintRoot:Landroid/view/ViewGroup;

.field private mProgressHintText:Landroid/widget/TextView;

.field private mProgressViewRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

.field private mScreenFormType:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 18
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Vlog_LoadingUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p2, p0, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->mScreenFormType:I

    .line 31
    iput p3, p0, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->mOrientation:I

    .line 32
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->mCurrentPage:I

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->mPaused:Z

    return-void
.end method

.method private playLoadingView()V
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->mProgressHintRoot:Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    goto :goto_c

    .line 78
    :cond_5
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->mNeedPlay:Z

    if-eqz v0, :cond_c

    .line 79
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->startAnimation()V

    :cond_c
    :goto_c
    return-void
.end method

.method private updateLayoutParams()V
    .registers 4

    .line 53
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->mProgressHintRoot:Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    goto :goto_1a

    .line 57
    :cond_5
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->mScreenFormType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_13

    .line 58
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->mProgressViewRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iget p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->mOrientation:I

    invoke-virtual {v0, p0, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    return-void

    :cond_13
    if-nez v0, :cond_1a

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->mProgressViewRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    invoke-virtual {p0, v2, v2}, Lcom/transsion/camera/app/ui/widget/RotateLayout;->setOrientation(IZ)V

    :cond_1a
    :goto_1a
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 1

    .line 109
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->stopAnimation()V

    return-void
.end method

.method public inflate(Landroid/view/ViewGroup;Z)V
    .registers 4

    .line 37
    sget v0, Lcom/transsion/camera/feature/vlog/R$id;->progress_root_rotate_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/RotateLayout;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->mProgressViewRotate:Lcom/transsion/camera/app/ui/widget/RotateLayout;

    .line 38
    sget v0, Lcom/transsion/camera/feature/vlog/R$id;->progress_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->mProgressHintRoot:Landroid/view/ViewGroup;

    .line 39
    sget v0, Lcom/transsion/camera/feature/vlog/R$id;->progress_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->mProgressHintText:Landroid/widget/TextView;

    .line 40
    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->mNeedPlay:Z

    .line 42
    iget p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->mCurrentPage:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2b

    .line 43
    sget p1, Lcom/transsion/camera/feature/vlog/R$string;->vlog_cutsame_editor_loading_text:I

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->updateText(I)V

    goto :goto_30

    .line 45
    :cond_2b
    sget p1, Lcom/transsion/camera/feature/vlog/R$string;->vlog_freeshot_editor_loading_text:I

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->updateText(I)V

    .line 48
    :goto_30
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->updateLayoutParams()V

    .line 49
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->playLoadingView()V

    return-void
.end method

.method public isShowing()Z
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->mProgressHintRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public onScreenFormChanged(I)V
    .registers 3

    .line 121
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->mScreenFormType:I

    if-ne v0, p1, :cond_5

    return-void

    .line 124
    :cond_5
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->mScreenFormType:I

    .line 125
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->updateLayoutParams()V

    return-void
.end method

.method public onScreenFormChangedHover(I)V
    .registers 2

    return-void
.end method

.method public pause()V
    .registers 2

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->mPaused:Z

    .line 105
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->stopAnimation()V

    return-void
.end method

.method public resume()V
    .registers 2

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->mPaused:Z

    return-void
.end method

.method public startAnimation()V
    .registers 4

    .line 84
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAnimation, mPaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->mPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 85
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->mPaused:Z

    if-nez v0, :cond_22

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->mProgressHintRoot:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_22
    return-void
.end method

.method public stopAnimation()V
    .registers 3

    .line 91
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopAnimation"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 92
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->mProgressHintRoot:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateOrientation(I)V
    .registers 3

    .line 113
    iget v0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->mOrientation:I

    if-ne v0, p1, :cond_5

    return-void

    .line 116
    :cond_5
    iput p1, p0, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->mOrientation:I

    .line 117
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->updateLayoutParams()V

    return-void
.end method

.method public updateText(I)V
    .registers 2

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->mProgressHintText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public updateVisibility(I)V
    .registers 2

    .line 66
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/editor/LoadingUI;->mProgressHintRoot:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
