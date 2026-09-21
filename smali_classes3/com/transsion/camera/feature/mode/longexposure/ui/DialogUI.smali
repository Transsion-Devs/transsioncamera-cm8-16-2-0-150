.class public Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CONFIRM_FRAGMENT_TAG:Ljava/lang/String; = "long_exposure"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

.field private mOrientation:I

.field private final mRequestCancelHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/RequestCancelHelper;

.field private mScreenFormType:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmDialog(Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;)Lcom/transsion/camera/app/ui/widget/ConfirmDialog;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRequestCancelHelper(Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;)Lcom/transsion/camera/feature/mode/longexposure/helper/RequestCancelHelper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->mRequestCancelHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/RequestCancelHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;
    .registers 1

    .line 0
    sget-object v0, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 26
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->mScreenFormType:I

    .line 33
    iput v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->mOrientation:I

    .line 36
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->mContext:Landroid/content/Context;

    .line 37
    new-instance v0, Lcom/transsion/camera/feature/mode/longexposure/helper/RequestCancelHelper;

    invoke-direct {v0, p1}, Lcom/transsion/camera/feature/mode/longexposure/helper/RequestCancelHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->mRequestCancelHelper:Lcom/transsion/camera/feature/mode/longexposure/helper/RequestCancelHelper;

    return-void
.end method


# virtual methods
.method public hideDialog()V
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->isDialogShow()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->clearDialogList()V

    .line 114
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->dismiss()V

    :cond_14
    return-void
.end method

.method public onOrientationChanged(I)V
    .registers 3

    .line 102
    iget v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->mOrientation:I

    if-eq v0, p1, :cond_6

    .line 103
    iput p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->mOrientation:I

    .line 106
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 107
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    iget v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->mScreenFormType:I

    iget p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->mOrientation:I

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->updateDialogLayout(II)V

    :cond_19
    return-void
.end method

.method public onScreenFormChanged(I)V
    .registers 3

    .line 93
    iget v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->mScreenFormType:I

    if-eq v0, p1, :cond_6

    .line 94
    iput p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->mScreenFormType:I

    .line 96
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 97
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    iget v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->mScreenFormType:I

    iget p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->mOrientation:I

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->updateDialogLayout(II)V

    :cond_19
    return-void
.end method

.method public setScreenFormTypeAndOrientation(II)V
    .registers 3

    .line 88
    iput p2, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->mOrientation:I

    .line 89
    iput p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->mScreenFormType:I

    return-void
.end method

.method public show(Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener$ICancelCallBack;)V
    .registers 9

    .line 41
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->hideDialog()V

    .line 42
    sget v0, Lcom/transsion/camera/feature/longexposure/R$string;->long_exposure_stellar_track_dialog_title:I

    sget v1, Lcom/transsion/camera/feature/longexposure/R$string;->long_exposure_stellar_track_dialog_msg:I

    sget v2, Lcom/transsion/camera/feature/longexposure/R$string;->long_exposure_stellar_track_dialog_stop:I

    sget v3, Lcom/transsion/camera/feature/longexposure/R$string;->long_exposure_stellar_track_dialog_cancel:I

    sget v5, Lcom/transsion/camera/feature/longexposure/R$string;->long_exposure_stellar_track_dialog_check_box:I

    new-instance v6, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI$1;

    invoke-direct {v6, p0, p1}, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI$1;-><init>(Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;Lcom/transsion/camera/feature/mode/longexposure/capture/IStellarTrackListener$ICancelCallBack;)V

    const/4 v4, 0x1

    invoke-static/range {v0 .. v6}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->newInstance(IIIIZILcom/transsion/camera/app/ui/widget/ConfirmDialog$ICallBack;)Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    .line 77
    iget v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->mScreenFormType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    const/4 v2, 0x2

    if-eq v0, v2, :cond_24

    const/4 v2, 0x3

    if-ne v0, v2, :cond_26

    .line 80
    :cond_24
    iput v1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->mOrientation:I

    .line 82
    :cond_26
    invoke-virtual {p1, v1}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->setBeautyResetDialog(Z)V

    .line 83
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    iget v0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->mScreenFormType:I

    iget v1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->mOrientation:I

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->updateDialogLayout(II)V

    .line 84
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->mDialog:Lcom/transsion/camera/app/ui/widget/ConfirmDialog;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/longexposure/ui/DialogUI;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "long_exposure"

    invoke-virtual {p1, p0, v0}, Lcom/transsion/camera/app/ui/widget/ConfirmDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
