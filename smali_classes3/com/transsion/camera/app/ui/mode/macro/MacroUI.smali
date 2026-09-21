.class public Lcom/transsion/camera/app/ui/mode/macro/MacroUI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/mode/macro/MacroUI$UIHandler;
    }
.end annotation


# instance fields
.field private mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mContext:Landroid/content/Context;

.field protected mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

.field private mIsWideCamUISupport:Z

.field private final mMainHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$mdoHideHint(Lcom/transsion/camera/app/ui/mode/macro/MacroUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->doHideHint()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoShowHint(Lcom/transsion/camera/app/ui/mode/macro/MacroUI;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->doShowHint()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Ljava/lang/String;)V
    .registers 6

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 22
    new-instance v0, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 33
    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    .line 34
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->mContext:Landroid/content/Context;

    .line 35
    new-instance p2, Lcom/transsion/camera/app/ui/mode/macro/MacroUI$UIHandler;

    invoke-direct {p2, p0, p0}, Lcom/transsion/camera/app/ui/mode/macro/MacroUI$UIHandler;-><init>(Lcom/transsion/camera/app/ui/mode/macro/MacroUI;Lcom/transsion/camera/app/ui/mode/macro/MacroUI;)V

    iput-object p2, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->mMainHandler:Landroid/os/Handler;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/camera/R$bool;->is_widecam_item_ui_support_in_widecam:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->mIsWideCamUISupport:Z

    .line 37
    iget-object p2, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$string;->macro_enable_tip:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    .line 39
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->mAutoHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 40
    invoke-direct {p0, p3}, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->updateHintByCamera(Ljava/lang/String;)V

    return-void
.end method

.method private doHideHint()V
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_9

    const/16 v1, 0x64

    .line 76
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 78
    :cond_9
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_12

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_12
    return-void
.end method

.method private doShowHint()V
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_9

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_9
    return-void
.end method

.method private updateHintByCamera(Ljava/lang/String;)V
    .registers 3

    .line 97
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->mIsWideCamUISupport:Z

    if-eqz v0, :cond_40

    .line 98
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 99
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$string;->macro_assistant_format_tip:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "25"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_56

    .line 102
    :cond_29
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$string;->super_macro_assistant_format_tip:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "10"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_56

    .line 105
    :cond_40
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/transsion/camera/R$string;->super_macro_assistant_format_tip:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "4"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 107
    :goto_56
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->mAlwaysHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public hideHint()V
    .registers 1

    .line 92
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->doHideHint()V

    return-void
.end method

.method public showHint(Ljava/lang/String;)V
    .registers 3

    .line 86
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->updateHintByCamera(Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->mMainHandler:Landroid/os/Handler;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/macro/MacroUI;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
